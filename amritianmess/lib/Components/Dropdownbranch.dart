import 'package:flutter/material.dart';


class Dropdownbranch extends StatefulWidget {
  const Dropdownbranch({
    Key? key,
  }) : super(key: key);
  

  @override
  State <Dropdownbranch> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Dropdownbranch> {
  
   var dropdownValue = 'Select Your Branch';   
     var items = [   
    'Select Your Branch',
    'CSE',
    'ELC',
  ];
   
  
  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField(
      decoration:  InputDecoration(
         labelText: 'Enter your Branch',
         border:  OutlineInputBorder(
         borderRadius: BorderRadius.circular(10),
        ),
         
        fillColor:  Colors.grey.shade100,
        filled: true
        
      ),
    
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
     items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
    );
  }

}