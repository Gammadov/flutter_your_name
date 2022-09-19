import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les103_stream_p2/text_styles.dart';

class TestCharity extends StatefulWidget {
  const TestCharity({Key? key}) : super(key: key);

  @override
  State<TestCharity> createState() => _TestCharityState();
}

class _TestCharityState extends State<TestCharity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                isScrollControlled: true,
                backgroundColor: Colors.blueGrey[100],
                context: context,
                builder: (context) => const Charity());
          },
        ),
      ),
    );
  }
}

class Charity extends StatelessWidget {
  const Charity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SizedBox(
        height: screenHeight * 0.96,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Container(
                color: Colors.green[100],
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      // flex: 114 + 186,
                      child: Container(
                        color: Colors.white,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Text(
                                  'Ваша помощь / Подписка',
                                  style: ToobaTextStyle.title2(Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 24),
                                const SizedBox(height: 11),
                                Text(
                                  'Сумма',
                                  style: ToobaTextStyle.title2(Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'информация о подписке',
                                  style: ToobaTextStyle.subhead2(Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 11),



                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   flex: 114,
                    //   child: Container(
                    //     color: Colors.white,
                    //     child: FittedBox(
                    //       fit: BoxFit.scaleDown,
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(bottom: 24.0),
                    //         child: Text(
                    //           'Ваша помощь / Подписка',
                    //           style: ToobaTextStyle.title4(Colors.black),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Expanded(
                    //   flex: 186,
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(bottom: 24.0),
                    //       child: Text(
                    //         'Ваша помощь / Подписка',
                    //         style: ToobaTextStyle.title4(Colors.black),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                        // child: FittedBox(
                        //   child: Column(
                        //     children: [
                        //       Text('AAAAA', style: const TextStyle(fontSize: 40),),
                        //       const SizedBox(height: 10),
                        //       Text('AAAAA', style: const TextStyle(fontSize: 20),),
                        //     ],
                        //   ),
                        // ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(color: Colors.grey),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
