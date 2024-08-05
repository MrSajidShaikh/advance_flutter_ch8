import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/home_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var photosProvider = Provider.of<PhotosProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0.1,
        leading: const Icon(Icons.account_circle_outlined),
        title: const Text('JSON Parsing'),
      ),
      body: ListView.builder(
        itemCount: photosProvider.photoList.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              photosProvider.photoList[index].thumbnailUrl,
            ),
          ),
          title: Text(photosProvider.photoList[index].title),
          subtitle: Text(photosProvider.photoList[index].id.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.javascript_sharp,
          size: 40,
        ),
      ),
    );
  }
}
