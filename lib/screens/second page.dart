import '../app.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Colors.black.withOpacity(0.7),
      leading: const Icon(Icons.menu),
      title: const Text(
        "BMTC",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.person),
        ),
      ],
    );

    var body = Stack(
      children: const [
        MapApi(),
        Positioned(
          bottom: 10,
          child: BottomSheetCell(),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
