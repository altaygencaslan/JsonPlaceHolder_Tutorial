import 'package:flutter/material.dart';
import 'package:fluttertutorial_mockapi_hivedb/api/jsonpalceholder.dart';
import 'package:fluttertutorial_mockapi_hivedb/model/postmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: FutureBuilder(
            future: JsonPlaceHolder.getPosts(),
            builder: (context, AsyncSnapshot<List<PostModel>> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Stack(
                        children: [
                          Container(
                            child: ListTile(
                              key: Key(index.toString()),
                              title: Text(snapshot.data[index].title),
                              subtitle: Text(snapshot.data[index].body),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Text("ID : ${snapshot.data[index].id}"),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white54,
                              ),
                            ),
                            right: 5,
                            top: 5,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
