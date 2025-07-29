import 'package:flutter/material.dart';
import 'package:ridetohealthdriver/core/extensions/text_extensions.dart';

class VerifyIdentityScreen extends StatelessWidget {
  const VerifyIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(color: Colors.white),
                Text(
                  'Verify Your Identity',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 50),
              ],
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white70, width: 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                    width: 140,

                    child: Image.asset(
                      'assets/images/governmentId.png',
                      height: 90,
                    ),
                  ),
                  "Government ID".text24White(),
                  "Take picture a drivers licence, national identity cards or passport photo"
                      .text14White(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 32.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Take a image',
                          style: TextStyle(
                            color: Color(0xff2563EB),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
