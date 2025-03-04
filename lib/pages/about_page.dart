import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final List<Map<String, String>> _entries = [];

  void _addEntry(String name, String regno) {
    setState(() {
      _entries.add({'name': name, 'regno': regno});
    });
  }

  void _deleteEntry(int index) {
    setState(() {
      _entries.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final regnoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: regnoController,
            decoration: const InputDecoration(labelText: 'RegNo'),
          ),
          ElevatedButton(
            onPressed: () {
              _addEntry(nameController.text, regnoController.text);
              nameController.clear();
              regnoController.clear();
            },
            child: const Text('Add Entry'),
          ),
          Expanded(
            child:
                _entries.isEmpty
                    ? const Center(child: Text('No entries added yet.'))
                    : SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('RegNo')),
                          DataColumn(label: Text('Actions')),
                        ],
                        rows:
                            _entries
                                .asMap()
                                .entries
                                .map(
                                  (entry) => DataRow(
                                    cells: [
                                      DataCell(Text(entry.value['name'] ?? '')),
                                      DataCell(
                                        Text(entry.value['regno'] ?? ''),
                                      ),
                                      DataCell(
                                        IconButton(
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                          onPressed:
                                              () => _deleteEntry(entry.key),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                      ),
                    ),
          ),
        ],
      ),
    );
  }
}
