import 'package:flutter/material.dart';
import 'package:flutter_web_request_http_dio_get/provider/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: Provider.of<HomeProvider>(context, listen: false)
                  .numberInputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                Provider.of<HomeProvider>(context, listen: false)
                    .ontapNumberFact();
              },
              child: const Text("Press here to get fact"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(child: Text(Provider.of<HomeProvider>(context).text)),
        ],
      ),
    );
  }
}
