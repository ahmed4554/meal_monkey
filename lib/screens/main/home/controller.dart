import 'package:flutter/cupertino.dart';
import 'package:meal_monckey/gen/assets.gen.dart';

class HomePageController 
{
  List<MenuModel> menuModel = [
  MenuModel(image: Assets.images.products.menu.pone.path, label: 'Offers'),
  MenuModel(image: Assets.images.products.menu.pnine.path, label: 'Sri Lankan'),
  MenuModel(image: Assets.images.products.menu.pseven.path, label: 'Italian'),
  MenuModel(image: Assets.images.products.menu.psixteen.path, label: 'Indian'),
  MenuModel(image: Assets.images.products.menu.pthree.path, label: 'Egyptian'),
];
Widget buildMenuItem(MenuModel model) {
  return Column(
    children: [
      Image(
        image: AssetImage(model.image.toString()),
        width: 88,
        height: 88,
        fit: BoxFit.fill,
      ),
      const SizedBox(
        height: 7.0,
      ),
      Text(
        model.label.toString(),
        style: const TextStyle(
            fontSize: 14,
            color: Color(0xff4A4B4D),
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}

}

class MenuModel {
  String? image;
  String? label;
  MenuModel({this.image, this.label});
}
