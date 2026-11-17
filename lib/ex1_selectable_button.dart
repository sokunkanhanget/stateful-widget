// EX 1 – The selectable button (handout page: EX 1). Start code from the handout.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectButton(),
              SizedBox(height: 10,),
              SelectButton(),
              SizedBox(height: 10,),
              SelectButton(),
              SizedBox(height: 10,),
            ],

          )
        ),
      ),
    ));

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() {
    return _SelectButtonState();

  }
}

class _SelectButtonState extends State<SelectButton> {
  bool isSelected = false;

  void isSelectedButton() {
    setState(() {
      isSelected = !isSelected;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return ( SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: isSelectedButton, 
        child: Text(isSelected ? "Selected" : "Not Selected",
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],

        ),
      ),

    )

    );
  }
}
  
