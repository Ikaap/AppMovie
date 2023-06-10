import 'package:belajar_slicing_dua/tiket.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 675,
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 50),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Color(0xff14153D),
              ),
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        foregroundImage: AssetImage(
                          "assets/img/profile.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Ika Purwanti",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "ikapurwanti144@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                  ],
                ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Dashboard();
                    }));
                  },
                  child: Image.asset(
                    "assets/img/ic_home_active.png",
                    height: 35,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TiketPage();
                    }));
                  },
                  child: Image.asset(
                    "assets/img/ic_tiket.png",
                    height: 35,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return const ProfilePage();
                    // }));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfilePage();
                    }));
                  },
                  child: Image.asset(
                    "assets/img/ic_profile.png",
                    height: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
