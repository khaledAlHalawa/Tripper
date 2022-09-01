import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

FToast fToast = FToast();

// showCustomMessageWithContext(
//   String message,
//   BuildContext context, {
//   int seconds = 2,
//   bool hasError = true,
// }) {
//   fToast.init(context);
//   fToast.removeQueuedCustomToasts();
//
//
//   Widget toast = Container(
//     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(25.0),
//       color: hasError ? ColorsApp.danger : ColorsApp.grey,
//     ),
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(hasError ? Icons.error_outline : Icons.check),
//         const SizedBox(width: 12.0),
//         Text(
//           message,
//           style: TextStyle(
//             color: ColorsApp.white,
//             fontSize: FontSize.large,
//           ).medium,
//         ),
//       ],
//     ),
//   );
//
//   fToast.showToast(
//       child: toast,
//       toastDuration: Duration(seconds: seconds),
//       gravity: ToastGravity.BOTTOM);
// }

showMessage(
  String message, {
  bool hasError = true,
  Toast timeShowing = Toast.LENGTH_LONG,
}) {
  Fluttertoast.cancel().then((value) => Fluttertoast.showToast(
      msg: message,
      backgroundColor: hasError ? Colors.red : Colors.blueAccent,
      textColor: Colors.white,
      fontSize: 16,
      toastLength: timeShowing,
      gravity: ToastGravity.BOTTOM));
}
