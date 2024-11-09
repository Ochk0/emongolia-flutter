// import 'package:flutter/widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-mongolia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x00216dff)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'E-mongolia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final blueColor = const Color(0xFF216dff);
  final greyColor = const Color(0xFF3d5e89);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: blueColor,
        shape: const StadiumBorder(),
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/icons/home.png', height: 25, width: 25, color: greyColor),
                      const Gap(5),
                      Text(
                        'Нүүр',
                        style: TextStyle(fontSize: 10, color: greyColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/icons/grid.png', height: 23, width: 23, color: greyColor),
                      const Gap(5),
                      Text(
                        'Үйлчилгээ',
                        style: TextStyle(fontSize: 10, color: greyColor),
                      ),
                    ],
                  ),
                  const SizedBox(),
                  Column(
                    children: [
                      Image.asset('assets/icons/message.png', height: 23, width: 23, color: greyColor),
                      const Gap(5),
                      Text(
                        'Чат',
                        style: TextStyle(fontSize: 10, color: greyColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/icons/user.png',
                        height: 23,
                        width: 23,
                        color: blueColor,
                      ),
                      const Gap(5),
                      Text(
                        'Профайл',
                        style: TextStyle(
                          fontSize: 10,
                          color: blueColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/images/1.svg',
              semanticsLabel: 'My SVG Image',
              height: 40,
              width: 10,
            ),
            const Spacer(),
            Image.asset(
              'assets/icons/bell.png',
              width: 25,
              height: 25,
              color: blueColor,
            ),
            const Gap(40),
            Image.asset(
              'assets/icons/menu.png',
              width: 25,
              height: 25,
              color: blueColor,
            ),
            const Gap(20),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Миний бичиг баримтууд',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: greyColor),
              ),
              const Gap(10),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 600,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Gap(10),
                            Container(
                              height: 3,
                              width: 50,
                              decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            const Gap(10),
                            Text(
                              'Иргэний үнэмлэх',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: greyColor),
                            ),
                            const Gap(10),
                            const FlipCard(
                              fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
                              direction: FlipDirection.HORIZONTAL, // default
                              side: CardSide.FRONT, // The side to initially display.
                              front: Image(
                                image: AssetImage('assets/images/frontgood.png'),
                              ),
                              back: Image(
                                image: AssetImage('assets/images/back.png'),
                              ),
                            ),
                            const Gap(60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: blueColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadowColor: blueColor,
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Дахин захиалах'),
                                ),
                                const Gap(10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.transparent,
                                    // border color
                                    side: BorderSide(color: blueColor, width: 2),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  child: const Row(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/images/image.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Gap(10),
                            // close button with хаах text only no other style
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Хаах', style: TextStyle(color: Color(0xFF3d5e89))),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Image(
                  image: AssetImage('assets/images/frontgood.png'),
                ),
              ),
              // centered 3 dots and one with different color
              const Gap(20),
              Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: greyColor),
                ),
              ),
              const Gap(50),
              Text(
                'Төрд байгаа миний мэдээлэл',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: greyColor),
              ),
              const Gap(10),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/1.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      '2024 оны УИХ-ын сонгууль',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/2.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      'Нийгмийн даатгалын мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              // Зээлийн мэдээлэл
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/3.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      'Эрүүл мэндийн даатгал төлөлтийн мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/4.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 15,
                      width: 5,
                    ),
                    const Gap(8),
                    Text(
                      'Иргэний бүртгэлийн мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/5.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      'Хаягийн өөрчлөлтийн мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/6.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      'Гэрлэлтийн мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/7.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      'Гадаад пасспортын мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
              const Gap(5),
              Container(
                height: 40,
                // full width
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFdee9f3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/svg/8.svg',
                      semanticsLabel: 'gishuud',
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      'Өрхийн гишүүдийн мэдээлэл',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: greyColor),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
