import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../config/colors.dart';
import './upload_photo.dart';

class ListPeriksa extends StatefulWidget {
  const ListPeriksa({super.key});
  static const nameRoute = '/list';

  @override
  State<ListPeriksa> createState() => _ListPeriksaState();
}

class _ListPeriksaState extends State<ListPeriksa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: const Icon(
        //     Icons.chevron_left,
        //     color: Colors.white,
        //   )
        // ),
        centerTitle: true,
        shadowColor: Colors.blueGrey[100],
        title: const Text(
          'Pasien Periksa',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: MyColor.primary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0
            ),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                          right: 10,
                          bottom: 6,
                          left: 5 
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(35.0),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  offset: const Offset(0, 2),
                                  blurRadius: 4.0
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18.0,
                              // vertical: 2.0
                            ),
                            child: TextField(
                              onChanged: (String txt) {},
                              style: const TextStyle(
                                fontSize: 15.5,
                              ),
                              cursorColor: Colors.indigo,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: Colors.grey[500]
                                ),
                                border: InputBorder.none,
                                hintText: 'Cari pasien ...',
                              ),
                            ),
                          ),
                        ),
                      )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MyColor.primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(35.0),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            offset: const Offset(0, 2),
                            blurRadius: 4.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Icon(Icons.search,
                                size: 23,
                                color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Material(
                            child: InkWell(
                              onTap: () => showModalBottomSheet(
                                  barrierColor: Colors.black26,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return OptionOfPoliklinik();
                                  },
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                              radius: 5.0,
                              splashColor: Colors.white70,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget> [
                                    Text(
                                      'Poliklinik',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 13.5,
                                        color: Colors.blueGrey[300],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 6.0,
                                        horizontal: 4.0
                                      ),
                                      child: Text(
                                        'Klinik Saraf / Neurologi',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.indigo[800],
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ),
                        VerticalDivider(
                          color: Colors.grey[400],
                          thickness: 0.8,
                        ),
                        Expanded(
                          flex: 1,
                          child: Material(
                            child: InkWell(
                              onTap: () => showModalBottomSheet(
                                  barrierColor: Colors.black26,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return OptionOfDokter();
                                  } 
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                              radius: 5.0,
                              splashColor: Colors.white70,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget> [
                                    Text(
                                      'Dokter',
                                      style: TextStyle(
                                        fontSize: 13.5,
                                        color: Colors.blueGrey[300],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 6.0,
                                        horizontal: 4.0
                                      ),
                                      child: Text(
                                        'dr. Hening Wijayanti, Sp.N',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.indigo[800],
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    offset: Offset(0, 5)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18.0,
                      vertical: 12.0
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.15),
                        )
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        const Text(
                          '56 Data ditemukan',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        Material(
                          color: Colors.white70,
                          child: InkWell(
                            onTap: () {},
                            radius: 1.0,
                            splashColor: Colors.white70,
                            child: const Icon(
                              Icons.sort,
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: ((context, index) {
                        return Card(
                          margin: const EdgeInsets.symmetric(
                            vertical: 3.0,
                            horizontal: 6.0
                          ),
                          child: Material(
                            color: Colors.white70,
                            animationDuration: const Duration(
                              milliseconds: 300
                            ),
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.white70,
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 3.0,
                                  horizontal: 15.0
                                ),
                                leading: CircleAvatar(
                                  radius: 22.0,
                                  backgroundColor: Colors.cyan,
                                  child: Text(
                                    '$index',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                                title: Text(
                                  'Nama Lengkap Pasien $index',
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4.0
                                      ),
                                      child: Text(
                                        'dr. Hening Wijayanti, Sp.N',
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500,
                                          color: MyColor.primary,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Poliklinik Penyakit Dalam | 15.00 - 17.00',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: Material(
                                  color: Colors.white,
                                  child: InkWell(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)
                                    ),
                                    onTap: () async {
                                      await availableCameras().then((cameras) => Navigator.push(context,
                                        MaterialPageRoute(
                                          builder: (_) => UploadPhoto(
                                            camera: cameras.first
                                          ) 
                                        )
                                      ));
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.photo_camera,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionOfPoliklinik extends StatefulWidget {
  const OptionOfPoliklinik({super.key});

  @override
  State<OptionOfPoliklinik> createState() => _OptionOPoliklinikState();
}

class _OptionOPoliklinikState extends State<OptionOfPoliklinik> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0
            ),
            child: Text(
              'Pilih Dokter',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15.0,
                fontWeight: FontWeight.w600
              ),
            )
          ),
          Divider(
            height: 0,
            color: Colors.grey[300],
            thickness: 0.8,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 10.0
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Poliklinik $index',
                              style: const TextStyle(
                                fontSize: 14.0
                              ),
                            ),
                            Radio(
                              activeColor: MyColor.primary,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              value: index,
                              groupValue: 0,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ) 
          )
        ],
      ),
    );
  }
}

///option list dokter
class OptionOfDokter extends StatefulWidget {
  const OptionOfDokter({super.key});

  @override
  State<OptionOfDokter> createState() => _OptionOfDokterState();
}

class _OptionOfDokterState extends State<OptionOfDokter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0
            ),
            child: Text(
              'Pilih Dokter',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15.0,
                fontWeight: FontWeight.w600
              ),
            )
          ),
          Divider(
            height: 0,
            color: Colors.grey[300],
            thickness: 0.8,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 10.0
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dokter $index',
                              style: const TextStyle(
                                fontSize: 14.0
                              ),
                            ),
                            Radio(
                              activeColor: MyColor.primary,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              value: index,
                              groupValue: 0,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ) 
          )
        ],
      ),
    );
  }
}