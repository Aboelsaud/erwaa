import 'package:dropdown_search/dropdown_search.dart';

import '../app.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final applicationBloc = Provider.of<ApplicationBloc>(context);

    var sourceDistContainer = Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.5), width: 1.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.exit_to_app),
              const SizedBox(width: 7),
              Container(
                width: size.width - 100,
                child: DropdownSearch(
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: true,
                  dropdownSearchDecoration: const InputDecoration(
                    hintText: "Source",
                    border: InputBorder.none,
                  ),
                  items: applicationBloc.searchResults.isNotEmpty
                      ? applicationBloc.searchResults
                          .map((e) => e.description)
                          .toList()
                      : ["Brazil"],
                  onChanged: (value) {
                    print(value.toString());
                    applicationBloc.searchPlaces(value.toString());
                  },
                  selectedItem: "Brazil",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  const Icon(Icons.circle, size: 5),
                  const Icon(Icons.circle, size: 5),
                  const Icon(Icons.circle, size: 5),
                ],
              ),
              const SizedBox(width: 10),
              Container(
                height: 1,
                width: size.width - 120,
                color: Colors.grey,
              ),
              const SizedBox(width: 7),
              const Icon(
                Icons.refresh,
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.ac_unit),
              const SizedBox(width: 7),
              SizedBox(
                width: size.width - 100,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Destination",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    var subtitleRow = Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width - 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black.withOpacity(0.4))),
            child: Row(
              children: const [
                Icon(
                  Icons.face,
                  size: 10,
                ),
                SizedBox(width: 2),
                Text(
                  "Go Today @3:10PM",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black.withOpacity(0.4))),
            child: Row(
              children: const [
                Icon(
                  Icons.face,
                  size: 10,
                ),
                SizedBox(width: 2),
                Text(
                  "Preferences",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    var appBar = SizedBox(
      height: size.height / 3,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            color: Colors.black.withOpacity(0.7),
            height: 90,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(width: 10),
                Text("Your Trip planner",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
              ],
            ),
          ),
          Positioned(
            top: 90,
            child: Container(
              height: (size.height / 3) - 90,
              color: Colors.white,
              width: size.width,
            ),
          ),
          Positioned(
            top: 50,
            child: sourceDistContainer,
          ),
          Positioned(
            top: 200,
            child: subtitleRow,
          ),
        ],
      ),
    );

    var savedRoutesText = const Padding(
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 13),
      child: Text(
        "Saved Routes",
        style: TextStyle(fontSize: 16),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.7),
      body: Column(
        children: [
          appBar,
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              color: Colors.white.withOpacity(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  savedRoutesText,
                  Expanded(
                    child: ListView(
                      children: List.generate(2, (index) => const TripCell()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
