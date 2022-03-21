import 'package:flutter/material.dart';
import 'package:user_profile_app/features/auth/domain/entity/profile/profile.dart';
import 'package:user_profile_app/features/auth/presentation/pages/edit_profile_page/edit_profile_page.dart';
import 'package:user_profile_app/features/auth/presentation/widgets/view_network_file_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  final Profile profile = const Profile(
    email: "gmgm@g.gm",
    name: "Mohamed Gamal",
    image:
        "https://image.shutterstock.com/image-vector/male-avatar-profile-picture-vector-260nw-149083895.jpg",
    phone: "01281139642",
    address: "13st ",
    age: "66",
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: [IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EditProfilePage()));
          }, icon: const Icon(Icons.edit))],
          centerTitle: true,
          title: const Text("view Profile"),
        ),
        body: ListView(
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
                          //  backgroundImage:
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: ViewNetworkFileImage(
                              imgPath: profile.image,
                              fit: BoxFit.fitWidth,
                              width: 140,
                              height: 140,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                        profile.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Email : ${profile.email}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Address : ${profile.address}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Phone : ${profile.phone}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Age : ${profile.age} years old",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
