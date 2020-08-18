import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w700,
);

const kNoteCountTextStyle = TextStyle(
  color: Color(0xffC9C7D5),
  fontSize: 16.0,
);

const kSearchDecoration = InputDecoration(
  filled: true,
  isDense: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(35),
    ),
    borderSide: BorderSide(
      style: BorderStyle.none,
      width: 0,
    ),
  ),
  hintText: 'Search your notes',
  suffixIcon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
);

class HomeScreen extends StatelessWidget {
  static const routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Text(
                    'Notes',
                    style: kTitleTextStyle,
                  ),
                ),
                Text(
                  '0 notes',
                  style: kNoteCountTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: TextField(
                    decoration: kSearchDecoration,
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xff3369FF),
        ),
      ),
    );
  }
}
