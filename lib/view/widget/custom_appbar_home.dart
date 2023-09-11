import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.titleAppbar, required this.onPressedIcon, required this.onChangedSearch}) : super(key: key);
  final String titleAppbar;
  final void Function()? onPressedIcon;
  final void Function(String)? onChangedSearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: AppColor.transparent,
      padding:const EdgeInsets.symmetric( horizontal: 10),
      margin: const EdgeInsets.only(top: 10,),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              onChanged: onChangedSearch,

              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,size: 20,),
                hintText: titleAppbar,
                hintStyle: const TextStyle(fontSize: 18,color: AppColor.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25)),
                filled: true,
                fillColor: Colors.grey[200],

              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 50,
            // padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25)),
            child: IconButton(
                onPressed:onPressedIcon,
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 20,
                  color: Colors.grey[600],
                )),
          ),
        ],
      ),
    );
  }
}
