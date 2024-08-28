import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:animesearch/ui/widgets/list_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/block/search/search_bloc.dart';
import '../widgets/choose_panel.dart';
import '../widgets/search.dart';
import '../widgets/user_card.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Search(),
        ),
        ChoosePanel(),
      ],
    );
    throw UnimplementedError();
  }
}