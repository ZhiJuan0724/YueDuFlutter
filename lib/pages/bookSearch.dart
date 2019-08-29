import 'package:YueDuFlutter/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';

class BookSearchPage extends StatefulWidget {
  static final String sName = "/searchPage";

  @override
  State<StatefulWidget> createState() => _BookSearchPage();
}

class _BookSearchPage extends State<BookSearchPage> {
  List list = [];
  bool hadEnter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeSearchBar(
        placeholder: "搜索书名、作者",
        enabled: true,
        onSubmitted: (val) {
          if (val.length > 0) {
            this.setState(() {
              this.list.add("1");
              this.hadEnter = true;
            });
          }
        },
        onChanged: (val) {
          this.setState(() {
            this.hadEnter = false;
          });
        },
      ),
      body: ListView.builder(
        itemBuilder: (context, idx) =>
            list.length > 0 ? new Text("data") : null,
        itemCount: list.length,
      ),
    );
  }
}
