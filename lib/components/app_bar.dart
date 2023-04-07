import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title,String subtitle) {
  return AppBar(
    // title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 32)),
    automaticallyImplyLeading: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(bottom: 20 ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
              Text(subtitle, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    )
  );
}