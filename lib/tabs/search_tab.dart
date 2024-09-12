import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../search_tab_delegate.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showSearch(context: context, delegate: SearchTabDelegate());
      },
    );
  }
}

// Container(
//       padding: const EdgeInsets.all(8),
//       color: Colors.black,
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 15,
//           ),
//           TextField(
//             decoration: InputDecoration(
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25),
//                 borderSide: const BorderSide(
//                   color: Colors.white,
//                   width: 2,
//                 ),
//               ),
//               prefixIcon: const Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               hintText: "Search",
//               hintStyle: GoogleFonts.inter(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25),
//                 borderSide: const BorderSide(
//                   color: Colors.white,
//                   width: 2,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 600,
//             child: Image.asset("assets/images/no_movie_found.png"),
//           ),
//         ],
//       ),
//     )