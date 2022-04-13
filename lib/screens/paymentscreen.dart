import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:payment_app/components/components.dart';
import 'package:payment_app/screens/home.dart';
import 'package:payment_app/widgets/appbuttton.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'asset/images/paymentbackground.png',
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: height * 0.14,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    'asset/images/success.png',
                  ),
                ),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Success !\n',
                style: const TextStyle(
                  color: AppColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                children: [
                  TextSpan(
                    text: 'Payment is completed for 2 bills',
                    style: TextStyle(
                      color: AppColor.idColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, right: 12, top: 25),
              width: 350,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                removeBottom: true,
                context: context,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (buildcontext, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: height * 0.01,
                                left: width * 0.05,
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Icon(
                                Icons.done,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: height * 0.01,
                                left: width * 0.05,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Ikeja Electric\n',
                                  style: const TextStyle(
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    height: 1.8,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'ID: 1198976738373',
                                      style: TextStyle(
                                        color: AppColor.idColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: height * 0.05, left: width * 0.05),
                              child: const Text(
                                '₦50,000',
                                style: TextStyle(
                                  color: AppColor.mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.05),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Total Amount\n',
                  style: TextStyle(
                    color: AppColor.idColor,
                    fontSize: 20,
                  ),
                  children: const [
                    TextSpan(
                      text: '₦ 50,00000',
                      style: TextStyle(
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.1, left: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppSelectorButton(
                    icon: Icons.share_sharp,
                    onTap: () {},
                    buttontext: 'share',
                    iconbackgroundcolor: Colors.black,
                    buttontextcolor: Colors.black,
                    buttontextsize: 20,
                  ),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  AppSelectorButton(
                    icon: Icons.print,
                    onTap: () {},
                    buttontext: 'print',
                    iconbackgroundcolor: Colors.black,
                    buttontextcolor: Colors.black,
                    buttontextsize: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            AppButton(
              onTap: () {
                Get.back();
              },
              buttontext: 'Done',
              backgroundcolor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
