import 'package:flutter/material.dart';

class FavoritesTabbar extends StatelessWidget {
  const FavoritesTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE8E8E8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Men's",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF143CDA),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  color: const Color(0xFF143CDA),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Women's",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF09040C),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  color: const Color(0xFFFFFFFF),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
