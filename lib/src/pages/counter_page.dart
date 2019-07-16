import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);

  int _count = 0;

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter - V1"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'taps counter:',
                style: _textStyle,
              ),
              Text(
                '$_count',
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButton: _createButtoms());
  }

  Widget _createButtoms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        _zeroButtom(),
        Expanded(child: SizedBox()),
        _removeButtom(),
        SizedBox(width: 5.0),
        _addButtom(),
      ],
    );
  }

  Widget _addButtom() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: _add,
    );
  }

  Widget _removeButtom() {
    return FloatingActionButton(
      child: Icon(Icons.remove),
      onPressed: _remove,
    );
  }

  Widget _zeroButtom() {
    return FloatingActionButton(
      child: Icon(Icons.exposure_zero),
      onPressed: _reset,
    );
  }

  void _add() {
    setState(() {
      _count++;
    });
  }

  void _remove() {
    setState(() {
      if (_count > 0) _count--;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }
}
