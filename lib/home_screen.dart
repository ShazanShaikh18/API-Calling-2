// import 'dart:convert';   // Model With Plugin

// import 'package:api_call_2/Models/posts_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<PostsModel> postList = [];

//   Future<List<PostsModel>> getPostApi() async {
//     var response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//     var data = jsonDecode(response.body.toString());

//     if (response.statusCode == 200) {
//       postList.clear();
//       for (Map i in data) {
//         postList.add(PostsModel.fromJson(i));
//       }
//       return postList;
//     } else {
//       return postList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API Application'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//               future: getPostApi(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 } else {
//                   return ListView.builder(
//                     itemCount: postList.length,
//                     itemBuilder: (context, index) {
//                       return Card(
//                         elevation: 5,
//                         shadowColor: Colors.cyan.shade300,
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Album ID:',
//                                 style: TextStyle(
//                                     fontSize: 15, fontWeight: FontWeight.bold),
//                               ),
//                               Text(postList[index].albumId.toString()),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 'ID:',
//                                 style: TextStyle(
//                                     fontSize: 15, fontWeight: FontWeight.bold),
//                               ),
//                               Text(postList[index].id.toString()),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 'Title:',
//                                 style: TextStyle(
//                                     fontSize: 15, fontWeight: FontWeight.bold),
//                               ),
//                               Text(postList[index].title.toString()),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 'URL:',
//                                 style: TextStyle(
//                                     fontSize: 15, fontWeight: FontWeight.bold),
//                               ),
//                               Text(postList[index].url.toString()),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 'Thumbnail URL:',
//                                 style: TextStyle(
//                                     fontSize: 15, fontWeight: FontWeight.bold),
//                               ),
//                               Text(postList[index].thumbnailUrl.toString()),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'dart:convert'; // Model Without Plugin Help, Created By Myself.

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<Photos> photoList = [];

//   Future<List<Photos>> getPhotos() async {
//     final response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//     var data = jsonDecode(response.body.toString());

//     if (response.statusCode == 200) {
//       for (Map i in data) {
//         Photos photos = Photos(title: i['title'], url: i['url'], id: i['id']);
//         photoList.add(photos);
//       }
//       return photoList;
//     } else {
//       return photoList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("API Calling"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//               future: getPhotos(),
//               builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 } else {
//                   return ListView.builder(
//                     itemCount: photoList.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         leading: CircleAvatar(
//                             backgroundImage: NetworkImage(
//                                 snapshot.data![index].url.toString())),
//                         subtitle: Text(snapshot.data![index].title.toString()),
//                         title: Text(
//                             'Notes ID: ' + snapshot.data![index].id.toString()),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Photos {
//   String title, url;
//   int id;

//   Photos({required this.title, required this.url, required this.id});
// }

/*
import 'dart:convert';

import 'package:api_call_2/Models/posts_model1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostsModel> getList = [];

  Future<List<PostsModel>> getProductApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map i in data) {
        getList.add(PostsModel.fromJson(i));
      }
      return getList;
    } else {
      return getList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Call 2'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getProductApi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    itemCount: getList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.all(8),
                        color: Color.fromARGB(255, 213, 238, 241),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Album ID:',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(getList[index].albumId.toString()),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'ID:',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(getList[index].id.toString()),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Title:',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(getList[index].title.toString()),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'URL:',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(getList[index].url.toString()),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Thumbnail URL:',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(getList[index].thumbnailUrl.toString())
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

*/

import 'dart:convert';

import 'package:api_call_2/Models/posts_model0.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostsModel> getList = [];

  Future<List<PostsModel>> getProduct() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map i in data) {
        getList.add(PostsModel.fromJson(i));
      }
      return getList;
    } else {
      return getList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Calling'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getProduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: getList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 4.0,
                        color: Colors.cyan.shade100,
                        margin: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(getList[index].name.toString()),
                            Text(getList[index].id.toString()),
                            Text(getList[index].username.toString()),
                            Text(getList[index].email.toString()),
                            Text(getList[index].address!.street.toString()),
                            Text(getList[index].address!.city.toString()),
                            Text(getList[index].address!.suite.toString()),
                            Text(getList[index].address!.zipcode.toString()),
                            Text(getList[index].address!.geo!.lat.toString()),
                            Text(getList[index].address!.geo!.lng.toString()),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
