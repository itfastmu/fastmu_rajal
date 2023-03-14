import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xff263C92),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light
    )
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
    );
  }
}

class LoginApp  extends StatefulWidget {
  const LoginApp ({super.key});

  @override
  State<LoginApp > createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp > {
  @override
  Widget build(BuildContext context) {

    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: screen.width,
              maxHeight: screen.height
            ),
            color: const Color(0xff263C92),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff263C92),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50)
                      )
                    ),
                    child: Container( 
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/img/fastmu-logo.png',
                              height: screen.width * 0.25,
                              width: screen.width * 0.25,
                            ),
                          ),
                          Text(
                            'Fulan'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screen.height / 33 ,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 5,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              'Fastmu Rawat Jalan',                           
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screen.height / 55,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ]
                      ),
                    )
                  ),
                ),
                Expanded(
                  
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15
                    ),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),                      
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screen.height / 40,
                        vertical: screen.height / 30,
                        
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Datang',
                            style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: screen.height / 38,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Silahkan masuk untuk melanjutkan !',
                              style: TextStyle(
                                color: Colors.blueGrey[400],
                                fontSize: screen.height / 58,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 30
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Username',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.text,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.transparent
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)
                                      )
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.transparent
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)
                                      )
                                    ),
                                    hintText: 'Masukkan username',
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueGrey[300],
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.text,
                                  autocorrect: false,
                                  obscureText: true,
                                  cursorColor: Colors.blueAccent,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.transparent
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)
                                      )
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.transparent
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)
                                      )
                                    ),
                                    hintText: 'Masukkan Password',
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueGrey[300],
                                      fontWeight: FontWeight.normal
                                    )
                                  )
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 12.0,
                                    bottom: 22.0
                                  ), 
                                  child: Text(
                                    'Lupa password ?',
                                    style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {},
                                    style:  ButtonStyle(
                                      padding: const MaterialStatePropertyAll(
                                        EdgeInsets.all(15)
                                      ),
                                      backgroundColor: const MaterialStatePropertyAll(
                                        Color(0xff263C92)
                                      ),
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0)
                                        )
                                      )
                                    ),
                                    child: Center(
                                      child: Text(
                                        'masuk'.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ) 
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  )
                ),
              ],
            ),
          )
          ),
        )
      );
  }
}

// Fastmu Rawat inap