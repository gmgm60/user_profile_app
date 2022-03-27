import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_state.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/view_network_file_image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    context.read<ViewProfileCubit>().getProfile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: [
            BlocBuilder<ViewProfileCubit, ViewProfileState>(
              builder: (context, state) {
                Future<void> logout()async{
                  await context.read<ViewProfileCubit>().logout();
                  AutoRouter.of(context).navigate(const LoginRoute());
                }
                return state.maybeWhen(
                    orElse: () => Container(),
                    done: (profile) => Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  AutoRouter.of(context).navigate(EditProfileRoute(profile: profile));
                                },
                                icon: const Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {
                                  logout();
                                },
                                icon: const Icon(Icons.logout)),
                          ],
                        ));
              },
            )
          ],
          centerTitle: true,
          title: const Text("view Profile"),
        ),
        body: Center(
          child: BlocBuilder<ViewProfileCubit, ViewProfileState>(
            builder: (context, state) {
              print(state);
              return state.map(
                init: (_) {
                  return const CircularProgressIndicator();
                },
                loading: (_) => const CircularProgressIndicator(),
                done: (profileState) {
                  final Profile profile =profileState.profile;
                  return ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: CircleAvatar(
                                    radius: 70,
                                    backgroundColor: Colors.grey,
                                    foregroundImage: ViewNetworkFileImage(
                                      imgPath: profile.image,
                                      fit: BoxFit.fitWidth,
                                      width: 140,
                                      height: 140,
                                    ).image,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                    child: Text(
                                  profile.name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Email : ${profile.email}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Address : ${profile.address}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Phone : ${profile.phone}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Age : ${profile.age} years old",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
                error: (error){
                  return Column(
                    children: [
                      const Text("error login"),
                      ElevatedButton(
                          onPressed: () {
                            context.read<ViewProfileCubit>().logout();
                          },
                          child: const Text("Go to Login Page")),
                    ],
                  );
                },
                notLogin: (_) {
                  return Column(
                    children: [
                      const Text("not login"),
                      ElevatedButton(
                          onPressed: () {
                            context.read<ViewProfileCubit>().logout();
                          },
                          child: const Text("Go to Login Page")),
                    ],
                  );
                },
                localStorageError: (_) {
                  return Column(
                    children: [
                      const Text("no local data"),
                      ElevatedButton(
                          onPressed: () {
                            context.read<ViewProfileCubit>().logout();
                          },
                          child: const Text("Go to Login Page")),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
