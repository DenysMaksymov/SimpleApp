import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget{
  bool bidders;
  Cart(this.bidders);
  @override
  Widget build(BuildContext context){
    return Container(
      color: Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('John Smith',style: TextStyle(
                  fontSize: 20,
                    fontWeight: FontWeight.w700
                ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5,right: 5),
                  height: 20,
                  width: 2,
                  color: Color(0xff0D2834),
                ),
                Text('Smith Law Firm',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 15,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffC8A574)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Bidders: 12',style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff0D2834)
                    ),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffC8A574)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Interviews: 5',style: TextStyle(
                      fontSize: 13,
                        color: Color(0xff0D2834)
                    ),),
                  ),
                ),

              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 5,bottom: 5),
              child: Text('Feugiat, occaecati arcu magna explicabo cons ectetur tempore quos fugiat dolorasperna tur varius, gravida quas, autem consectetur hic  faucibus nesciunt, arcu consectetu raute...',
              style: TextStyle(
                fontSize: 14,
                height: 1.6
              ),
              ),
            ),
            Wrap(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8A574)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Auto accident',style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff0D2834)
                    ),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffB6BFC2)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.location_on,
                              size: 13,
                            ),
                          ),
                          Text('Los Angeles Country, CA',style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0D2834)
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffB6BFC2)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.account_balance,
                              size: 13,
                            ),
                          ),
                          Text('Los Angeles Country, CA',style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0D2834)
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffB6BFC2)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Icon(
                              Icons.date_range,
                              size: 13,
                            ),
                          ),
                          Text('Sep 19, 2019',style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0D2834)
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text('Min referral fee',
                                    style: TextStyle(
                                        color: Color(0xffB6BFC2),
                                        fontSize: 12),
                                  ),
                                ),
                                Text('30%',
                                  style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text('Posted',
                                    style: TextStyle(
                                        color: Color(0xffB6BFC2),
                                        fontSize: 12),
                                  ),
                                ),
                                Text('Sep 19,2019',
                                  style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text('Area of practice',
                                    style: TextStyle(
                                        color: Color(0xffB6BFC2),
                                        fontSize: 12),
                                  ),
                                ),
                                Text('Personal Injury',
                                  style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text('Represent',
                                    style: TextStyle(
                                        color: Color(0xffB6BFC2),
                                        fontSize: 12),
                                  ),
                                ),
                                Text('Plaintiff',
                                  style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Color(0xffC8A574),
              ),
              child: FlatButton(onPressed:(){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                          child: Text('More about the Bidders',style: TextStyle(color: Color(0xffFFFFFF)),)),
                      Icon(Icons.info_outline,color: Color(0xffFFFFFF),)
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                          width: 2,
                          color: Color(0xffB6BFC2)
                        )
                      ),
                      child: FlatButton(
                          onPressed:(){}, child: Text('Edit')
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                          width: 2,
                          color: Color(0xffEB5757)
                        )
                      ),
                      child: FlatButton(
                          onPressed:(){}, child: Text('Delete',style: TextStyle(color: Color(0xffEB5757)),)
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
         margin: EdgeInsets.only(top: 20,bottom: 20),
        decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Color(0xffB6BFC2),
                  width: 2
              )
          ),
        ))
          ],
        ),
      ),
    );
  }
}