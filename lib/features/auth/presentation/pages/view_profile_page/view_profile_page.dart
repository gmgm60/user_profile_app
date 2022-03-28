import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_cubit.dart';
import 'package:user_profile_app/features/auth/presentation/cubit/view_profile_cubit/view_profile_state.dart';
import 'package:user_profile_app/features/auth/presentation/routes/router.gr.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/view_network_file_image.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: [
            BlocBuilder<ViewProfileCubit, ViewProfileState>(
              builder: (context, state) {
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
                                onPressed: () async{
                                 // todo add logout
                                 await context.read<AuthCubit>().logout();
                                 AutoRouter.of(context).popUntilRoot();
                                 AutoRouter.of(context).navigate(const LoginRoute());

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
                            // todo
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
