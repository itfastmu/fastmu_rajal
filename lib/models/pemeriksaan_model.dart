class PemeriksaanModel {
  final int id, antrian;
  final String nama, dokter, klinik, mulai, selesai;

  const PemeriksaanModel({
    required this.id,
    required this.antrian,
    required this.nama,
    required this.dokter,
    required this.klinik,
    required this.mulai,
    required this.selesai,
  });

  factory PemeriksaanModel.fromJson(Map<String, dynamic?> json) {
    return PemeriksaanModel(
      id: json['id'],
      antrian: json['nomer'],
      nama: json['nm_pasien'],
      dokter: json['nama'],
      klinik: json['nm_poli'],
      mulai: json['mulai'],
      selesai: json['selesai'],
    );
  }

}