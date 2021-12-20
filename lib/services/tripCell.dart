import '../app.dart';

class TripCell extends StatelessWidget {
  const TripCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var innercontainerMR = Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.5),
      ),
      child: const Text("1680-MR", style: TextStyle(fontSize: 17)),
    );

    var details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.ac_unit,
              size: 23,
              color: Colors.white,
            ),
            const SizedBox(width: 5),
            innercontainerMR,
          ],
        ),
        const SizedBox(height: 7),
        Row(
          children: const [
            Icon(
              Icons.ac_unit,
              size: 23,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              "To Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        Row(
          children: const [
            Icon(
              Icons.ac_unit,
              size: 23,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              "Trip taken on 12/30/20",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );

    var distanceKm = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "26 km",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2),
        Text(
          "From you",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black54,
            border: Border.all(color: Colors.grey),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: Offset(10, 10))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            details,
            distanceKm,
          ],
        ),
      ),
    );
  }
}
