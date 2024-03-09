import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatefulWidget {
  const AutoCompleteWidget({super.key});

  @override
  State<AutoCompleteWidget> createState() => _AutoCompleteWidgetState();
}

class User {
  final String email;
  final String name;
  User({required this.email, required this.name});
  static getUserName(User selectedUser) {
    return selectedUser.name;
  }

  @override
  String toString() {
    return '$name, $email';
  }
}

class _AutoCompleteWidgetState extends State<AutoCompleteWidget> {
  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];
  static List<User> userList = <User>[
    User(email: "ab@gmail.com", name: "dasrath"),
    User(email: "abc1@gmail.com", name: "balram"),
    User(email: "ab4@gmail.com", name: "bibhuti"),
  ];

  static String _displayStringForOption(User option) => option.name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Autocomplete<User>(
          displayStringForOption:
              _displayStringForOption, // Is used for formate the options how you want to represent the options.
          // What is the use of optionsBuilder?
          // optionsBuilder is used to filter the options based on the user input.
          // It takes TextEditingValue as an argument and returns the list of options that match the user input.
          optionsBuilder: (TextEditingValue textEditingValue) {
            // what is the use of this line ? textEditingValue.text.length == ""
            // It is used to check if the user has not entered anything in the text field then it will return an empty list.
            if (textEditingValue.text.length == "") {
              return const Iterable<User>.empty();
            }
            return userList.where((User user) {
              return user
                  .toString()
                  .contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (User selection) {
            debugPrint('You just selected ${User.getUserName(selection)}');
          },
        ),
      ],
    );
  }
}
