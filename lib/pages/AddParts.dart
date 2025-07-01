import 'package:flutter/material.dart';

class AddParts extends StatefulWidget {
  const AddParts({super.key});

  @override
  State<AddParts> createState() => _AddPartsState();
}

class _AddPartsState extends State<AddParts> {
  final Color navyBlue = const Color(0xFF001F54);

final _formKey = GlobalKey<FormState>();
String _Category = '';
String _Item = '';
double _Price = 0.0;
int _Quantity = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevents resizing when keyboard appears
      appBar: AppBar(
        backgroundColor: navyBlue,
        title: const Text('Add Parts', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: navyBlue, // Set the background color to navy blue
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Category',
                      hintText: 'Enter category',
                      labelStyle: TextStyle(color: navyBlue),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: navyBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Please enter a category';
                      }
                      return null;
                      

                    }
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Part Name',
                      hintText: 'Enter part name',
                      labelStyle: TextStyle(color: navyBlue),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: navyBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a part name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Price',
                      hintText: 'Enter price',
                      labelStyle: TextStyle(color: navyBlue),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: navyBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a price';
                      }
                      final price = double.tryParse(value);
                      if (price == null || price <= 0) {
                        return 'Please enter a valid price';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Quantity',
                      hintText: 'Enter quantity',
                      labelStyle: TextStyle(color: navyBlue),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: navyBlue, width: 2.0),
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a quantity';
                      }
                      final quantity = int.tryParse(value);
                      if (quantity == null || quantity <= 0) {
                        return 'Please enter a valid quantity';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF000080),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.0),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          
                          _formKey.currentState!.save();
                          print('Form is submitted');
                        }
                      },
                      child:  Text('Add Part', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}