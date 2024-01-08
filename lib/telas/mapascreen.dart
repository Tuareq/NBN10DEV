import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapaScreen extends StatefulWidget {
  const MapaScreen({Key? key}) : super(key: key);

  @override
  _MapaScreenState createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
  LatLng? _initialPosition;
  late GoogleMapController _mapController;
  final PolylineId _pathId = const PolylineId("path");
  final Set<Polyline> _polylines = {};
  final List<LatLng> _pathCoordinates = [];

  final List<BitmapDescriptor> customIcons = [
    BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  ];

  int selectedIcon = 0;
  double _distance = 0.0;
  MapType _mapType =
      MapType.hybrid; // Adicione esta variável para controlar o tipo de mapa

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  _getUserLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      setState(() {
        _initialPosition = LatLng(position.latitude, position.longitude);
      });

      _startUpdatingPath();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapa"),
      ),
      body: _initialPosition == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.pin_drop,
                          color: selectedIcon == 0
                              ? Colors.purpleAccent
                              : Colors.black),
                      onPressed: () {
                        setState(() {
                          selectedIcon = 0;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.pin_drop,
                          color: selectedIcon == 1
                              ? Colors.blueAccent
                              : Colors.black),
                      onPressed: () {
                        setState(() {
                          selectedIcon = 1;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.pin_drop,
                          color: selectedIcon == 2
                              ? Colors.greenAccent
                              : Colors.black),
                      onPressed: () {
                        setState(() {
                          selectedIcon = 2;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.pin_drop,
                          color: selectedIcon == 3
                              ? Colors.orangeAccent
                              : Colors.black),
                      onPressed: () {
                        setState(() {
                          selectedIcon = 3;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                  "Distância acumulada: ${_distance.toStringAsFixed(2)} metros",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue, // Altere a cor desejada aqui
                  ),
                ),

                // DropdownButton para escolher o tipo de mapa

                DropdownButton<MapType>(
                  value: _mapType,
                  onChanged: (newMapType) {
                    setState(() {
                      _mapType = newMapType!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      value: MapType.normal,
                      child: Text('Fundo Normal'),
                    ),
                    DropdownMenuItem(
                      value: MapType.satellite,
                      child: Text('Fundo do Satélite'),
                    ),
                    DropdownMenuItem(
                      value: MapType.hybrid,
                      child: Text('Fundo Híbrido composto'),
                    ),
                    DropdownMenuItem(
                      value: MapType.terrain,
                      child: Text('Fundo Terreno'),
                    ),
                  ],
                  style: const TextStyle(
                    color: Colors.blue, // define cor do texto
                  ),
                  underline: Container(), // remove a linha de seleçao padrão
                ),
                Expanded(
                  child: GoogleMap(
                    mapType: _mapType, // Usar o tipo de mapa selecionado
                    onMapCreated: (controller) {
                      _mapController = controller;
                    },
                    initialCameraPosition: CameraPosition(
                      target: _initialPosition!,
                      zoom: 15.0,
                    ),
                    markers: {
                      Marker(
                        markerId: const MarkerId("user_location"),
                        position: _initialPosition!,
                        icon: customIcons[selectedIcon],
                        onTap: () {},
                      ),
                    },
                    polylines: _polylines,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                  ),
                ),
              ],
            ),
    );
  }

  void _startUpdatingPath() {
    Geolocator.getPositionStream().listen((Position position) {
      LatLng newPosition = LatLng(position.latitude, position.longitude);

      if (_pathCoordinates.isNotEmpty) {
        double distance = Geolocator.distanceBetween(
          _pathCoordinates.last.latitude,
          _pathCoordinates.last.longitude,
          newPosition.latitude,
          newPosition.longitude,
        );
        setState(() {
          _distance += distance;
        });

        setState(() {
          _polylines.add(Polyline(
            polylineId: _pathId,
            points: [..._pathCoordinates, newPosition],
            color: Colors.blue,
            width: 4,
          ));
        });
      }

      setState(() {
        _pathCoordinates.add(newPosition);
      });

      _mapController.animateCamera(CameraUpdate.newLatLng(newPosition));
    });
  }
}
