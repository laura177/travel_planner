import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:onboarding_travel_planner/map_page/map_page.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  static Route<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const MapView());

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    int selectedIndex = 0;
    late LatLng currentLocation;
    currentLocation = AppConstants.myLocation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Flutter Map'),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              minZoom: 5,
              maxZoom: 18,
              zoom: 10,
              center: currentLocation,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    'https://api.mapbox.com/styles/v1/laurab177/{mapStyleId}/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}',
                additionalOptions: {
                  'mapStyleId': AppConstants.mapBoxStyleId,
                  'accessToken': AppConstants.mapBoxAccessToken
                },
              ),
              MarkerLayerOptions(
                markers: [
                  for (int i = 0; i < mapMarkers.length; i++)
                    Marker(
                      height: 40,
                      width: 40,
                      builder: (_) {
                        return GestureDetector(
                          onTap: () {
                            pageController.animateToPage(
                              i,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: AnimatedScale(
                            duration: const Duration(milliseconds: 500),
                            scale: selectedIndex == i ? 1 : 0.7,
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: selectedIndex == i ? 1 : 0.5,
                              child: const Icon(
                                Icons.pin_drop_rounded,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      },
                      point: mapMarkers[i].location ?? AppConstants.myLocation,
                    ),
                ],
              )
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 2,
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (val) {
                selectedIndex = val;
                currentLocation =
                    mapMarkers[val].location ?? AppConstants.myLocation;
                _animatedMapMove(currentLocation, 11.5);
              },
              itemCount: mapMarkers.length,
              itemBuilder: (_, idx) {
                final item = mapMarkers[idx];
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color.fromARGB(255, 237, 189, 230),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      item.title ?? '',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      item.address ?? '',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item.image ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
