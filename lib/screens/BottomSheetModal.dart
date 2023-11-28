import 'package:flutter/material.dart';

class BottomSheetModal extends StatefulWidget {
  const BottomSheetModal({super.key});

  @override
  State<BottomSheetModal> createState() => _BottomSheetModalState();
}

class _BottomSheetModalState extends State<BottomSheetModal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modal Bottom Sheet Demo',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Creating a Modal Bottom Sheet'),
          backgroundColor: Colors.black38,
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: ElevatedButton(
                child: Text('Show Modal Bottom Sheet'),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text('Share'),
                          ),
                          ListTile(
                            leading: Icon(Icons.copy),
                            title: Text('Copy Link'),
                          ),
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Edit'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// class BottomSheetModal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500.0,
//       child: Column(
//         children: [
//           ListTile(
//             leading: Icon(Icons.edit),
//             title: Text('Edit'),
//             onTap: () {
//               // Logika yang ingin Anda jalankan ketika opsi "Edit" dipilih
//               Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.delete),
//             title: Text('Delete'),
//             onTap: () {
//               // Logika yang ingin Anda jalankan ketika opsi "Delete" dipilih
//               Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.home_filled),
//             title: Text('Home'),
//             onTap: () {
//               // Logika yang ingin Anda jalankan ketika opsi "Delete" dipilih
//               Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }