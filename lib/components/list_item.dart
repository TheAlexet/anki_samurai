import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ListItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(
        label.tr(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
