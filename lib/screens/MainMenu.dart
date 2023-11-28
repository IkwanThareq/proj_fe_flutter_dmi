import 'package:fe_dmi/screens/BottomSheetModal.dart';
import 'package:fe_dmi/screens/HomeScreen.dart';
import 'package:fe_dmi/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ini code yang bene sebelumnya
class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    // BottomSheetModal(),
    const LoginScreen(),
  ];

  // void _showModalBottomSheet(BuildContext context) {
  //   showModalBottomSheet<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: 200,
  //         child: Center(
  //           child: Text('This is a Modal Bottom Sheet'),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                // if (_currentIndex == 1) {
                //   _showModalBottomSheet(context);
                // }
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Login",
              ),
            ],
          ),
          Positioned(
            bottom: 30.0,
            child: FloatingActionButton(
              onPressed: () {
                _showModalBottomSheet(context);
              },
              child: Icon(Icons.menu),
            ),
          ),
        ],
      ),
    );
  }
}

// ini code yang baru
void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          // height: 500.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sholat dan Navigasi',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/kaaba.png'),
                    label: 'Arah Kiblat',
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'GeeksforGeeks',
                        backgroundColor: Colors.grey,
                      );
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/shalat.png'),
                    label: 'Jadwal Shalat',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Camera di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/halal.png'),
                    label: 'Restoran Halal',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Music di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/cloud.png'),
                    label: 'Kondisi cuaca',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Location di sini
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Masjid dan Kegiatan',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/kaaba.png'),
                    label: 'Arah Kiblat',
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'GeeksforGeeks',
                        backgroundColor: Colors.grey,
                      );
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/shalat.png'),
                    label: 'Jadwal Shalat',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Camera di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/halal.png'),
                    label: 'Restoran Halal',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Music di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/cloud.png'),
                    label: 'Kondisi cuaca',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Location di sini
                    },
                  ),
                ],
              ),
              
              const SizedBox(height: 16.0),
              const Text(
                'Halo Dai',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/kaaba.png'),
                    label: 'Arah Kiblat',
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'GeeksforGeeks',
                        backgroundColor: Colors.grey,
                      );
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/shalat.png'),
                    label: 'Jadwal Shalat',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Camera di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/halal.png'),
                    label: 'Restoran Halal',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Music di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/cloud.png'),
                    label: 'Kondisi cuaca',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Location di sini
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/kaaba.png'),
                    label: 'Arah Kiblat',
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'GeeksforGeeks',
                        backgroundColor: Colors.grey,
                      );
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/shalat.png'),
                    label: 'Jadwal Shalat',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Camera di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/halal.png'),
                    label: 'Restoran Halal',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Music di sini
                    },
                  ),
                  _buildRoundedCard(
                    icon: Image.asset('assets/images/cloud.png'),
                    label: 'Kondisi cuaca',
                    onPressed: () {
                      // Tambahkan logika untuk menampilkan halaman Location di sini
                    },
                  ),
                ],
              ),
              
            ],
          ),
        ),
      );
    },
  );
}

Widget _buildRoundedCard({required Widget icon, required label, required onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      children: [
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.blue, // Ubah warna sesuai keinginan Anda
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: icon, // Menggunakan Widget yang diberikan sebagai ikon
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(fontSize: 14.0),
        ),
      ],
    ),
  );
}



// void _showModalBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//         padding: EdgeInsets.all(16.0),
//         height: 500.0,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Judul Konten',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _buildRoundedCard(Icons.card_giftcard),
//                 _buildRoundedCard(Icons.camera),
//                 _buildRoundedCard(Icons.music_note),
//                 _buildRoundedCard(Icons.location_on),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//           ],
//         ),
//       );
//     },
//   );
// }

// Widget _buildRoundedCard(IconData icon) {
//   return Container(
//     width: 70.0,
//     height: 70.0,
//     decoration: BoxDecoration(
//       color: Colors.blue, // Ubah warna sesuai keinginan Anda
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     child: Center(
//       child: Icon(
//         icon,
//         size: 36.0,
//         color: Colors.white,
//       ),
//     ),
//   );
// }


// void _showModalBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//         height: 500.0,
//         child: Column(
//           children: [
//             ListTile(
//               leading: Icon(Icons.edit),
//               title: Text('Edit'),
//               onTap: () {
//                 // Logika yang ingin Anda jalankan ketika opsi "Edit" dipilih
//                 Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.delete),
//               title: Text('Delete'),
//               onTap: () {
//                 // Logika yang ingin Anda jalankan ketika opsi "Delete" dipilih
//                 Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
//               },
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }