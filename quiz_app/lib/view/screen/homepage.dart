import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/controller/home_controller.dart';
import 'package:quiz_app/global/components/container_sizes.dart';
import 'package:quiz_app/global/styles/textstyle.dart';
import 'package:quiz_app/view/components/carousel_slider_widget.dart';

import '../../global/helpers.dart';

class Homepage extends StatelessWidget {
  final _controller = Get.put(HomeController());

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EFF2F9"),
      drawer: Drawer(

        child: Column(
          children: [
            _drawerProfile(),
            SizedBox(
              height: 20,
            ),
            _drawerItems(icon: Icons.people, title: 'PROFILE', onPressed: () {}),
            _drawerItems(icon: Icons.pages, title: 'FACEBOOK PAGE', onPressed: () {}),
            _drawerItems(icon: Icons.groups, title: 'FACEBOOK GROUP', onPressed: () {}),
            _drawerItems(icon: Icons.contact_phone_rounded, title: 'CONTACT', onPressed: () {}),
            _drawerItems(icon: Icons.store_rounded, title: 'ABOUT', onPressed: () {}),
            _drawerItems(icon: Icons.star, title: 'RATING', onPressed: () {}),
            _drawerItems(icon: Icons.share, title: 'SHARE', onPressed: () {}),
            SizedBox(
              height: 10,
            ),
            Divider(
             height: 2,
             color: Colors.grey,
             thickness: 2,
              indent: 20,
              endIndent: 60,
            ),
            SizedBox(
              height: 10,
            ),
            _drawerItems(icon: Icons.logout, title: 'SIGN OUT', onPressed: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
       // toolbarHeight: 50.h,
        backgroundColor: HexColor("#2E2E54"),
       actions: [
         Icon(Icons.search,size: 25,color: Colors.white,),
         SizedBox(
           width: 10,
         ),
         Padding(
           padding: const EdgeInsets.only(right: 10),
           child: Icon(Icons.notifications,size: 25,color: Colors.white,),
         )

       ],
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  child: carouselSliderWidget(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _gridMenu()
            ],
          ),
        )
      ),
    );
  }

  ListTile _drawerItems({required String title, required IconData icon, required VoidCallback onPressed}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 19.h,
      ),
      title: Text(
        title,
        style: CustomtextStyle.maintext2.copyWith(
          fontSize: 14.sp,
        ),
      ),
      onTap: () {
        onPressed();
      },
    );
  }

  Widget _drawerProfile() {
    return Container(
      height: 200.h,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            HexColor("#323361"),
            HexColor("#2E2E54"),

          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            ContainerClass.circleContainerImage(
              borderWidth: 4.0,
              borderRadius: 300.0,
              image: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
              borderColor:  HexColor("#545BAF"),
            ),
            const SizedBox(
          height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _profileText(text: 'NAME: Demo Name',),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _profileText({required String text}) {
    return Text(
      text,
      style: CustomtextStyle.maintext2.copyWith(
        fontSize: 18.sp,
        color: Colors.white
      ),
    );
  }

  Widget _gridMenu() {
    return GridView.builder(
      itemCount: _controller.gridItems.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isTablet() ? 4 : 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            _controller.gridItems[index].onPressed();
          },
          child: container(
            _controller.gridItems[index].name,
            _controller.gridItems[index].asset,
          ),
        );
      },
    );
  }
}

Widget container(String title, String icon) {
  return SizedBox(
    height: 210,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 30,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}
