import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/global/styles/app_colors.dart';


class TextboxWidget extends StatefulWidget {
  const TextboxWidget({
    Key? key,
    required this.title,
    required this.controller,
    this.keyboardType = TextInputType.name,
    this.isPassword = false,
    this.hintText,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? hintText;

  @override
  State<TextboxWidget> createState() => _TextboxWidgetState();
}

class _TextboxWidgetState extends State<TextboxWidget> {
  bool _passwordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              controller: widget.controller,
              obscureText: !_passwordVisible1,
              keyboardType: widget.keyboardType,
              cursorHeight: 20,
              style: const TextStyle(fontSize: 20),
              onChanged: (value) {
                //   log(widget.controller.text);
              },
              decoration: InputDecoration(
                alignLabelWithHint: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 15.sp,
                ),
                suffixIcon: widget.isPassword
                    ? IconButton(
                        icon: Icon(
                          _passwordVisible1 ? Icons.visibility : Icons.visibility_off,
                          color: AppColors.league.withOpacity(.5),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible1 = !_passwordVisible1;
                          });
                        },
                      )
                    : const SizedBox(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return widget.hintText;
                }
                return null;
              },
            ),
          ),
        )
      ],
    );
  }
}


class TextboxWidget1 extends StatefulWidget {
  const TextboxWidget1({
    Key? key,
    required this.title,
    required this.controller,
    this.keyboardType = TextInputType.name,
    this.hintText,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? hintText;

  @override
  State<TextboxWidget1> createState() => _TextboxWidget1State();
}

class _TextboxWidget1State extends State<TextboxWidget1> {
  bool _passwordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFormField(
                 //ss textAlignVertical: TextAlignVertical.center,
                  controller: widget.controller,
                  keyboardType: widget.keyboardType,
              //    cursorHeight: 20,
                  style: const TextStyle(fontSize: 20),
                  onChanged: (value) {
                    //   log(widget.controller.text);
                  },
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15.sp,
                    ),

                  ),
                ),
              )
          )]
    );
  }
}



