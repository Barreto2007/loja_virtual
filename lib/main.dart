import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/base/base_screen.dart';

void main() async {
  runApp(MyApp());

// ######  Mandar  dados para o Firebase ######
//  Firestore.instance.collection('teste3').add({'teste1': 'teste1'});
//  Firestore.instance.collection('pedidos').add({'preco': 199.99, 'usuario': 'Cleber'});

//  Firestore.instance.collection('pedidos').document('#0001').setData(({'preco': 199.99, 'usuario': 'Cleber Barreto'}));
//setdata faz atualização do campo como estava antes...

//  Firestore.instance.collection('pedidos').document('#0001').updateData(({'preco': 200.99, 'usuario': 'Cleber Pinto Barreto'}));
//  Firestore.instance.document('pedidos/#0001').updateData(({'preco': 300.99, 'usuario': 'Cleber Pinto Barreto'}));
//UpdateData faz atualização do registros

//  Firestore.instance.document('pedidos/#0001').updateData(({'preco': 300.99, 'usuario': 'Cleber Pinto Barreto'}));


// ###### Ler dados do Firebase #######
//DocumentSnapshot document = await Firestore.instance.collection('pedidos').document('#0001').get();
//print(document.data);
//print(document.data['usuario']);

//Firestore.instance.collection('pedidos').document('#0001').snapshots().listen((event) {
//  print(event.data);
//função snapshot informa sempre que houver alguma mudança no firebase em tempo real... muito bom
//});

//QuerySnapshot snapshot = await Firestore.instance.collection('pedidos').getDocuments();
//for (DocumentSnapshot document in snapshot.documents) {
//  print(document.data);
//}
//função para poder listar todos os documntod do Firebase

//  Firestore.instance.collection('pedidos').snapshots().listen((snapshots) {
//    for (DocumentSnapshot document in snapshots.documents) {
//      print(document.data);
//    }
//  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste Inicial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}

