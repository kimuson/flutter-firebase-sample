import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/LoginPage.dart';
import 'package:firebase_demo/RegisterPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "ご自身のクレデンシャル情報を入力してください",
        authDomain: "ご自身のクレデンシャル情報を入力してください",
        projectId: "ご自身のクレデンシャル情報を入力してください",
        storageBucket: "ご自身のクレデンシャル情報を入力してください",
        messagingSenderId: "ご自身のクレデンシャル情報を入力してください",
        appId: "ご自身のクレデンシャル情報を入力してください"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('ログイン'),
              onPressed: () async {
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),
                );
              },
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              child: Text('アカウント作成'),
              onPressed: () async {
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
