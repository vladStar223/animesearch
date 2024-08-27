




import 'package:animesearch/ui/widgets/list_result.dart';
import 'package:flutter/material.dart';

import '../widgets/choose_panel.dart';
import '../widgets/search.dart';
import '../widgets/user_card.dart';

class SearchPanel extends StatelessWidget{
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Search(),
        ),
        const ChoosePanel(),
        const UserCard(),
        Expanded(child: ListResult( child: UserCard())),
      ],
    );
    throw UnimplementedError();
  }
}