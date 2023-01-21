import 'package:classflutter9/theme.dart';
import 'package:flutter/material.dart';

class MysearchDelegate extends SearchDelegate{
  List <String> lists=["+01819726531", "+01895436531", "+01895436531", "+01881569040", "+01819726531", "+01895436531", "+01627413327", "+01881569040",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(onPressed: (){
        query='';
      }
          , icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading

    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));

  }
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }
  @override
  Widget buildSuggestions(BuildContext context) {
   var data=query.isEmpty? lists: lists.where((element) => element.startsWith(query)).toList();
     return
      data.isNotEmpty
          ?
      ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: All_colar.color2.withOpacity(0.3),
          title: Text(data[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        ),
      );
    },):Center(child: Text("There is no data"),);
  }

}