import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  
  const Homescreen({super.key, });

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController _textEditingController=TextEditingController();
  int number=123;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Scaffold(
        appBar: AppBar(
          title: Text('BottomSheet Example'),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                20,
                              ),
                              topRight: Radius.circular(20))),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.all(20),
                          child: ListView(
                            children: [
                              Text(
                                'Payout',
                                style: TextStyle(fontSize: 35, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Pay out your balance now',
                                style: TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 55,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.sailing_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.sledding,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 55,
                              ),
                              Text(
                                _textEditingController.text,
                                style: TextStyle(fontSize: 45, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'will be paid to your account....4567',
                                style: TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red),
                                child: Center(
                                    child: Text(
                                  'Withdraw to bank account',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black), borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                                child: Center(
                                    child: Text(
                                  'never mind',
                                  style: TextStyle(color: Colors.black),
                                )),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child:
                    
                      Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                      
                    
                  
                  ),
                  
            ),
            SizedBox(
                    height: 50,
                  ),
                  
                   TextField(
                    controller:_textEditingController ,
              decoration: InputDecoration(
                labelText: 'Email address',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
