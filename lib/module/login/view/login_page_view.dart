import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  Widget build(context, LoginPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 44,
                      ),
                      child: Text(
                        'Welcome to\n XYZ Catering',
                        style: greenEmerlandTextStyle.copyWith(
                          fontSize: 30,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Image.asset(
                        'assets/image/logo.png',
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Biggest collection of 300+ layouts\nfor iOS prototyping.',
                  style: greenSageColorTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Card(
                  color: greenFadedolor,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        QTextField(
                          label: "Email",
                          suffixIcon: Icons.email,
                          onChanged: (value) {
                            controller.email = value;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        QTextField(
                          label: "Password",
                          obscure: true,
                          validator: Validator.required,
                          suffixIcon: Icons.password,
                          onChanged: (value) {
                            controller.password = value;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        QDropdownField(
                          label: "Role",
                          validator: Validator.required,
                          items: const [
                            {
                              "label": "Buyer",
                              "value": "Buyer",
                            },
                            {
                              "label": "Seller",
                              "value": "Seller",
                            }
                          ],
                          onChanged: (value, label) {
                            controller.role = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomeButton(
                  title: 'Login',
                  width: MediaQuery.of(context).size.width,
                  onPressed: () => controller.doEmailLogin(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                // CustomeButton(
                //   title: 'Google Login',
                //   width: MediaQuery.of(context).size.width,
                //   onPressed: () => controller.doGoogleLogin(),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Forgot password?',
                    style: greenSageColorTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomeButton(
                  title: 'Register',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginPageView> createState() => LoginPageController();
}
