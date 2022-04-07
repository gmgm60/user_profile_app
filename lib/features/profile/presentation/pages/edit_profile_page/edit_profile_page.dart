import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_profile_app/app_localizations.dart';
import 'package:user_profile_app/core/presentation/routes/router.gr.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
import 'package:user_profile_app/core/domain/validates/validates.dart';
import 'package:user_profile_app/features/profile/presentation/cubit/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:user_profile_app/features/profile/presentation/cubit/edit_profile_cubit/edit_profile_state.dart';
import 'package:user_profile_app/features/profile/presentation/cubit/view_profile_cubit/view_profile_cubit.dart';
import 'package:user_profile_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/core/presentation/widgets/custom_form_field.dart';
import 'package:user_profile_app/core/presentation/widgets/view_network_file_image.dart';
import 'package:user_profile_app/generated/assets.dart';

class EditProfilePage extends StatelessWidget {
  final Profile profile;

  EditProfilePage({required this.profile, Key? key}) : super(key: key);

  Future<String> cropImage(XFile image) async {
    String path = image.path;
    final cropImage = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: const AndroidUiSettings(
            toolbarTitle: 'Crop your image',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: const IOSUiSettings(
          minimumAspectRatio: 1.0,
        ));
    if (cropImage != null) {
      path = cropImage.path;
    }
    print(path);
    return path;
  }

  Future<String?> getImage() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      print(image.path);
      final String path = (await cropImage(image));
      return path;
    } else {
      print('no photo');
    }
    return null;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditProfileCubit>()..profile = profile,
      child: Builder(builder: (context) {
        final EditProfileCubit editProfileCubit =
            context.read<EditProfileCubit>();
        return Scaffold(
          appBar: AppBar(
            // leading: IconButton(onPressed: (){
            //   AutoRouter.of(context).pop();
            // },icon: const Icon(Icons.arrow_back,)),
            title:  Text(context.translate.editProfile,style: Theme.of(context).textTheme.headline5,),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                BlocBuilder<EditProfileCubit, EditProfileState>(
                    builder: (context, state) {
                  return state.maybeMap(loading: (_) {
                    return const Center(
                        child: CircularProgressIndicator());
                  }, done: (doneState) {
                    context
                        .read<ViewProfileCubit>()
                        .updateProfile(doneState.profile);
                    AutoRouter.of(context)
                        .navigate(const ViewProfileRoute());
                    return Container();
                  }, orElse: () {
                    return Container();
                  });
                }),
                Form(
                  key: formKey,
                  child: ListView(
                    children: [
                      const SizedBox(height: 20),
                      // profile image
                      Center(
                        child: GestureDetector(
                          onTap: () async {
                            final path = await getImage();
                            if (path != null) {
                              context
                                  .read<EditProfileCubit>()
                                  .editImage(path);
                            }
                          },
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              BlocBuilder<EditProfileCubit,
                                  EditProfileState>(
                                builder: (context, state) {
                                  context.watch<EditProfileCubit>();
                                  return CircleAvatar(
                                    radius: 50,
                                    backgroundImage: const AssetImage(
                                        Assets.assetsUserImage),
                                    foregroundImage: ViewNetworkFileImage(
                                      imgPath:
                                          editProfileCubit.profile.image,
                                    ).image,
                                  );
                                },
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.blue[800],
                                foregroundColor: Colors.white,
                                child: const Icon(
                                  Icons.camera_alt,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomFormField(
                        textLabel: context.translate.name,
                        initValue: editProfileCubit.profile.name,
                        onChanged: editProfileCubit.editName,
                        textType: TextInputType.name,
                        validation: (str) => validateName(str,context),
                      ),
                      CustomFormField(
                        textLabel: context.translate.email,
                        initValue: editProfileCubit.profile.email,
                        onChanged: editProfileCubit.editEmail,
                        textType: TextInputType.emailAddress,
                        validation: (str) => validateEmailAddress(str,context),
                      ),
                      CustomFormField(
                        textLabel: context.translate.address,
                        initValue: editProfileCubit.profile.address,
                        onChanged: editProfileCubit.editAddress,
                        textType: TextInputType.streetAddress,
                        validation: (str) => validateAddress(str,context),
                      ),
                      CustomFormField(
                        textLabel: context.translate.phone,
                        initValue: editProfileCubit.profile.phone,
                        onChanged: editProfileCubit.editPhone,
                        textType: TextInputType.phone,
                        validation: (str) => validatePhone(str,context),
                      ),
                      CustomFormField(
                        textLabel: context.translate.age,
                        initValue: editProfileCubit.profile.age,
                        onChanged: editProfileCubit.editAge,
                        textType: TextInputType.number,
                        validation: (str) => validateAge(str,context),
                      ),
                      CustomElevatedButton(
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            await editProfileCubit.updateProfile();
                          }
                        },
                        text: context.translate.updateProfile,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
