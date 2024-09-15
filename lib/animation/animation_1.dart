import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Animation1 extends StatefulWidget {
  const Animation1({super.key});

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  var isColleps = true;
  double width = 0.0, height = 0.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

    return Scaffold(
      backgroundColor: const Color(0xff282B35),
      body: Stack(
        children: [
          const Menu(),
          dashbord(),
        ],
      ),
    );
  }

  AnimatedPositioned dashbord() {
    return AnimatedPositioned(
      left: isColleps ? 0 : 0.6 * width,
      right: isColleps ? 0 : -0.4 * width,
      top: isColleps ? 0 : 0.1 * height,
      bottom: isColleps ? 0 : 0.1 * height,
      onEnd: () {},
      duration: const Duration(milliseconds: 1800),
      child: Material(
        elevation: 12.2,
        color: const Color(0xff282B35),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 55),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isColleps = !isColleps;
                        print(isColleps);
                      });
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Dashbord",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const SizedBox(
                  height: 200,
                  width: 350,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "152425555222",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6y8xdMzqgoLdNgSKvSuEmZmYDKVqeY7Pqtw&s",
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              children: [
                Icon(Icons.branding_watermark, color: Colors.white),
                SizedBox(width: 10),
                Text("Dashbord",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Icon(Icons.chat_bubble, color: Colors.white),
                SizedBox(width: 10),
                Text("Message",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Icon(Icons.heat_pump, color: Colors.white),
                SizedBox(width: 10),
                Text("Health",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Icon(Icons.wallet, color: Colors.white),
                SizedBox(width: 10),
                Text("Found Transfer",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Icon(Icons.person, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
