import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List nomeUsuario = ['Carlos'];
//List labelEntrega = ['delivery', 'retira', 'vaga'];
String? escolherEntrega = 'Delivery';
//final

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/eu.jpg'),
                ),
              ),
            ),
            title: const Text(
              'CARLOS',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFC71B04),
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              SizedBox(
                height: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 35,
                        color: const Color(0xFFC71B04),
                        onPressed: () {},
                        icon: const Icon(Icons.delivery_dining),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: DropdownButton(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return const SizedBox(
                                      height: 200,
                                      child: Text('showModalBottomSheet'),
                                    );
                                  });
                            },
                            icon: const Icon(Icons.arrow_drop_down_rounded),
                            underline: const SizedBox(),
                            alignment: Alignment.bottomCenter,
                            items: <String>[
                              'Delivery',
                              'Retira',
                              'Vaga'
                            ].map<DropdownMenuItem<String>>((String myValue) {
                              return DropdownMenuItem<String>(
                                value: myValue,
                                child: Text(
                                  myValue,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      height: 3,
                                      color: Colors.red),
                                ),
                              );
                            }).toList(),
                            value: escolherEntrega,
                            onChanged: (valueIn) {
                              setState(() {
                                escolherEntrega = valueIn;
                              });
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                iconSize: 40,
                color: const Color(0xFFC71B04),
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          body: const Home(),
        ),
      );
}

void escolheSetorDeEntrega() {
  if (escolherEntrega == 'Delivery') {
    IconButton(
      alignment: Alignment.topLeft,
      iconSize: 40,
      color: const Color(0xFFC71B04),
      onPressed: () {},
      icon: const Icon(Icons.delivery_dining),
    );
  } else if (escolherEntrega == 'Retira') {
    IconButton(
      alignment: Alignment.topLeft,
      iconSize: 40,
      color: const Color(0xFFC71B04),
      onPressed: () {},
      icon: const Icon(Icons.cabin),
    );
  }
  if (escolherEntrega == 'Vaga') {
    IconButton(
      alignment: Alignment.topLeft,
      iconSize: 40,
      color: const Color(0xFFC71B04),
      onPressed: () {},
      icon: const Icon(Icons.drive_eta),
    );
  }
}

// void escolheSetorDeEntrega() {
//   String retorno;
//   if (labelEntrega[0]) {
//     retorno = 'delivery';
//   } else if (labelEntrega[1]) {
//     retorno = 'retira';
//   } else if (labelEntrega[2]) {
//     retorno = 'vaga';
//   }
// }



