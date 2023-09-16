import 'package:ecommerce/controller/settings_controller/settings_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:ecommerce/view/widget/home/custom_title_body_home.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsControllerImp controller = Get.put(SettingsControllerImp());
    return Container(
      color: AppColor.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: Get.width / 3,
                color: AppColor.primaryColor,
              ),
              Positioned(
                top: 10,
                child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[200],
                      backgroundImage: const AssetImage(AppImageAsset.avatar),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: MainBody(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
                children: [
                  Card(
                    // elevation: 0,
                    margin: EdgeInsets.symmetric(vertical: 40),
                    child: Column(children: [
                      ListTile(
                          onTap: () {},
                          title: Text("Disable Notifications"),
                          trailing: Switch(
                            onChanged: (val) {
                              print(val);
                            },
                            value: true,

                          )),
                      Divider(),
                      ListTile(
                          onTap: () {},
                          title: Text("Address"),
                          trailing: Icon(Icons.location_on_outlined)),
                      Divider(),
                      ListTile(
                          onTap: () {},
                          title: Text("About us"),
                          trailing: Icon(Icons.live_help_outlined)),
                      Divider(),
                      ListTile(
                          onTap: () {},
                          title: Text("Contact us"),
                          trailing: Icon(Icons.contact_phone_outlined)),
                      Divider(),
                      ListTile(
                          onTap: () {
                            controller.logout();
                          },
                          title: Text("Logout"),
                          trailing: Icon(Icons.exit_to_app)),
                    ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
