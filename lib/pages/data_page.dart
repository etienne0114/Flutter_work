import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController regnoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Entry')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: regnoController,
              decoration: InputDecoration(labelText: 'Reg No'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    regnoController.text.isNotEmpty) {
                  Provider.of<DataProvider>(context, listen: false).addEntry(
                      nameController.text, regnoController.text);
                  nameController.clear();
                  regnoController.clear();
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
