import '../app.dart';

class ApplicationBloc with ChangeNotifier {
  final placesService = PlacesService();
  List<PlaceSearch> searchResults = [];

  searchPlaces(String searchTerm) async {
    searchResults = await placesService.getAutocomplete(searchTerm);
    notifyListeners();
  }
}
