import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF5E5CE5),
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF5E5CE5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF5E5CE5),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100.0),
                      bottomLeft: Radius.circular(100.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
