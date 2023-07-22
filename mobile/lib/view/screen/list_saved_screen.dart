import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powersense/view/component/app_bar.dart';
import 'package:powersense/view/component/drawer.dart';
import 'package:powersense/view/provider/saved_provider.dart';
import 'package:powersense/view/screen/detail_screen.dart';

class ListSavedScreen extends ConsumerStatefulWidget {
  const ListSavedScreen({super.key});

  @override
  ConsumerState<ListSavedScreen> createState() => _ListSavedScreenState();
}

class _ListSavedScreenState extends ConsumerState<ListSavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PowerAppBar(isColored: false, isElevated: true),
      drawer: const PowerDrawer(indexSelected: 2),
      body: ref.watch(savedHistoryProvider).when(
        data: (datas) {
          if (datas.isEmpty) {
            return const Center(
              child: Text('Tidak ada apapun di sini'),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: datas.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(datas[index].name),
                subtitle: Text('Diprediksi pada ${datas[index].time}'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (_) => DetailScreen(data: datas[index])))
                      .then(
                    (value) {
                      final _ = ref.refresh(savedHistoryProvider);
                    },
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text("Oops! ${error.toString()}"));
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
