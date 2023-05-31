import 'package:flutter/material.dart';

class EditBody extends StatefulWidget {
  const EditBody({super.key});

  @override
  State<EditBody> createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.452,
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
          left: 60,
          right: 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              buildTextField("Name", "Gotflo Dev", false),
              const SizedBox(
                height: 5,
              ),
              buildTextField("Email", "gotflo@gmail.com", false),
              const SizedBox(
                height: 5,
              ),
              buildTextField("Password", "***************", true),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 4.5,
                    right: MediaQuery.of(context).size.width / 4.5,
                    top: 8,
                    bottom: 8,
                  ),
                  side: const BorderSide(
                    color: Color(0xFFFF9800),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    bool isPasswordVisible = true;
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconTheme(
                  data: const IconThemeData(
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    icon: isPasswordVisible
                        ? const Icon(Icons.visibility_outlined)
                        // ignore: dead_code
                        : const Icon(Icons.visibility_off),
                    onPressed: () => setState(
                      () {
                        isPasswordVisible = !isPasswordVisible;
                      },
                    ),
                    // icon: const Icon(Icons.close),
                  ),
                )
              : null,
          contentPadding: const EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
