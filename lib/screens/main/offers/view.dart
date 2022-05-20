import 'package:flutter/material.dart';
import 'package:meal_monckey/gen/assets.gen.dart';
import 'package:meal_monckey/screens/main/controller.dart';

class OffersPage extends StatelessWidget {
  OffersPage({Key? key}) : super(key: key);
  MainPageController model2 = MainPageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 55),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Latest Offers',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.shopping_cart)
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Find discounts, Offers special\nmeals and more!',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff7C7D7E),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 157,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Color(0xffFC6011),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: const Text(
                            'Check Offers',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 22,),
            model2.buildItem(pic: Assets.images.products.ptwo.path),
            model2.buildItem(pic: Assets.images.products.peight.path),
            model2.buildItem(pic: Assets.images.products.pfifteen.path),
          ],
        ),
      ),
    );
  }
}
