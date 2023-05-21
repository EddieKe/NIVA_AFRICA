import 'package:flutter/material.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/utilities/colors.dart';

class Categories extends StatelessWidget {
  final List<String> _categoryLable = [
    'makeup artist',
    'skincare therapist',
    'hair stylist',
    'nails',
    'lipstick',
    'foundation',
    'serum',
    'lashes',
    'braids',
    'artificial locs',
    'gel polish',
    'masseuse'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(text: "Categories"),
          Container(
            height: Dimensions.height20 * 2,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categoryLable.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ActionChip(
                            backgroundColor: AppColors.mainBrown,
                            onPressed: (){},
                            label: Center(
                              child: Text(
                                _categoryLable[index],
                                style: const TextStyle(color: Colors.white, fontSize: 12,
                                fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
