class Food {
  final int idMakanan;
  final String namaMakanan;
  final String fotoMakanan;
  final String asalDaerah;
  final double rating;
  final String deskripsi;

  const Food({
    required this.idMakanan,
    required this.namaMakanan,
    required this.fotoMakanan,
    required this.asalDaerah,
    required this.rating,
    required this.deskripsi,
  });
}

final List<Food> foods = [
  const Food(
      idMakanan: 1,
      namaMakanan: "Mie Aceh",
      fotoMakanan: "lib/assets/images/mieaceh.jpg",
      asalDaerah: "Aceh",
      rating: 4,
      deskripsi:
          "Mie Aceh adalah hidangan mi khas dari Aceh, provinsi di Indonesia yang terletak di ujung barat pulau Sumatra. Hidangan ini terkenal karena rasanya yang kaya dan bumbu yang kuat. "),
  const Food(
      idMakanan: 2,
      namaMakanan: "Mie Ayam",
      fotoMakanan: "lib/assets/images/mieayam.jpeg",
      asalDaerah: "Jawa",
      rating: 4.5,
      deskripsi:
          "Mie ayam adalah salah satu jenis makanan mi yang populer di Indonesia. Mie ayam terdiri dari mi kuning yang disajikan dengan potongan daging ayam dan sayuran. "),
  const Food(
      idMakanan: 3,
      namaMakanan: "Mie Goreng",
      fotoMakanan: "lib/assets/images/miegoreng.jpg",
      asalDaerah: "Jawa",
      rating: 4,
      deskripsi:
          "Mie goreng adalah hidangan mi yang digoreng dalam minyak goreng, umumnya merupakan hidangan yang populer di Indonesia, Malaysia, dan Singapura. "),
  const Food(
      idMakanan: 4,
      namaMakanan: "Bika Ambon",
      fotoMakanan: "lib/assets/images/bikaambon.jpg",
      asalDaerah: "Medan",
      rating: 4,
      deskripsi:
          "Bika Ambon adalah kue tradisional yang berasal dari Indonesia, tepatnya dari daerah Medan, Sumatra Utara. Kue ini terbuat dari adonan tepung terigu, telur, gula, santan, dan ragi. "),
  const Food(
      idMakanan: 5,
      namaMakanan: "Pempek",
      fotoMakanan: "lib/assets/images/pempek.jpg",
      asalDaerah: "Palembang",
      rating: 4,
      deskripsi:
          "Pempek adalah makanan khas Palembang, Sumatra Selatan, Indonesia. Makanan ini terbuat dari daging ikan yang digiling lembut dan tepung kanji, serta beberapa komposisi lain seperti telur, bawang putih yang dihaluskan, penyedap rasa, dan garam. "),
  const Food(
      idMakanan: 6,
      namaMakanan: "Rendang",
      fotoMakanan: "lib/assets/images/rendang.jpg",
      asalDaerah: "Padang",
      rating: 5,
      deskripsi:
          "Rendang atau randang adalah masakan daging asli Indonesia yang berasal dari Minangkabau. Masakan ini juga populer di Malaysia, Singapura, dan Brunei. "),
  const Food(
      idMakanan: 7,
      namaMakanan: "Gudeg",
      fotoMakanan: "lib/assets/images/gudeg.jpeg",
      asalDaerah: "Yogyakarta",
      rating: 4,
      deskripsi:
          "Gudeg adalah makanan khas Yogyakarta dan Jawa Tengah, Indonesia. Makanan ini terbuat dari nangka muda yang dimasak dengan santan dan gula merah. "),
];
