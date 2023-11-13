import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Pembayaran Sukses'),
            content: const Text('Selamat Pembayaran Berhasil dilakukan'),
            actions: [
              TextButton(
                onPressed: () {
                  context.push(NamedRoutes.dashboard);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
