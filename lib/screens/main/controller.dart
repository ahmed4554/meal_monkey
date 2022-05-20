import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meal_monckey/gen/assets.gen.dart';

class MainPageController {
  Widget buildItem({required String pic}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            pic,
          ),
          width: double.infinity,
          height: 193,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 7,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Text(
            'Minute by tuk tuk',
            style: TextStyle(
                fontSize: 16,
                color: Color(
                  0xff4A4B4D,
                ),
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            children: const [
              Icon(
                Icons.star_outlined,
                color: Color(0xffFC6011),
                size: 18,
              ),
              Text(
                '4.9',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(
                    0xff4A4B4D,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '(124 ratings) Café     Western Food',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(
                    0xffB6B7B7,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }

  Widget buildItem2({required String pic}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            pic,
          ),
          width: 228,
          height: 135,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 7,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Text(
            'Minute by tuk tuk',
            style: TextStyle(
                fontSize: 16,
                color: Color(
                  0xff4A4B4D,
                ),
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            children: const [
              Text(
                '(124 ratings) Café     Western Food',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(
                    0xffB6B7B7,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.star_outlined,
                color: Color(0xffFC6011),
                size: 18,
              ),
              Text(
                '4.9',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(
                    0xffFC6011,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }

  Widget buildItem3({required String pic, required String label}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(pic),
            width: 75,
            height: 75,
          ),
          const SizedBox(
            width: 22.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff4A4B4D),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 3),
              const Text(
                'Café     Western Food',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xffB6B7B7),
                ),
              ),
              const SizedBox(height: 3),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFC6011),
                  ),
                  Text(
                    'Café     Western Food',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xffB6B7B7),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
            ],
          ),
        ],
      ),
    );
  }
}

class NabBarModel {
  IconData? icon;
  String? label;
  NabBarModel({this.icon, this.label});
}
