import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_list/component/listTask.dart';
import 'package:to_do_list/screen/add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  static String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MyIconCircular(
                    icon: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 55,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TaskList(),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) =>
                  Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SingleChildScrollView(child: AddTaskScreen())));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      children: <Widget>[
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
        CheckboxListTile(
          title: Text(
            'tada',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          value: true,
          activeColor: Colors.black,
          checkColor: Colors.lightBlueAccent,
          dense: false,
        ),
      ],
    );
  }
}

class MyIconCircular extends StatelessWidget {
  final Icon icon;

  MyIconCircular({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: icon,
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }
}
