import 'package:flutter/material.dart';
import 'package:spallamobile/src/financeiro_widget/components/financeiro_content.dart';
import '../../application/components/my_appbar_widget.dart';

class FinanceiroScreen extends StatefulWidget {
  const FinanceiroScreen({super.key});

  @override
  State<FinanceiroScreen> createState() => _FinanceiroScreenState();
}

class _FinanceiroScreenState extends State<FinanceiroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(
        icon: const Icon(Icons.arrow_back_outlined),
        title: 'FINANCEIRO',
        onPressed: () {
          Navigator.pop(context);
        },
        actions: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Image.asset(
            'assets/spalla-financeiro-01-48x48.png',
            width: 40,
          ),
        ),
      ),
      body: const FinanceiroContent(),
    );
  }
}
