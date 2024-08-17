import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnlimitedList(),
    );
  }
}

class UnlimitedList extends StatefulWidget {
  const UnlimitedList({super.key});

  @override
  UnlimitedListState createState() => UnlimitedListState();
}

class UnlimitedListState extends State<UnlimitedList> {
  final List<int> _items = List.generate(20, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scroll Grid'),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            _loadMore();
          }
          return false;
        },
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color:(index %2==0)? Colors.teal:Colors.brown,
              child: Text(
                'Item ${_items[index]}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }

  void _loadMore() {
    setState(
      () {
        _items.addAll(List.generate(20, (index) => _items.length + index));
      },
    );
  }
}
