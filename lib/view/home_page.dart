import 'package:empowering_humanity/constants/common_widgets/background_main.dart';
import 'package:empowering_humanity/constants/common_widgets/banner.dart';
import 'package:empowering_humanity/constants/common_widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceInfo = MediaQuery.of(context);
    final screenHeight = deviceInfo.size.height;
    final screenWidth = deviceInfo.size.width;

    return MediaQuery(
      data: MediaQueryData(),
      child: Scaffold(
        body: BgMain(
          widget: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                BannerBody(),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                BaseContainer(
                  widget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset("assets/transp_logo.png"),
                          maxRadius: screenHeight * 0.18,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "An Empowering Humanity NGO Initiative",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  height: screenHeight * 0.50,
                  width: screenWidth * 0.8,
                  curveRadius: 40,
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => GoRouter.of(context).push('/loginas'),
                      child: BaseContainer(
                          color: const Color.fromRGBO(203, 183, 7, 0.76),
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.30,
                          widget: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Log In",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: screenWidth * 0.15,
                    ),
                    InkWell(
                      onTap: () => GoRouter.of(context).push('/signinas'),
                      child: BaseContainer(
                          color: const Color.fromRGBO(203, 183, 7, 0.76),
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.30,
                          widget: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
