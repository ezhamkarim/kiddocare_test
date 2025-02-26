import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kiddocare_test/src/app_router.gr.dart';
import 'package:kiddocare_test/src/model/kindergarten.dart';
import 'package:kiddocare_test/src/provider/kindergarten.dart';
import 'package:provider/provider.dart';

@RoutePage()
class KindergartenListingPage extends StatefulWidget {
  const KindergartenListingPage({super.key});

  @override
  State<KindergartenListingPage> createState() =>
      _KindergartenListingPageState();
}

class _KindergartenListingPageState extends State<KindergartenListingPage> {
  final scrollController = ScrollController();
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    var kProvider = context.read<KindergartenProvider>();

    kProvider.getAll(page: 1);

    scrollController.addListener(() {
      if (!kProvider.isLoading && kProvider.hasMore) {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          kProvider.getAll();
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var kProvider = context.watch<KindergartenProvider>();
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                decoration: const InputDecoration(hintText: "Search..."),
                autofocus: true,
                onChanged: kProvider.updateSearchQuery,
              )
            : const Text("Kiddocare Kindergarten"),
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear();
                  kProvider.updateSearchQuery("");
                }
              });
            },
          ),
          if (_isSearching)
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () => _showFilterDialog(context),
                ),
                if (kProvider.isFilterActive)
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
      body: kProvider.state == ViewState.busy
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : _isSearching
              ? Scrollbar(
                  thumbVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                      itemCount: kProvider.filteredItems.length,
                      itemBuilder: (_, i) {
                        var item = kProvider.filteredItems[i];
                        return KindergartenTile(
                          kindergarten: item,
                          onTap: () {
                            context.pushRoute(
                                KindergartenDetailsRoute(kindergarten: item));
                          },
                        );
                      }),
                )
              : RefreshIndicator(
                  onRefresh: () => kProvider.getAll(page: 1),
                  child: Scrollbar(
                    thumbVisibility: true,
                    thickness: 10,
                    radius: const Radius.circular(10),
                    child: ListView.builder(
                        controller: scrollController,
                        itemCount: kProvider.kindergartens.length +
                            (kProvider.isLoading ? 1 : 0),
                        itemBuilder: (_, i) {
                          var item = kProvider.kindergartens[i];

                          if (i == kProvider.kindergartens.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child:
                                    CircularProgressIndicator(), // Loader at bottom
                              ),
                            );
                          }
                          return KindergartenTile(
                            kindergarten: item,
                            onTap: () {
                              context.pushRoute(
                                  KindergartenDetailsRoute(kindergarten: item));
                            },
                          );
                        }),
                  ),
                ),
    );
  }

  void _showFilterDialog(BuildContext context) {
    final provider = context.read<KindergartenProvider>();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Filter by State"),
          content: SizedBox(
            width: 300,
            height: 400,
            child: Scrollbar(
              thumbVisibility: true,
              child: ListView(
                shrinkWrap: true,
                children: provider.malaysianStates.map((state) {
                  return RadioListTile(
                    title: Text(state),
                    value: state,
                    groupValue: provider.selectedState,
                    onChanged: (value) {
                      provider.updateState(value!);
                      Navigator.pop(context);
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class KindergartenTile extends StatelessWidget {
  final Kindergarten kindergarten;
  final VoidCallback? onTap;

  const KindergartenTile({
    super.key,
    required this.kindergarten,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          kindergarten.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        kindergarten.name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("${kindergarten.city}, ${kindergarten.state}"),
      onTap: onTap,
    );
  }
}
