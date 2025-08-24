import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class SingupView extends StatefulWidget {
  const SingupView({super.key});

  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey there,",
                  style: TextStyle(color: Tcolor.gray, fontSize: 16),
                ),
                Text(
                  "Create an Acount",
                  style: TextStyle(
                    color: Tcolor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                const RoundTextField(
                  hintText: "First Name",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox(height: media.width * 0.04),
                const RoundTextField(
                  hintText: "Last Name",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox(height: media.width * 0.04),
                const RoundTextField(
                  hintText: "Email",
                  icon: "assets/img/email.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: media.width * 0.04),
                RoundTextField(
                  hintText: "Password",
                  icon: "assets/img/lock.png",
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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: Tcolor.gray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
