import 'package:flutter/material.dart';
import 'model.dart';

class Detail extends StatefulWidget {
  final Place place;

  Detail({required this.place});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late Place _place;

  @override
  void initState() {
    super.initState();
    _place = widget.place;
  }

//aksi ketika tombol love ditekan
  void _toggleLike() {
    setState(() {
      _place.isLiked = !_place.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Gambar latar belakang dengan tinggi setengah layar
                Container(
                  height: MediaQuery.of(context).size.height /
                      2, // Setengah tinggi layar
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(_place.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Ikon Kembali
                Positioned(
                  top: 40,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black54,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                // Ikon Love
                Positioned(
                  top: 40,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black54,
                    ),
                    child: IconButton(
                      icon: Icon(
                        _place.isLiked ? Icons.favorite : Icons.favorite_border,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: _toggleLike,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _place.name,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        _place.location,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    _place.description,
                    style: TextStyle(height: 1.25),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
