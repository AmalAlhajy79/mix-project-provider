// import 'package:flutter/material.dart';
// import 'package:newtes1/core/consts/app_colors.dart';
// import 'package:newtes1/core/ui_sizer/app_sizer.dart';
// class BotomNavigatioBar extends StatelessWidget {
//   const BotomNavigatioBar({ required this.selectedIndex});
//  final int selectedIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 15.w,
//       decoration: BoxDecoration(
//         //  color: Colors.yellowAccent,//.withAlpha(1500),
//         gradient: LinearGradient(
//             colors: [
//               Colors.cyan.shade900,
//               Colors.cyan.shade800,
//               Colors.cyan.shade800,
//               Colors.cyan.shade600,
//               AppColors.cyan.withOpacity(0.8),
//               AppColors.cyan.withOpacity(0.3),
//               AppColors.white.withAlpha(4)
//             ],
//             begin: Alignment.bottomLeft,
//             end: Alignment.topRight
//         ),
//
//       ),
//       child: BottomNavigationBar(
//         //useLegacyColorScheme: false,
//         backgroundColor: AppColors.cyan.withOpacity(0.5),//green,
//         //Colors.cyan.shade700 ,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//
//             icon: Icon(
//               Icons.home,
//               color: Colors.white,
//               size: 26,
//             ),
//             label: '',
//
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu_sharp, color: Colors.white, size: 26),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Colors.white, size: 26),
//             label: '',
//           ),
//         ],
//         currentIndex: selectedIndex,
//         selectedItemColor: AppColors.white,
//          unselectedItemColor:AppColors.cyan ,
//         onTap: (value) => print("AA..........AA"),
//       ),
//     );
//   }
// }
