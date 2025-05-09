import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessage() {
    final message = <String>[
      'Espere por favor',
      'Por favor espere',
      'Estamos trabajando para usted',
    ];
    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return message[step];
    }).take(message.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere por favor'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            color: Colors.red,
            strokeWidth: 2,
          ),
          SizedBox(height: 10),
          StreamBuilder(
              stream: getLoadingMessage(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Text('Cargando...');
                return Text(snapshot.data!);
              }),
        ],
      ),
    );
  }
}
