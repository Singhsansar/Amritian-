import 'package:flutter/material.dart';


class Dropdownhostel extends StatefulWidget {
  const Dropdownhostel({
    Key? key,
  }) : super(key: key);
  

  @override
  State <Dropdownhostel> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Dropdownhostel> {
  
   var dropdownValue = 'Enter your Hostel Name';   
     var items = [ 
      'Enter your Hostel Name',  
    'Vaikundam',
    'Parasara',
    'Pahalada',
  ];
   
  
  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField(
      decoration:  InputDecoration(
         labelText: 'Enter your Hostelname',
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