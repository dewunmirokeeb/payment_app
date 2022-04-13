import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:payment_app/components/components.dart';
import 'package:payment_app/screens/paymentscreen.dart';
import 'package:payment_app/widgets/appbuttton.dart';
import 'package:payment_app/widgets/sizetext.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            SizedBox(
              height: 270,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'asset/images/background.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    right: -10,
                    bottom: 10,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'asset/images/curve.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 42,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet<dynamic>(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext bc) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height - 215,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width: width,
                                        color: const Color(0xFFeef1f4)
                                            .withOpacity(0.7),
                                        height: height - 250,
                                      ),
                                    ),
                                    Positioned(
                                      right: 42,
                                      child: Container(
                                        width: 40,
                                        height: 170,
                                        decoration: BoxDecoration(
                                          color: AppColor.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            AppSelectorButton(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icons.cancel_outlined,
                                            ),
                                            AppSelectorButton(
                                              icon: Icons.add_circle,
                                              onTap: () {},
                                              buttontext: 'Add bill',
                                            ),
                                            AppSelectorButton(
                                              icon: Icons.history,
                                              onTap: () {},
                                              buttontext: 'History',
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'asset/images/lines.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 70,
                    left: 40,
                    child: Text(
                      'Pay Bills',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 290,
              left: 0,
              right: 20,
              bottom: 0,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 130,
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFd8dbe0),
                              offset: Offset(1, 1),
                              blurRadius: 30,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.red,
                                        ),
                                      ),
                                      child: Image.asset(
                                        'asset/images/ikejaelectric.png',
                                      ),
                                    ),
                                    RichText(
                                      text: const TextSpan(
                                        text: 'Ikeja Electric\n',
                                        style: TextStyle(
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'ID: 1198976738373',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 104, 102, 102),
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: const SizedText(
                                    text: 'Auto pay on 24th May 22',
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: width / 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  decoration: BoxDecoration(
                                    color: AppColor.selectBackground,
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                  ),
                                  child: const Text(
                                    'Select',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 83,
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                        ),
                                      ),
                                      height: 40,
                                      width: 5,
                                    ),
                                  ],
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: '₦50,000.00\n',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Due in 3 days',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.selectColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 25,
              child: AppButton(
                onTap: () {
                  Get.to(() => const PaymentScreen());
                },
                backgroundcolor: AppColor.mainColor,
                textcolor: Colors.white,
                buttontext: 'Pay all bills',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppSelectorButton extends StatelessWidget {
  const AppSelectorButton({
    required this.icon,
    required this.onTap,
    this.iconbackgroundcolor,
    this.buttontext,
    this.buttontextsize,
    this.buttontextcolor,
    Key? key,
  }) : super(key: key);
  final Function()? onTap;
  final String? buttontext;
  final IconData icon;
  final Color? iconbackgroundcolor;
  final Color? buttontextcolor;
  final double? buttontextsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconbackgroundcolor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          buttontext == null
              ? Container()
              : Text(
                  buttontext!,
                  style: TextStyle(
                    color: buttontextcolor ?? Colors.white,
                    fontSize: buttontextsize ?? 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ],
      ),
    );
  }
}
