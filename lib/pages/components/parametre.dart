import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_profile/pages/components/edit_profil/edit_profil.dart';

class Parametres extends StatelessWidget {
  const Parametres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.452,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 50,
          right: 50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfil(),
                        ),
                      );
                    },
                    child: const CustomList(
                      text: "Edit profile",
                      icon: Icon(FontAwesomeIcons.user),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomList(
                    text: "Edit settings",
                    icon: Icon(Icons.settings_outlined),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomList(
                    text: "Purchases",
                    icon: Icon(CupertinoIcons.tag),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomList(
                    text: "My cart",
                    icon: Icon(Icons.shopping_cart_outlined),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomList(
                    text: "Invite a friend",
                    icon: Icon(Icons.share_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 4,
                    right: MediaQuery.of(context).size.width / 4,
                    top: 8,
                    bottom: 8,
                  ),
                  side: const BorderSide(
                    color: Colors.orange,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Text("Logout "),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      "assets/images/logout.png",
                      fit: BoxFit.cover,
                      width: 15,
                      height: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomList extends StatelessWidget {
  const CustomList({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 226, 226, 226)
                    .withOpacity(0.4), // Couleur de l'ombre
                spreadRadius: -1, // Rayon de l'ombre
                blurRadius: 4, // Flou de l'ombre
                offset: const Offset(3, 5), // Position de l'ombre
              ),
            ],
            borderRadius:
                BorderRadius.circular(15), // Rayon des bords de la carte
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
              left: 13,
              right: 13,
            ),
            child: icon,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
