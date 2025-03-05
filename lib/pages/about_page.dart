import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/data');
            },
            child: Text('Add Entry from Data Page'),
          ),
          Expanded(
            child: dataProvider.entries.isEmpty
                ? const Center(child: Text('No entries added yet.'))
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        // border: TableBorder.all(),
                        columns: const [
                          DataColumn(label: Text('Name', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Reg No', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Actions', style: TextStyle(fontWeight: FontWeight.bold))),
                        ],
                        rows: dataProvider.entries.asMap().entries.map(
                          (entry) {
                            final index = entry.key;
                            final value = entry.value;
                            return DataRow(
                              cells: [
                                DataCell(Text(value['name'] ?? '')),
                                DataCell(Text(value['regno'] ?? '')),
                                DataCell(
                                  IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.red),
                                    onPressed: () => dataProvider.deleteEntry(index),
                                  ),
                                ),
                              ],
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
