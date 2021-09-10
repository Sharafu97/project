import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool isTapped = false;
  int todo = 1;
  int val = 1;

  List<String> todoList = ['On site', 'Office work', 'Clint call'];
  List<Color> tappedColors = [Color(0xffF01D83), Color(0xffA53FFF)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                          radius: 20, backgroundColor: Colors.transparent)),
                  Center(
                    child: Container(
                      height: 20,
                      width: 75,
                      color: Colors.red,
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(radius: 20))
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      '6:24 PM',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Wednesday,Dec 12',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        if (isTapped == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RadioTile()));
                        } else {
                          setState(() {
                            isTapped = !isTapped;
                          });
                        }
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: isTapped
                                      ? Color(0xffF01D83).withOpacity(.5)
                                      : Colors.indigo.withOpacity(.5),
                                  offset: Offset(-3, 5),
                                  spreadRadius: 0)
                            ],
                            gradient: LinearGradient(
                                colors: isTapped
                                    ? tappedColors
                                    : ([
                                        Colors.indigo,
                                        Colors.blue,
                                      ]),
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/one.png',
                                height: 50, width: 50, color: Colors.white),
                            SizedBox(height: 10),
                            Text(
                              isTapped ? 'CLOCK OUT' : 'CLOCK IN',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_pin, size: 15),
                        Text(
                          'Location: Centrel buiding office',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        timer(Icon(Icons.access_time), '09:00', 'Check in'),
                        timer(Icon(Icons.access_time), '09:00', 'Check out'),
                        timer(
                            Icon(Icons.access_time), '09:00', 'Working hours'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget timer(Widget icon, String time, String type) {
  return Container(
    child: Column(
      children: [
        icon,
        SizedBox(height: 5),
        Text(
          time,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          type,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(.2)),
        ),
      ],
    ),
  );
}

class RadioTile extends StatefulWidget {
  const RadioTile({Key? key, this.tapped}) : super(key: key);
  final bool? tapped;

  @override
  _RadioTileState createState() => _RadioTileState();
}

class _RadioTileState extends State<RadioTile> {
  int todo = 1;
  int val = 1;

  change(int value) {
    setState(() {
      todo = value;
    });
  }

  List<String> todoList = ['On site', 'Office work', 'Clint call'];
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('What would you do today?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: todoList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RadioListTile(
                      title: Text(todoList[index]),
                      value: index,
                      groupValue: todo,
                      onChanged: (int? value) {
                        change(value!);
                      },
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('cancel')),
                  ElevatedButton(
                      onPressed: () {
                          // isTapped = !isTapped;
                       
                      },
                      child: Text('Done')),
                ],
              )
            ],
          ),
        ));
  }
}
