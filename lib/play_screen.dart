import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double _currentSliderValue = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          headerSection(),
          const SizedBox(height: 140),
          songNameSection(),
          const SizedBox(height: 60),
          slider(),
          duration(),
          const SizedBox(height: 40),
          btnSong(),
        ],
      ),
    );
  }

  Container duration() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "1:04",
            style: TextStyle(color: Colors.white54),
          ),
          Text(
            "3:27",
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }

  Slider slider() {
    return Slider(
      value: _currentSliderValue,
      max: 300,
      min: 0,
      inactiveColor: Colors.white54,
      activeColor: Colors.yellow,
      onChanged: (val) {
        setState(() {
          _currentSliderValue = val;
        });
      },
    );
  }

  Row btnSong() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.compress_sharp,
            color: Colors.white54,
            size: 30,
          ),
          onPressed: () => {},
        ),
        IconButton(
          color: Colors.white,
          iconSize: 25,
          icon: const Icon(
            Icons.fast_rewind,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () => {},
        ),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.pause,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () => {},
          ),
        ),
        IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.fast_forward_sharp,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => {},
        ),
        IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.repeat,
            color: Colors.white54,
            size: 30,
          ),
          onPressed: () => {},
        ),
      ],
    );
  }

  Container songNameSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Last Dance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Rhye",
                style: TextStyle(color: Colors.white60, fontSize: 18),
              ),
            ],
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.favorite_sharp,
              color: Colors.yellow,
              size: 30.0,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }

  Row headerSection() {
    return Row(
      children: [
        Container(
          width: 250,
          height: 250,
          color: Colors.lime.shade400,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 90,
                left: 35,
                child: Container(
                  width: 280,
                  height: 270,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: const Image(
                      image: AssetImage("assets/images/3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 30,
                child: Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        color: Colors.white,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onPressed: () => {},
                      ),
                      const Text(
                        "PLAYING NOW",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      IconButton(
                        color: Colors.white,
                        icon: const Icon(
                          Icons.queue_music,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
