import 'dart:io';

import 'package:calculator/Until/app_color.dart';
import 'package:calculator/Until/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Widget/CalculatorButton.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Padding(
        padding: REdgeInsets.all(18.w),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(" $resText", style: AppStyle.medium48whiteColor),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Column(
                              spacing: 22.h,
                              children: [
                                Row(
                                  spacing: 20.w,
                                  children: [
                                    CalculatorButton(
                                      onPressed: () {
                                        onClearClick();
                                      },
                                      backgroundColor: AppColor.lightGrayColor,
                                      text: "Ac",
                                      style: AppStyle.regular24whiteColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onBackSpace();
                                      },
                                      backgroundColor: AppColor.lightGrayColor,
                                      text: "⌫",
                                      style: AppStyle.regular24whiteColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onOperatorCliCK(cliCKOperator: "/");
                                      },
                                      backgroundColor: AppColor.darkBlueColor,
                                      text: "/",
                                      style: AppStyle.regular24whiteColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 20.w,
                                  children: [
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "7");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "7",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "8");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "8",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "9");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "9",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 20.w,
                                  children: [
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "4");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "4",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "5");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "5",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "6");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "6",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 20.w,
                                  children: [
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "1");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "1",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "2");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "2",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: "3");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "3",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 20.w,
                                  children: [
                                    CalculatorButton(
                                      width: 144.w,
                                      height: 60.h,
                                      onPressed: () {
                                        onNumberPressed(text: "0");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: "0",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                    CalculatorButton(
                                      onPressed: () {
                                        onNumberPressed(text: ".");
                                      },
                                      backgroundColor: AppColor.grayColor,
                                      text: ".",
                                      style: AppStyle.medium32darkBlueColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              spacing: 22.h,
                              children: [
                                CalculatorButton(
                                  onPressed: () {
                                    onOperatorCliCK(cliCKOperator: "*");
                                  },
                                  backgroundColor: AppColor.darkBlueColor,
                                  text: "*",
                                  style: AppStyle.regular24whiteColor,
                                ),
                                CalculatorButton(
                                  onPressed: () {
                                    onOperatorCliCK(cliCKOperator: "-");
                                  },
                                  backgroundColor: AppColor.darkBlueColor,
                                  text: "-",
                                  style: AppStyle.regular24whiteColor,
                                ),
                                CalculatorButton(
                                  borderRadius: 12.r,
                                  width: 62.w,
                                  height: 104.h,
                                  onPressed: () {
                                    onOperatorCliCK(cliCKOperator: "+");
                                  },
                                  backgroundColor: AppColor.darkBlueColor,
                                  text: "+",
                                  style: AppStyle.regular24whiteColor,
                                ),
                                CalculatorButton(
                                  borderRadius: 12.r,
                                  width: 62.w,
                                  height: 104.h,
                                  onPressed: () {
                                    onEqualPressed();
                                  },
                                  backgroundColor: AppColor.darkBlueColor,
                                  text: "=",
                                  style: AppStyle.regular24whiteColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String lhs = "";
  String operation = "";
  String rhs = "";

  void onNumberPressed({required String text}) {
    if (text == "." && resText.contains(".")) {
      return;
    }
    resText += text;
    setState(() {});
  }

  void onOperatorCliCK({required String cliCKOperator}) {
    if (operation.isEmpty) {
      lhs = resText;
      operation = cliCKOperator;
      resText = "";
    } else {
      rhs = resText;
      calculate(lhs, operation, rhs);
      lhs = resText;
      operation = cliCKOperator;
      rhs = "";
      resText = "";

      setState(() {});
    }
  }

  void calculate(String lhs, String operation, String rhs) {
    double number1 = double.parse(lhs);
    double number2 = double.parse(rhs);
    switch (operation) {
      case "+":
        resText = (number1 + number2).toString();
        break;
      case "-":
        resText = (number1 - number2).toString();
        break;
      case "*":
        resText = (number1 * number2).toString();
        break;
      case "/":
        resText = (number1 / number2).toString();
        break;
    }
    setState(() {});
  }

  void onEqualPressed() {
    if (operation.isEmpty) return;
    rhs = resText;
    calculate(lhs, operation, rhs);
    lhs = "";
    rhs = "";
    operation = "";
  }

  void onClearClick() {
    resText = "";
    lhs = "";
    operation = "";
    rhs = "";

    setState(() {});
  }

  void onBackSpace() {
    if (resText.isEmpty) return;

    resText = resText.substring(0, resText.length - 1);

    setState(() {});
  }
}
