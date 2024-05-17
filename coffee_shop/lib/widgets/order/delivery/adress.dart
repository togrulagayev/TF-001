import 'package:flutter/material.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivery Address',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Jl. Kpg Sutoyo',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Sora',
            color: Color(0xFFA2A2A2),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.list_alt),
              label: const Text('Edit Address'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  const Color(0xFF313131),
                ),
              ),
            ),
            const SizedBox(width: 16),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.note_add),
              label: const Text('Edit Address'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  const Color(0xFF313131),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
