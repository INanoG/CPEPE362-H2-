import 'package:auto_size_text/auto_size_text.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:booked_webapp_v1/widgets/menu/data/prof_edit.dart';
import 'package:booked_webapp_v1/widgets/menu/model/profile_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class ProfileViewDesktop extends StatefulWidget {
  ProfileViewDesktop({Key? key}) : super(key: key);

  @override
  State<ProfileViewDesktop> createState() => _ProfileViewDesktopState();
}

class _ProfileViewDesktopState extends State<ProfileViewDesktop> {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();

  var currentUser = FirebaseAuth.instance.currentUser;
  String userID = FirebaseAuth.instance.currentUser!.uid;

  Future<DocumentSnapshot> fetchCurrentUser(String uuid) async {
    return await FirebaseFirestore.instance.collection('users').doc(uuid).get();
  }

  final TextEditingController _textFieldController = TextEditingController();
  var valueText = '';
  var codeDialog = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: FutureBuilder<DocumentSnapshot>(
            future: FirebaseFirestore.instance
                .collection('users')
                .doc(userID)
                .get(),
            //added AsyncSnapshot<DocumentSnapshot>
            builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong.');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('Loading');
              }

              final data = snapshot.requireData;

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// ------------------------ 1st Column ---------------------------////
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 190,
                        width: 145,
                        child: Image.asset('assets/sample_prof.png'),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          '${data['userName']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontSize: 20,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        height: 25,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                      ),
                      Container(
                        child: Text(
                          '@${data['userName']}.booked',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontSize: 14,
                            color: Color.fromARGB(164, 68, 53, 40),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        height: 30,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Followers: ',
                            style: TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 68, 53, 40),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '${data['followers']}',
                            style: const TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 124, 86, 52),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Following: ',
                            style: TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 68, 53, 40),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '${(data['following'])}',
                            style: const TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 124, 86, 52),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            'About Me',
                            style: TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 68, 53, 40),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          PopupMenuButton<Profile_Item>(
                              onSelected: (item) => onSelected(context, item),
                              child: Container(
                                height: 25,
                                width: 25,
                                child: const Icon(
                                  Icons.settings,
                                  color: Color.fromARGB(255, 61, 42, 14),
                                ),
                              ),
                              itemBuilder: (context) => [
                                    ...ProfileItems.itemsFirst
                                        .map(buildItem)
                                        .toList()
                                  ]),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 132,
                        width: 210,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: AutoSizeText.rich(
                          TextSpan(text: '${(data['about_me'])}'),
                          style: const TextStyle(
                            height: 1.2,
                            fontSize: 17,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.center,
                          minFontSize: 10,
                          stepGranularity: 1,
                          maxLines: 28,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),

                  /// ------------------------ 2nd Column ---------------------------////
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Reading Status',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 68, 53, 40),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 150,
                            child: Text(
                              'Currently Reading',
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 68, 53, 40),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            '${(data['current_read'])}',
                            style: const TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 124, 86, 52),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 150,
                            child: Text(
                              'Finished Reading',
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 68, 53, 40),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            '${(data['finished_read'])}',
                            style: const TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 124, 86, 52),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 150,
                            child: Text(
                              'To Read',
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 68, 53, 40),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            '${(data['to_read'])}',
                            style: const TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 124, 86, 52),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 150,
                            child: Text(
                              'Score Average: ',
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 68, 53, 40),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            '7.34',
                            style: TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 124, 86, 52),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        width: 500,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),

                  /// ------------------------ 3rd Column ---------------------------////
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Reading',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 68, 53, 40),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                                'assets/dashboard_books/booked_new_3.jpg'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                                'assets/dashboard_books/booked_new_4.jpg'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                                'assets/dashboard_books/booked_new_0.jpg'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Completed',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 68, 53, 40),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                                'assets/dashboard_books/booked_best_6.jpg'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                                'assets/dashboard_books/booked_best_7.jpg'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  PopupMenuItem<Profile_Item> buildItem(Profile_Item item) => PopupMenuItem(
        value: item,
        child: Row(
          children: [
            Icon(item.icon,
                color: const Color.fromARGB(255, 92, 71, 43), size: 20),
            const SizedBox(width: 12),
            Text(item.text),
          ],
        ),
      );

  void onSelected(BuildContext context, Profile_Item item) {
    switch (item) {
      case ProfileItems.itemBio:
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('About Me'),
                content: TextField(
                  onChanged: (value) {
                    setState(() {
                      valueText = value;
                    });
                  },
                  controller: _textFieldController,
                  decoration: const InputDecoration(hintText: "Enter Text"),
                ),
                actions: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(80, 25),
                      primary: const Color.fromARGB(255, 247, 227, 208),
                      elevation: 2,
                      onPrimary: const Color.fromARGB(255, 59, 41, 25),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      codeDialog = valueText;
                      final docUser = FirebaseFirestore.instance
                          .collection('users')
                          .doc(userID);

                      docUser.update({
                        'about_me': codeDialog,
                      });

                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        'Done',
                        style: TextStyle(
                            color: Color.fromARGB(255, 59, 41, 25),
                            fontSize: 12,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                ],
              );
            });
        break;
      case ProfileItems.itemPhoto:
        break;
      default:
    }
  }
}
