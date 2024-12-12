import 'package:betuptip/ui/common/app_asset.dart';
import 'package:betuptip/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpWithGoogleButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpWithGoogleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.kcpryBlack,
        backgroundColor: AppColors.kcVeryWhiteSmoke,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey.shade300),
        ),
        elevation: 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppAssets.googleiconPng,
            height: 23,
          ),
          const SizedBox(width: 12), // Space between icon and separator
          Container(
            width: 1,
            height: 20,
            color: Colors.grey.shade300, // Vertical separator
          ),
          const SizedBox(width: 12), // Space between separator and text
          const Text(
            'Sign in with Google',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 15 // Text color to match the design
                ),
          ),
        ],
      ),
    );
  }
}

// import 'package:betuptip/ui/common/app_asset.dart';
// import 'package:betuptip/ui/common/app_colors.dart';
// import 'package:flutter/material.dart';

// class SignUpWithGoogleButton extends StatelessWidget {
//   final VoidCallback onPressed;

//   const SignUpWithGoogleButton({super.key,  required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       onPressed: onPressed,
//       icon: Image.asset(
//         AppAssets.googleiconPng,
//         height: 20
//       ),
//       label: const Text('Sign Up with Google'),
//       style: ElevatedButton.styleFrom(
//         foregroundColor: AppColors.kcpryBlack, backgroundColor: AppColors.kcVeryWhiteSmoke,
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//           side: BorderSide(color: Colors.grey.shade300),
//         ),
//         elevation: 2,
//       ),
//     );
//   }
// }
