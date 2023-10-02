import 'package:flutter/material.dart';

class BottomSheetModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit'),
            onTap: () {
              // Logika yang ingin Anda jalankan ketika opsi "Edit" dipilih
              Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete'),
            onTap: () {
              // Logika yang ingin Anda jalankan ketika opsi "Delete" dipilih
              Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
            },
          ),
        ],
      ),
    );
  }
}