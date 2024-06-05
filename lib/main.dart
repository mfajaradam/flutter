import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const TabBarDemo({super.key, Key? Key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // tabbar
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: <Tab>[
                Tab(
                  icon: Text(
                    "Chat",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Status",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Panggilan",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
              ],
              // indicator
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            // appbar / title untuk memberi judul pada sebuah aplikasi
            title: const Text('WhatsApp'),
            titleTextStyle: TextStyle(color: Colors.white,fontSize: 24),
            backgroundColor: const Color(0xFF128C7E),
          ),
          // untuk menampilkan layar utama berupa chat,status dan panggilan
          body: TabBarView(
            children: [
              SizedBox(
                // scrollbar
                child: Scrollbar(
                  thumbVisibility:
                      true, //true untuk menampilkan penanda scrollbar kalo false tidak menampilan
                  child: ListView.builder(
                    // ada berapa item di scrollbar
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.all(10.0), //ukuran full scrollbar
                        child: Stack(
                          children: <Widget>[
                            Row(
                              // Row itu untuk membariskan objek
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10, top: 15),
                                  child: ClipOval(
                                    child: Image(
                                      image: AssetImage("images/profil.jpg"),
                                      width: 70,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "M.fajar",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 80,
                              top: 53,
                              child: Text(
                                "Anda : Ada yang saya bisa bantu!",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              // bagian akhir
              const Icon(Icons.directions_transit),
              const Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
