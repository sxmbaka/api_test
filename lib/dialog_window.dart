import 'dart:convert';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:api_test/bison_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DialogWindow extends StatefulWidget {
  const DialogWindow({super.key});

  @override
  State<DialogWindow> createState() => _DialogWindowState();
}

class _DialogWindowState extends State<DialogWindow> {
  final TextEditingController _textEditingController = TextEditingController();
  String _input = '', _output = '';

  String generateOutput(String value) {
    return value.toUpperCase();
  }

  Future<void> generateResponse() async {
    _input = _textEditingController.text;
    var jsonPrompt = {
      'prompt': {
        'text': _input,
      }
    };
    try {
      final response = await http.post(
        Uri.parse(
            'https://generativelanguage.googleapis.com/v1beta3/models/text-bison-001:generateText?key=AIzaSyCwWusObYNPF33e01B4U7KlLqhUgxMHuiw'),
        body: jsonEncode(jsonPrompt),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        BisonApiController jsonResponse =
            BisonApiController.fromJson(responseBody);
        _output = jsonResponse.candidates![0].output.toString();
      }
      if (response.statusCode == 400 || response.statusCode == 400) {
        _output = 'Something went wrong!';
      }
    } catch (e) {
      debugPrint(e.toString());
      _output = 'Unsafe Prompt!';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            OutputWindow(outputText: _output),
            SizedBox(
              height: 100,
              child: TextField(
                controller: _textEditingController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: generateResponse,
                  child: const Text('Generate Response'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Reset'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OutputWindow extends StatelessWidget {
  final String outputText;

  const OutputWindow({
    required this.outputText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: Markdown(
          data: outputText,
        ));
  }
}
