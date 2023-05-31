import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_profile/pages/components/parametre.dart';
import 'package:user_profile/pages/components/profil_bannier.dart';

class UserProfil extends StatelessWidget {
  const UserProfil({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.orange,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        centerTitle: true,
        leading: const Icon(CupertinoIcons.back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ProfilBannier(),
          Parametres(),
        ],
      ),
    );
  }
}
