import 'package:flutter/material.dart';

class lfcapp extends StatelessWidget {
  const lfcapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิดแบนเนอร์ debug
      home: Scaffold(
        backgroundColor: Colors.red, // สีพื้นหลังของหน้าจอ
        appBar: AppBar(
          title: const Text("Liverpool"), // ชื่อของแอปใน AppBar
          backgroundColor: Colors.white, // สีพื้นหลังของ AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // จัดตำแหน่งให้วางตรงกลาง
            children: [
              // ข้อความ
              Text(
                "Liverpool Best Alltime",
                style: TextStyle(
                    color: Color.fromARGB(255, 4, 1, 10)), // สีข้อความ
              ),
              const SizedBox(height: 20), // เพิ่มช่องว่างระหว่างภาพ
              // ภาพจาก assets
              Image.network('https://i.guim.co.uk/img/static/sys-images/Football/Pix/pictures/2010/4/19/1271677240699/Fernando-Torres-001.jpg?width=465&dpr=1&s=none&crop=none'),
              Text(
                "Fernando Torres",
                style: TextStyle(
                color: Color.fromARGB(255, 4, 1, 10)), // สีข้อความ  
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // เพิ่มฟังก์ชันการทำงานเมื่อกดปุ่มนี้
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('คุณกดปุ่ม!')),
            );
          },
          child: const Icon(Icons.thumb_up_alt_outlined),
        ),
      ),
    );
  }
}
