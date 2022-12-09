import 'package:flutter/material.dart';
import 'package:untitled/helpers/appcolors.dart';
import 'package:untitled/helpers/iconhelper.dart';
import 'package:untitled/helpers/utils.dart';
import 'package:untitled/widgets/userprofileheader.dart';
import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;
  bool showProfilePic;

  MainAppBar(
      {this.themeColor = AppColors.MAIN_COLOR, this.showProfilePic = true});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: IconFont(
          iconName: IconFontHelper.LOGO, color: widget.themeColor, size: 40),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themeColor),
      actions: [
        Opacity(
          opacity: widget.showProfilePic ? 1 : 0,
          child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(10),
              child: ClipOval(child: Image.asset('assets/images/me.jpg'))),
        )
      ],
    );
  }
}
