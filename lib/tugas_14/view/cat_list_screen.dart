import 'package:belajar_flutter/tugas_14/api/get_cat.dart';
import 'package:belajar_flutter/tugas_14/models/cat_model.dart';
import 'package:belajar_flutter/tugas_14/view/detail_cat_screen.dart';
import 'package:flutter/material.dart';

class CatListScreen extends StatefulWidget {
  const CatListScreen({super.key});

  @override
  State<CatListScreen> createState() => _CatListScreenState();
}

class _CatListScreenState extends State<CatListScreen> {
  late Future<List<CatModel>> _future;
  String _selectedFormat = 'All';

  @override
  void initState() {
    super.initState();
    _future = getCats();
  }

  Future<void> _refresh() async {
    setState(() {
      _future = getCats();
    });
  }

  List<CatModel> _filterCats(List<CatModel> cats) {
    if (_selectedFormat == 'All') {
      return cats;
    }

    return cats.where((cat) {
      final url = cat.url.toLowerCase();
      switch (_selectedFormat) {
        case 'PNG':
          return url.endsWith('.png');
        case 'JPG':
          return url.endsWith('.jpg') || url.endsWith('.jpeg');
        case 'GIF':
          return url.endsWith('.gif');
        default:
          return true;
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text('Cat Gallery', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: Colors.black,
                style: TextStyle(color: Colors.white),
                value: _selectedFormat,
                items:
                    ['All', 'JPG', 'PNG', 'GIF']
                        .map(
                          (format) => DropdownMenuItem(
                            value: format,
                            child: Text(format),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedFormat = value;
                    });
                  }
                },
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              final filteredCats = _filterCats(snapshot.data!);
              // final cats = snapshot.data;
              if (filteredCats.isEmpty) {
                return Center(
                  child: Text('No result', style: TextStyle(fontSize: 20)),
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                itemCount: filteredCats.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.swipe_down, color: Colors.grey, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Swipe down to refresh',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                        ],
                      ),
                    );
                  }

                  final cat = filteredCats[index - 1];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailCatScreen(cat: cat),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    20,
                                  ),
                                  child: Image.network(
                                    cat.url,
                                    height: 300,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Center(
                                  heightFactor: 10,
                                  child: Container(
                                    height: 30,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x66000000),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Image ID: ${cat.id}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return Text('Error: ${snapshot.error}');
          },
        ),
      ),
    );
  }
}
