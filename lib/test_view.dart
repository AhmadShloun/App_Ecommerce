import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dd extends StatelessWidget {
  const dd({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: AppColor.white,
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: Get.width / 3,
                color: AppColor.primaryColor,
              ),
              Positioned(
                  top: Get.width / 3.9,
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage(AppImageAsset.avatar),
                      ))),
            ],
          ),
          const SizedBox(height: 100),
          Card(
            child: Column(children: [
              ListTile(title: Text("asdasdasd"), tileColor: Colors.black),
            ]),
          ),Card(
            child: Column(children: [
              ListTile(title: Text("asdasdasd"), tileColor: Colors.black),
            ]),
          ),Card(
            child: Column(children: [
              ListTile(title: Text("asdasdasd"), tileColor: Colors.black),
            ]),
          ),
        ],
      ),
    );
  }
}
