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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Gallery'),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              final cats = snapshot.data;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: cats?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final cat = cats?[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        if (cat != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailCatScreen(cat: cat),
                            ),
                          );
                        }
                      },
                      child: Card(
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
                                    cat?.url ?? '',
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
                                        'Image ID: ${cat?.id}',
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
