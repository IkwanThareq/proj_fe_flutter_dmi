import 'package:flutter/material.dart';

class BottomSheetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Ini adalah konten dari Bottom Sheet',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Tambahkan tindakan yang ingin Anda lakukan ketika tombol ditekan di sini
              Navigator.of(context).pop(); // Untuk menutup bottom sheet
            },
            child: Text('Tutup'),
          ),
        ],
      ),
    );
  }
}
