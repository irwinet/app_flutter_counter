import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  final textStyle = new TextStyle(fontSize: 25);
  final _cont=0;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        //child: Text('Number of taps: $_cont'),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number of taps: ',
              style: textStyle,
            ),
            Text(
              '$_cont',
              style: textStyle,
            )
          ],
        )
      ),
      //backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',        
        onPressed: () => {
          print('Hi World')
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}