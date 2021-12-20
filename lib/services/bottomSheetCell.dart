import '../app.dart';

class BottomSheetCell extends StatelessWidget {
  const BottomSheetCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var distTravelRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Distance",
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        //const SizedBox(width: 30),
        Row(
          children: const [
            Text(
              "Travel Time:",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "25 min",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );

    var timeRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "26 km",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: const [
            Icon(Icons.lock_clock_outlined, size: 20),
            SizedBox(width: 4),
            Text(
              "02:15pm",
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
        Row(
          children: const [
            Icon(Icons.lock_clock_outlined, size: 20),
            SizedBox(width: 4),
            Text(
              "02:15pm",
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ],
    );

    var TripTakenText = const Text(
      "Trip taken on 12/30/20",
      style: TextStyle(
        color: Colors.grey,
      ),
    );

    var details = Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  const Icon(Icons.arrow_upward, size: 20),
                  const SizedBox(width: 3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "From...",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Nov 04, 02:15pm",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //const SizedBox(height: 25),
              Row(
                children: [
                  const Icon(Icons.arrow_downward, size: 20),
                  const SizedBox(width: 3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "To Commercial street",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Nov 04, 02:40pm",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2.5,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.1),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.alarm,
                      size: 18,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "SET REMINDER",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width / 2.5,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.alarm,
                      size: 18,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "PAY ONLINE",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    var icon = const Positioned(
      top: -10,
      right: 10,
      child: Icon(
        Icons.person_add,
        size: 20,
        color: Colors.black,
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: size.width - 20,
        height: size.height / 3.2,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.9),
            border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            distTravelRow,
            const SizedBox(height: 3),
            timeRow,
            const SizedBox(height: 3),
            TripTakenText,
            const SizedBox(height: 10),
            details,
          ],
        ),
      ),
    );
  }
}
