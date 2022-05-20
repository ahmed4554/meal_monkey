import 'package:flutter/material.dart';
import 'package:meal_monckey/components/components.dart';
import 'package:meal_monckey/gen/assets.gen.dart';
import 'package:meal_monckey/screens/main/controller.dart';
import 'package:meal_monckey/screens/main/home/controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  Components c = Components();
  HomePageController model = HomePageController();
  MainPageController model2 = MainPageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 55.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Good morning Akila!',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(Assets.icons.cart.path),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21.0,
                  ),
                  const Text(
                    'Delivering to',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xffB6B7B7),
                    ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Current Location',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff7C7D7E),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        // size: 2.0,
                        color: Color(0xffFC6011),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34.0,
                  ),
                  c.input(
                    label: 'Search food',
                    icon: const Icon(Icons.search),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 120.0,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return model.buildMenuItem(model.menuModel[index]);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 18.0,
                          );
                        },
                        itemCount: model.menuModel.length),
                  ),
                  const SizedBox(
                    height: 58.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Popular Restaurents',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(
                            0xff4A4B4D,
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(
                              0xffFC6011,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          model2.buildItem(pic: Assets.images.products.ptwo.path),
          model2.buildItem(pic: Assets.images.products.peight.path),
          model2.buildItem(pic: Assets.images.products.pfifteen.path),
          const SizedBox(
            height: 43,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Recent Items',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color(
                          0xff4A4B4D,
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(
                            0xffFC6011,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      model2.buildItem2(pic: Assets.images.products.pten.path),
                      const SizedBox(
                        width: 19,
                      ),
                      model2.buildItem2(
                          pic: Assets.images.products.peleven.path),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              children: [
                const Text(
                  'Recent Items',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(
                      0xff4A4B4D,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(
                        0xffFC6011,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          model2.buildItem3(
              pic: Assets.images.products.menu.pthree.path,
              label: 'Mulberry Pizza by Josh'),
          const SizedBox(height: 15),
          model2.buildItem3(
              pic: Assets.images.products.pfour.path, label: 'Barita'),
          const SizedBox(height: 15),
          model2.buildItem3(
              pic: Assets.images.products.ptwelve.path,
              label: 'Pizza Rush Hour'),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
