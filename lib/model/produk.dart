class Produk {
  int? id;
  String? kodeProduk;
  String? namaProduk;
  int? hargaProduk;
  String? keteranganProduk;

  Produk({this.id, this.kodeProduk, this.namaProduk, this.hargaProduk, this.keteranganProduk});

  factory Produk.fromJson(Map<String, dynamic> obj) {
    return Produk(
      id: obj['id'],
      kodeProduk: obj['kode_produk'],
      namaProduk: obj['nama_produk'],
      hargaProduk: obj['harga'],
      keteranganProduk: obj['keterangan'],
    );
  }
}
