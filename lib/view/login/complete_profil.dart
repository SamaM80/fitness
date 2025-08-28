import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class CompleteProfilView extends StatefulWidget {
  const CompleteProfilView({super.key});

  @override
  State<CompleteProfilView> createState() => _CompleteProfilViewState();
}

class _CompleteProfilViewState extends State<CompleteProfilView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/img/complete_profile.png",
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),

                Text(
                  "Let's complete your profile",
                  style: TextStyle(
                    color: Tcolor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "It will help us to know more about you!",
                  style: TextStyle(color: Tcolor.gray, fontSize: 12),
                ),
                SizedBox(height: media.width * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      RoundTextField(
                        hintText: "Password",
                        icon: "assets/img/date.png",
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        rightIcon: TextButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "assets/img/show_password.png",
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                              color: Tcolor.gray,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
