import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gojek Buatan Arhan'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Layanan Terpopuler',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ServiceCard(
                        serviceName: 'Transportasi',
                        icon: Icons.directions_car),
                    ServiceCard(
                        serviceName: 'Pesan Makanan',
                        icon: Icons.restaurant_menu),
                    ServiceCard(
                        serviceName: 'Pesan Barang',
                        icon: Icons.local_shipping),
                    ServiceCard(
                        serviceName: 'GO-send', icon: Icons.beach_access),
                    ServiceCard(
                        serviceName: 'GO-BOX', icon: Icons.beach_access),
                    ServiceCard(
                        serviceName: 'Gratis Biaya Layanan',
                        icon: Icons.beach_access),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Promo Hari Ini',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PromoCard(
                        promoText: 'Diskon 50% Transportasi',
                        promoImage: 'promo1.jpg'),
                    PromoCard(
                        promoText: 'Gratis Ongkir Makanan',
                        promoImage: 'promo2.jpg'),
                    PromoCard(
                        promoText: 'Gratis makanan ', promoImage: 'promo2.jpg'),
                    PromoCard(
                        promoText: 'Promo makanan ', promoImage: 'promo2.jpg'),
                    // Add more promo cards as needed
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

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final IconData icon;

  ServiceCard({required this.serviceName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 16),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            SizedBox(height: 8),
            Text(serviceName, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  final String promoText;
  final String promoImage;

  PromoCard({required this.promoText, required this.promoImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/$promoImage', height: 60, width: 60),
            SizedBox(height: 8),
            Text(promoText, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
