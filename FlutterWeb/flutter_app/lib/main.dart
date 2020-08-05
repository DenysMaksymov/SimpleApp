// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/components/choose_the_rate.dart';

import 'components/cart.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RangeValues _rangeSliderDiscreteValues = const RangeValues(30, 100);

  final searchController = TextEditingController();
  final rateToController = TextEditingController();
  final rateFromController = TextEditingController();

  var _area = [
    "All area",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  var _areaSelectedValue;
  var _case = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  var _caseSelectedValue;
  var _state = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  var _stateSelectedValue;
  var maxValSlider = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffE8ECEE),
        appBar: AppBar        (
          title: Container(
              child: Image.asset('assets/Logo.png',
                height: 30,
                width: 130
              )
          ),
          backgroundColor:const Color(0xff0D2834),
          actions: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 40,
                    child:
                    FlatButton(
                      onPressed: (){},
                        child: Image.asset('assets/Vector.png',height: 20,)
                    )
                  ),
                ),
                Positioned(
                  left: 47,
                    top: 15,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: const Color(0xff21CA7C),
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                  child: Center(child: Text('1',style: TextStyle(fontSize: 8),)),
                 )
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                child: Container(
                  height: 54,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xffB6BFC2))
                      ),
                      hintText: 'Search for cases',
                      suffixIcon: FlatButton(
                        onPressed: (){
                          print(searchController.text);
                        },
                          child: Icon(Icons.search,color: Color(0xffC8A574),)),
                      ),
                  ),
                ),
              ),
              Container(
                 padding: EdgeInsets.all(20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(bottom: 8),
                       child: Text(
                         'Filters',
                         style: TextStyle(
                         fontSize: 24, fontWeight: FontWeight.w600,
                        ),
                       ),
                     ),
                     Container(
                       child: FormField<String>(
                         builder: (FormFieldState<String> state) {
                           return Column(
                             children: <Widget>[
                               Container(
                                 height: 56,
                                 child: InputDecorator(
                                   decoration: InputDecoration(
                                     labelText: 'Area of practice',
                                       labelStyle: TextStyle(
                                         fontSize: 14,
                                         color: Color(0xff0D2834)
                                       ),
                                       errorStyle: TextStyle(color: Colors.redAccent, fontSize: 14.0),
                                       hintStyle: TextStyle(
                                           color: Color(0xffB6BFC2),
                                           fontWeight: FontWeight.w600,
                                       ),
                                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                                       ),
                                   isEmpty: _areaSelectedValue == null,
                                   child: DropdownButtonHideUnderline(
                                     child: DropdownButton<String>(
                                       value: _areaSelectedValue,
                                       isDense: true,
                                       onChanged: (String newValue) {
                                         setState(() {
                                           _areaSelectedValue = newValue;
                                           state.didChange(newValue);
                                         });
                                       },
                                       items: _area.map((String value) {
                                         return DropdownMenuItem<String>(
                                           value: value,
                                           child: Text(value,style: TextStyle(fontSize: 14),),
                                         );
                                       }).toList(),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top:25.0),
                                 child: Container(
                                   height: 56,
                                   child: InputDecorator(
                                     decoration: InputDecoration(
                                         errorStyle: TextStyle(color: Colors.redAccent, fontSize: 14.0),
                                         hintText: 'Type of case',
                                         hintStyle: TextStyle(
                                             color: Colors.black,
                                           fontSize: 14
                                         ),
                                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                                         ),
                                     isEmpty: _caseSelectedValue == null,
                                     child: DropdownButtonHideUnderline(
                                       child: DropdownButton<String>(
                                         value: _caseSelectedValue,
                                         isDense: true,
                                         onChanged: (String newValue) {
                                           setState(() {
                                             _caseSelectedValue = newValue;
                                             state.didChange(newValue);
                                           });
                                         },
                                         items: _case.map((String value) {
                                           return DropdownMenuItem<String>(
                                             value: value,
                                             child: Text(value,style: TextStyle(fontSize: 14),),
                                           );
                                         }).toList(),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top:25.0),
                                 child: Container(
                                   height:56,
                                   child: InputDecorator(
                                     decoration: InputDecoration(
                                         errorStyle: TextStyle(color: Colors.redAccent, fontSize: 14.0),
                                         hintText: 'State',
                                         hintStyle: TextStyle(
                                             color: Colors.black,
                                           fontSize: 14
                                         ),
                                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                                         ),
                                     isEmpty: _stateSelectedValue == null,
                                     child: DropdownButtonHideUnderline(
                                       child: DropdownButton<String>(
                                         value: _stateSelectedValue,
                                         isDense: true,
                                         onChanged: (String newValue) {
                                           setState(() {
                                             _stateSelectedValue = newValue;
                                             state.didChange(newValue);
                                           });
                                         },
                                         items: _state.map((String value) {
                                           return DropdownMenuItem<String>(
                                             value: value,
                                             child: Text(value,style: TextStyle(fontSize: 14),),
                                           );
                                         }).toList(),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           );
                         },
                       ),
                     ),
                   ],
                 ),
               ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Color(0xffB6BFC2),
                            width: 2
                        )
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 18,bottom: 18),
                        child: Text(
                          'Choose the rate',
                          style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Row(
                        children: <Widget>[
                         Flexible(
                           flex:1,
                           child: Container(
                             child: TextField(
                             keyboardType: TextInputType.number,
                             controller: rateToController,
                               onSubmitted: (values){
                               if(int.parse(values) < _rangeSliderDiscreteValues.end){
                                 setState(() {
                                   rateToController.text = values;
                                   _rangeSliderDiscreteValues = RangeValues(double.parse(rateToController.text), double.parse(rateFromController.text));
                                 });
                               }else{

                               }

                               },
                               decoration: InputDecoration(
                                 border:OutlineInputBorder(
                                     borderSide: new BorderSide(color: Color(0xffB6BFC2))
                                 ),
                                 labelText: 'To',
                                 hintText: _rangeSliderDiscreteValues.start.toInt().toString(),
                                 suffixIcon: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('%',
                                       style: TextStyle(
                                     color: Color(0xffB6BFC2),
                                         fontSize: 24
                                    )
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.all(10),
                           child: Center(
                             child: Container(
                               width: 20,
                               height: 2,
                               color: Color(0xffB6BFC2),
                             ),
                           )
                         ),
                         Flexible(
                           flex: 1,
                           child: Container(
                             child: TextField(
                             keyboardType: TextInputType.number,
                             controller: rateFromController,
                               onSubmitted: (values){
                                 if(int.parse(values) >= _rangeSliderDiscreteValues.start &&
                                     int.parse(values) <= _rangeSliderDiscreteValues.end){
                                   setState(() {
                                     rateFromController.text = values;
                                     _rangeSliderDiscreteValues = RangeValues(double.parse(rateToController.text), double.parse(rateFromController.text));
                                   });
                                 }else{
                                   setState(() {
                                     rateFromController.text = maxValSlider.toString();
                                     _rangeSliderDiscreteValues = RangeValues(double.parse(rateToController.text), double.parse(maxValSlider.toString()));
                                   });
                                 }

                               },
                               decoration: InputDecoration(
                                 border:OutlineInputBorder(
                                     borderSide: new BorderSide(color: Color(0xffB6BFC2)
                                     )
                                 ),
                                 labelText: 'From',
                                 hintText: _rangeSliderDiscreteValues.end.toInt().toString(),
                                hintStyle: TextStyle(fontSize: 10),
                                 suffixIcon: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('%',
                                       style: TextStyle(
                                           color: Color(0xffB6BFC2),
                                           fontSize: 16
                                       )
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 3,
                      ),
                      child: RangeSlider(
                        values: _rangeSliderDiscreteValues,
                        min: 0,
                        max: maxValSlider.ceilToDouble(),
                        divisions: 100,
                        activeColor: Color(0xffC8A574),
                        inactiveColor: Color(0xffB6BFC2),
                        onChanged: (values) {
                          if(values.end >= 0 && values.end <= maxValSlider){
                            setState(() {
                              _rangeSliderDiscreteValues = values;
                              rateToController.text = values.start.toInt().toString();
                              rateFromController.text = values.end.toInt().toString();
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff0D2834),
                    borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child: FlatButton(
                    onPressed: (){
                      print('object');
                    },
                    child: Center(
                      child: Text('Apply Filters',style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16
                      ),),
                    ),
                  ),
                ),
              ),
              Cart(true),
              Cart(false),
            ],
          ),
        ),
        floatingActionButton:
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                  color: Color(0xff21CA7C),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 10), // changes position of shadow
            ),
                ]

              ),
              child: FlatButton(
              shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(
                   Radius.circular(50),
                 ),
              ),
                child: Icon(Icons.add,color: Colors.white,),
                  onPressed: (){},
              ),
            ),
        bottomNavigationBar:
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            height: 56,
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                    flex:1,
                    child: Container(
                      child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.search),
                            Text('Search',style: TextStyle(fontSize: 12),),

                          ],
                        ),
                      ),
                    )),
                Flexible(
                    flex:1,
                    child: Container(
                      child: FlatButton(
                        onPressed: (){},
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.add_circle_outline),
                            Text('Refer',style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      ),
                    )),
                Flexible(
                    flex:1,
                    child: Container(
                      child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            Stack(children: <Widget>[
                              Container(
                                width: 40,
                                  child: Icon(Icons.mail_outline)),
                              Positioned(
                                  right: 1,
                                  top: 1,
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff21CA7C),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    child: Center(
                                        child: Text('12',style: TextStyle(fontSize: 8,color: Colors.white),)
                                    ),
                                  )
                              )
                            ],),
                            Text('Massage',style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      ),
                    )),
                Flexible(
                    flex:1,
                    child: Container(
                      child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.person_outline),
                            Text('Profile',style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}