import 'package:flutter/material.dart';
import 'package:kiddocare_test/src/model/api_result.dart';
import 'package:kiddocare_test/src/model/kindergarten.dart';
import 'package:kiddocare_test/src/services/api.dart';
import 'package:kiddocare_test/src/services/services_locator.dart';

enum ViewState { idle, busy }

class KindergartenProvider extends ChangeNotifier {
  ViewState _state = ViewState.idle;

  ViewState get state => _state;

  final _perGetAllPage = 15;

  var _page = 1;

  final _apiService = getService<ApiService>();

  final List<Kindergarten> _kindergartens = [];

  List<Kindergarten> get kindergartens => _kindergartens;

  bool get isLoading => _state == ViewState.busy;

  bool _hasMore = true;

  bool get hasMore => _hasMore;

  List<Kindergarten> filteredItems = [];
  String _searchQuery = "";
  String _selectedState = "All";

  final List<String> malaysianStates = [
    "All",
    "Johor",
    "Kedah",
    "Kelantan",
    "Melaka",
    "Negeri Sembilan",
    "Pahang",
    "Penang",
    "Perak",
    "Perlis",
    "Sabah",
    "Sarawak",
    "Selangor",
    "Terengganu",
    "Kuala Lumpur",
    "Labuan",
    "Putrajaya"
  ];

  void updateSearchQuery(String query) {
    _searchQuery = query;
    applyFilters();
  }

  void updateState(String state) {
    _selectedState = state;
    applyFilters();
  }

  void applyFilters() {
    filteredItems = _kindergartens
        .where((item) =>
            (_selectedState == "All" ||
                item.state.toLowerCase() == _selectedState.toLowerCase()) &&
            item.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
    notifyListeners();
  }

  bool get isFilterActive => _selectedState != "All";

  String get selectedState => _selectedState;

  Future<String?> getAll({int? page}) async {
    try {
      _state = ViewState.busy;

      _selectedState = "All";
      _page = page ?? _page;

      var result = await _apiService
          .get('/kindergartens?_page=$_page&_per_page=$_perGetAllPage');

      var apiResult = ApiResult.fromJson(result);

      if (page != null) _kindergartens.clear();

      _hasMore = apiResult.data.length == _perGetAllPage;

      _page++;

      final newItems =
          apiResult.data.map((e) => Kindergarten.fromJson(e)).toList();

      _kindergartens.addAll(newItems);

      return null;
    } catch (e) {
      return e.toString();
    } finally {
      _state = ViewState.idle;
      notifyListeners();
    }
  }
}
