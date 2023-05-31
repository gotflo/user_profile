import 'package:flutter/material.dart';

class ProfilBannier extends StatelessWidget {
  const ProfilBannier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/Florent2022.jpg",
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.orange,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    "assets/images/pencil.png",
                    fit: BoxFit.cover,
                    width: 10,
                    height: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Goflo Dev",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text("gotflo@gmail.com"),
      ],
    );
  }
}
