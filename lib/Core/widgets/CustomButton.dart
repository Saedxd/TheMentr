import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/theme/theme_constants.dart';

class CustomButton extends StatefulWidget {
   const CustomButton({Key? key,
     required this.onPressed,
     required this.btnColor,
     required this.BorderColor,
     required this.TxtColor,
     required this.SocialName,
     required this.ButtonText,
     this.SocialImage,
     this.FontFamilySocial,
     required this.fontsize,
     required this.weight,
     required this.HeigthBTN,
     required this.Widthbtn
   }) : super(key: key);

   final String ButtonText;
   final VoidCallback? onPressed;
   final Color? btnColor;
   final Color? TxtColor;
   final Color? BorderColor;
   final String? SocialName;
   final String? SocialImage;
   final String? FontFamilySocial;
   final FontWeight? weight;
   final double? fontsize;

   final double? Widthbtn;
   final double? HeigthBTN;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
//   decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(4),
//             topRight: Radius.circular(4),
//             bottomLeft: Radius.circular(4),
//             bottomRight: Radius.circular(4),
//           ),
//       border : Border.all(
//           color: Color.fromRGBO(0, 0, 0, 1),
//           width: 1.5,
//         ),
    return InkWell(
        onTap: widget.onPressed!,
        child: Container(
            width:widget.Widthbtn,
            height: widget.HeigthBTN,
            decoration: BoxDecoration(
              borderRadius: border(8,8,8,8),
              color: widget.btnColor,
              border : Border.all(
              color: widget.BorderColor!,
              width: 1.5.w,
            ),
            ),
            child: Center(
              child:
                  Text(
                    widget.ButtonText,
                    textAlign: TextAlign.center,
                    style: _TextTheme.headline1!.copyWith(
                        fontSize: widget.fontsize,
                        fontWeight: widget.weight,
                         color: widget.TxtColor
                       ),
                  )
            )),);
  }
}
