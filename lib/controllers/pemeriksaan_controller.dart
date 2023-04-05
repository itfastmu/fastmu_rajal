import 'package:dio/dio.dart';
import 'package:fastmu_rajal/models/polikllinik_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart' hide Response;

import 'package:fastmu_rajal/models/pemeriksaan_model.dart';

import 'package:fastmu_rajal/config/constant.dart';

class PemeriksaanController extends GetxController {

  late SharedPreferences prefs; 
  final Dio dio = Dio();
  
  // list pemeriksaan
  late Response dataOfPemeriksaan;
  final isLoading = true.obs;
  final page = 1.obs;
  final perPage = 300.obs;
  final keyword = "".obs;
  final listDataPemeriksaan = [].obs;
  final selectedKlinik = <String, dynamic>{ 
    "value": "all",
    "label": "Semua Klinik"
  }.obs;
  final selectedDokter = <String, dynamic>{ 
    "value": "all",
    "label": "Semua Dokter"
  }.obs;

  // list klinik
  late Response dataOfPoliklinik;
  final listDataPoli = [].obs;

  @override
  void onInit() {
    _getDataPemeriksaan();
    _getDataPoliklinik();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> _getDataPemeriksaan() async {
    prefs = await SharedPreferences.getInstance();
    
    isLoading(true);
    try {
      dataOfPemeriksaan = await dio.get(
        '$API_URL/rajal/antrian',
        options: Options(
          headers: { 'Authorization': prefs.getString('token') },
        ),
        queryParameters: {
          'page': page,
          'perPage': perPage,
          'poli': selectedKlinik['value'],
          'dokter': selectedDokter['value'],
          'keyword': keyword
        } 
      );

      final list = await dataOfPemeriksaan.data['data'].map<PemeriksaanModel>((list) => PemeriksaanModel.fromJson(list)).toList();

      isLoading(false);
      listDataPemeriksaan(list);      
    } 
    on DioError catch(err) {
      isLoading(false);
      throw Exception(err.message);
    }
  }

  Future<void> _getDataPoliklinik() async {
    prefs = await SharedPreferences.getInstance();
    
    try {
      dataOfPoliklinik = await dio.get(
        '$API_URL/klinik',
        options: Options(
          headers: { 'Authorization': prefs.getString('token') },
        ),
      );

      final list = await dataOfPoliklinik.data['data'].map<PoliklinikModel>((list) => PoliklinikModel.fromJson(list)).toList();
      list.insert(0,
        PoliklinikModel(
          kode: "all",
          nama: "Semua Poliklinik"
        )
      );

      listDataPoli(list);      
    } 
    on DioError catch(err) {
      isLoading(false);
      throw Exception(err.message);
    }
  }

  void changePoli(value) {
    Map<String, dynamic> parseMap = {
      "value": value.kode,
      "label": value.nama,
    };
    selectedKlinik(parseMap);
  }

  void handleSearch([String text = ""]) {
    keyword(text);
    _getDataPemeriksaan();
  }

}