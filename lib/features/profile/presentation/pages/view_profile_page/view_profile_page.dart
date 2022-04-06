import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_profile_app/core/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/profile/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_state.dart';
import 'package:user_profile_app/features/profile/presentation/cubit/view_profile_cubit/view_profile_cubit.dart';
import 'package:user_profile_app/features/profile/presentation/cubit/view_profile_cubit/view_profile_state.dart';
import 'package:user_profile_app/core/presentation/widgets/custom_text.dart';
import 'package:user_profile_app/core/presentation/widgets/view_network_file_image.dart';
import 'package:user_profile_app/generated/assets.dart';

class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({Key? key}) : super(key: key);

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  @override
  void initState() {
    context.read<ViewProfileCubit>().getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[100],
      appBar: AppBar(
        leading: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const FittedBox(
                  fit: BoxFit.scaleDown, child: CircularProgressIndicator()),
              orElse: () => IconButton(
                  onPressed: () async {
                    await context.read<AuthCubit>().logout();
                    AutoRouter.of(context).replace(const SplashScreen());
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowRightFromBracket,
                  )),
            );
          },
        ),
        actions: [
          BlocBuilder<ViewProfileCubit, ViewProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  done: (profile) => Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              AutoRouter.of(context)
                                  .navigate(EditProfileRoute(profile: profile));
                            },
                            icon: const FaIcon(FontAwesomeIcons.userPen),
                          ),
                        ],
                      ));
            },
          )
        ],
        centerTitle: true,
        title: Text("View Profile",style: Theme.of(context).textTheme.headline6,),
      ),
      body: Center(
        child: BlocBuilder<ViewProfileCubit, ViewProfileState>(
          builder: (context, state) {
            return state.map(
              init: (_) {
                return const CircularProgressIndicator();
              },
              loading: (_) => const CircularProgressIndicator(),
              done: (profileState) {
                final Profile profile = profileState.profile;
                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              const SizedBox(height: 280),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      Assets.assetsBackground,
                                    )),
                              ),
                              Positioned(
                                top: 200 - 70,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const CircleAvatar(
                                      radius: 74,
                                      backgroundColor: Colors.grey,
                                    ),
                                    CircleAvatar(
                                      radius: 70,
                                      backgroundColor: Colors.grey,
                                      foregroundImage: ViewNetworkFileImage(
                                        imgPath: profile.image,
                                        fit: BoxFit.fitWidth,
                                        width: 140,
                                        height: 140,
                                      ).image,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Text(profile.name,
                                style: Theme.of(context).textTheme.headline5),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                CustomText(
                                    icon: Icons.email,
                                    title: "Email",
                                    value: profile.email,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!),
                                CustomText(
                                    icon: Icons.location_on_outlined,
                                    title: "Address",
                                    value: profile.address,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!),
                                CustomText(
                                    icon: Icons.phone,
                                    title: "Phone",
                                    value: profile.phone,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!),
                                CustomText(
                                    icon: Icons.calendar_today,
                                    title: "Age",
                                    value: profile.age,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
              error: (error) {
                return Column(
                  children: [
                    const Text("error login"),
                    ElevatedButton(
                        onPressed: () async {
                          await context.read<AuthCubit>().logout();
                          AutoRouter.of(context).popUntilRoot();
                          AutoRouter.of(context).navigate(const SplashScreen());
                        },
                        child: const Text("Go to Login Page")),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
