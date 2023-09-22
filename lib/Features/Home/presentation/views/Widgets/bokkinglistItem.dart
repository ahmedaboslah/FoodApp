import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';

class BookingListItem extends StatelessWidget {
  const BookingListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage('assets/Rectangle 387.png'),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ambrosia Hotel & Restaurant'),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.location_on_outlined, size: 20),
                  const Text(
                    'kazi Deiry, Taiger Pass Chittagong',
                    maxLines: 2,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Primarycolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Book',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
