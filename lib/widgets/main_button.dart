// import 'package:flutter/material.dart';
// // import 'package:wallet/login%20ans%20signup/core/text_style.dart';

// class Mainbutton extends StatelessWidget {
//   final Function() onTap;
//   final String text;
//   final String? image;
//   final Color? txtColor;
//   final Color btnColor;
//   final TextStyle? style;

//   const Mainbutton({
//     Key? key,
//     required this.onTap,
//     required this.text,
//     this.image,
//     this.txtColor,
//     this.style,
//     required this.btnColor,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 60.0,
//         margin: const EdgeInsets.symmetric(horizontal: 100.0),
//         decoration: BoxDecoration(
//           color: btnColor,
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (image != null)
//               Image.asset(
//                 'assets/image/$image',
//                 height: 25.0,
//                 width: 60.0,
//               ),
//             Text(
//               text,
//               style: style,
//               // style: txtColor != null
//               //     ? headline2.copyWith(color: txtColor)
//               //     : headline2,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Mainbutton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String? image;
  final Color? txtColor;
  final Color btnColor;
  final TextStyle? style;
  final Function()? validation; // Validation function added

  const Mainbutton({
    Key? key,
    required this.onTap,
    required this.text,
    this.image,
    this.txtColor,
    this.style,
    required this.btnColor,
    this.validation, // Pass the validation function as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Check validation before executing onTap callback
        if (validation != null && !validation!()) {
          // Validation failed, show an error message or take appropriate action.
          // For example, you can display a snackbar with an error message.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Validation failed!'),
              duration: Duration(seconds: 2),
            ),
          );
        } else {
          // Validation successful, execute onTap callback
          onTap();
        }
      },
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              Image.asset(
                'assets/image/$image',
                height: 25.0,
                width: 60.0,
              ),
            Text(
              text,
              style: style,
            )
          ],
        ),
      ),
    );
  }
}
