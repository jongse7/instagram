import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = ["jongse_7", "sejong_7", "moon_7", "유윤상", "박가을", "편유나"];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomAppBar(
          height: 55,
          color: Colors.black,
          child: _BottomIcons(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Title(),
            _Story(name: name),
            _Feed(name: name),
          ],
        ),
      ),
    );
  }
}

class _BottomIcons extends StatelessWidget {
  const _BottomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.home_filled,
          color: Colors.white,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.add_box_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.play_circle_filled,
          color: Colors.white,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Text(
            "INSTAGRAM",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            width: 200,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.mail,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _Story extends StatelessWidget {
  final List<String> name;
  const _Story({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.pinkAccent,
                      width: 2,
                    ),
                  ),
                ),
                Text(
                  name[index],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _Feed extends StatelessWidget {
  final List<String> name;
  const _Feed({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 25,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blue,
              ),
              Row(),
              Row(),
              Text(
                "11월 27일",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

