import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_profile_app/di/injectable.dart';
import 'package:user_profile_app/features/auth/domain/validates/validates.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/edit_profile_cubit/edit_profile_state.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/custom_form_field.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/view_network_file_image.dart';
import 'package:user_profile_app/generated/assets.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

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
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
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

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => getIt<EditProfileCubit>(),
      child: Builder(builder: (context) {
        final EditProfileCubit editProfileCubit =
            context.read<EditProfileCubit>();
        return Scaffold(
          appBar: AppBar(
            title: const Text("Edit Profile"),
            centerTitle: true,
          ),
          body: Form(
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
                        context.read<EditProfileCubit>().editImage(path);
                      }
                    },
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        BlocBuilder<EditProfileCubit, EditProfileState>(
                          builder: (context, state) {
                            context.watch<EditProfileCubit>();
                            return CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  const AssetImage(Assets.assetsImg),
                              foregroundImage: ViewNetworkFileImage(
                                imgPath: editProfileCubit.profile.image,
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
                  textLabel: "Name",
                  initValue: editProfileCubit.profile.name,
                  onChanged: editProfileCubit.editName,
                  textType: TextInputType.name,
                  validation: validateName,
                ),
                CustomFormField(
                  textLabel: "Email",
                  initValue: editProfileCubit.profile.email,
                  onChanged: editProfileCubit.editEmail,
                  textType: TextInputType.emailAddress,
                  validation: validateEmailAddress,
                ),
                CustomFormField(
                  textLabel: "Address",
                  initValue: editProfileCubit.profile.address,
                  onChanged: editProfileCubit.editAddress,
                  textType: TextInputType.streetAddress,
                  validation: validateAddress,
                ),
                CustomFormField(
                  textLabel: "Phone",
                  initValue: editProfileCubit.profile.phone,
                  onChanged: editProfileCubit.editPhone,
                  textType: TextInputType.phone,
                  validation: validatePhone,
                ),
                CustomFormField(
                  textLabel: "Age",
                  initValue: editProfileCubit.profile.age,
                  onChanged: editProfileCubit.editAge,
                  textType: TextInputType.number,
                  validation: validateAge,
                ),
                CustomElevatedButton(
                    onTap: ()async{
                      if(formKey.currentState!.validate()){
                       await editProfileCubit.updateProfile();
                      }
                    },
                    text: "Update Profile",)
              ],
            ),
          ),
        );
      }),
    );
  }
}
