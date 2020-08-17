import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>{
  final _textStyle = new TextStyle(fontSize: 25);
  int _cont=0;
  
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
              style: _textStyle,
            ),
            Text(
              '$_cont',
              style: _textStyle,
            )
          ],
        )
      ),
      /*backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',        
        onPressed: () {
          //print('Hi World');          
          setState(() {
            _cont++;
          });
        },
        child: const Icon(Icons.add),
      ),*/
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero),),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _subtraction, child: Icon(Icons.remove),),
        SizedBox(width: 5.0,),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add),),
      ],
    );
  }

  void _add(){
    setState(() => _cont++);
  }

  void _subtraction()
  {
    setState(()=>_cont--);
  }

  void _reset(){
    setState(()=>_cont=0);
  }

}