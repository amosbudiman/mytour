import 'package:flutter/material.dart';
import 'package:mytour/detail.dart';

import 'model.dart';

class Home extends StatelessWidget {
  //data tempat wisata
  final List<Place> places = [
    Place(
      name: 'DESA PANGLIPURAN ',
      image: 'assets/images/panglipuran.jpg',
      description:
          "Desa Adat Penglipuran merupakan satu kawasan pedesaan yang memiliki tatanan spesifik dari struktur desa tradisional, sehingga mampu menampilkan wajah pedesaan yang asri. Penataan fisik dari struktur desa tersebut tidak terlepas dari budaya masyarakatnya yang sudah berlaku turun temurun. Sehingga dengan demikian Desa Adat Penglipuran merupakan obyek wisata budaya. Keasrian Desa Adat Penglipuran dapat dirasakan mulai dari memasuki kawasan pradesa dengan hijau rerumputan pada pinggiran jalan dan pagar tanaman menepi sepanjang jalan.",
      location: 'Bangli, Bali',
      isLiked: false,
    ),
    Place(
      name: 'DIAMOND BEACH  ',
      image: 'assets/images/diamond_beach.jpg',
      description:
          "Pantai Diamond adalah obyek wisata bahari yang berada tidak jauh dari Pantai Atuh, Raja Lima, Pulau Seribu, dan Rumah Pohon Molenteng di kawasan wisata Nusa Penida. Tepatnya pantai ini terletak di jalur Timur Nusa Penida dan mengarah ke Bukit Teletubbies. Pantai ini dinamai Diamond Beach karena memiliki pemandangan tebing karst yang berbentuk runcing seperti permata. Daya tarik Diamond Beach juga berasal dari gugusan birunya air laut serta pasir putih yang lembut. Lokasinya sendiri berada di balik tebing bukit, tidak heran jika wisatawan juga mengenal pantai ini sebagai surga tersembunyi.",
      location: 'Klungkung, Bali',
      isLiked: false,
    ),
    Place(
      name: 'ALAS HARUM   ',
      image: 'assets/images/alas_harum.jpg',
      description:
          "Alas Harum merupakan sebuah kawasan agrowisata yang menyajikan beberapa wahana seru dengan pemandangan alam berupa hamparan sawah terasering dan hijaunya pepohonan.Di dalam kawasan ini terdapat spot-spot foto yang menarik dan juga ikonis. Di antaranya Bird Nest, Pekak Berayut, Gorila, Dancing Bridge, Education Temple, Glass Flooring.Kemudian, yang terbaru adalah Soekarno Statue, patung raksasa terbuat dari bambu yang berhasil mendapatkan penghargaan dari rekor MURI.Selain itu, terdapat pengalaman berharga yang bisa kamu dapatkan saat berkunjung ke wisata Alas Harum ini, yaitu dapat melihat proses pembuatan kopi luwak dari awal hingga akhir.",
      location: 'Gianyar, Bali',
      isLiked: false,
    ),
    Place(
      name: 'BEDUGUL',
      image: 'assets/images/bedugul.jpg',
      description:
          "bedugul merupakan salah satu kawasan wisata favorit di Pulau Bali. Terletak di daerah pegunungan, dengan ketinggian sekitar 1.400 meter diatas permukaan laut. Bedugul mempunyai pemandangan yang indah dan berhawa sejuk. Objek wisata utamanya adalah Danau Bratan yang berada di puncak bukit. Disamping itu, ada sebuah pura yang berdiri didekat Danau Bratan ini, yaitu Pura Ulun Danu.Bedugul berada di Kecamatan Baturiti, Tabanan. Jaraknya kurang lebih 50 kilometer dari kota Denpasar. Akses untuk menuju kawasan wisata Bedugul sangat mudah dan pemandangannya indah. Di salah satu sisi jalan akan terlihat pemandangan persawahan yang berundak-undak dan disisi lain terdapat lembah yang hijau.",
      location: 'Tabanan, Bali',
      isLiked: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tempat Wisata Bali'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                //pindah ke halaman detail dengan membawa parameter dari model place
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(place: places[index]),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    // Gambar
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(places[index].image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // Tulisan di dalam gambar
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(8),
                          ),
                          color: Colors.black54,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              places[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 12,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  places[index].location,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
