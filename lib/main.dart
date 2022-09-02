import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wallet/models/wallet.dart';
import 'package:wallet/utils/styles.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const MyHomePage(title: 'Wallet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    Wallet newWallet = Wallet(
      uid: 'uid',
      amount: 100,
      name: 'name',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    FirebaseFirestore.instance
        .collection('wallet')
        .withConverter<Wallet>(
          fromFirestore: (snapshots, _) => Wallet.fromJson({
            'id': snapshots.id,
            ...snapshots.data()!,
          }),
          toFirestore: (wallet, _) => wallet.toJson(),
        )
        .add(newWallet);

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: Text(
          'Wallet',
          style: AppTheme.textTheme.headline1?.copyWith(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
