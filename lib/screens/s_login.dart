import 'package:flutter/material.dart';
import 'dart:ui';
import 's_register.dart';
import 'u_login.dart';
import 'package:busline1/screens/s_tab.dart';
class SLoginPage extends StatefulWidget {
  final String title;

  SLoginPage({Key key, this.title}) : super(key: key);

  @override
  _SLoginPageState createState() => _SLoginPageState();
}

class _SLoginPageState extends State<SLoginPage> {
  bool _rememberMe = false;

String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('STAFF LOGIN', style: TextStyle(
                                  
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                 ),
          ),
          backgroundColor: Colors.green,
          ),
      body: Stack(
    
      children: <Widget>[
        
        new Container(
          
        decoration:BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('assets/images/bus.jpg'),
            fit: BoxFit.cover,
            
          ),
          
        ), 
      
       child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY:5.0),
         
          child: Container(

             decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            
             ),
          ),
       ),
        ),
                
 ListView(
           children: <Widget>[   
          Container(
         child: FlatButton(
        
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyLoginPage()),
            );
          },
        padding: EdgeInsets.only(left: 275.0),
        
        child: Text(
         
          'User Login',
           
          style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.underline),
          
        ),
      ),
                        ),
                        new Center(
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/f.png'),
          ),
        ),
      new Center(
        child: Container(
           padding: const EdgeInsets.all(40.0),
                 child: new Form(
             child:new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              
              inputDecorationTheme: new InputDecorationTheme(
              
                 hintStyle: new TextStyle(color: Colors.white24, fontSize: 15.0),
                labelStyle:
                    new TextStyle(color: Colors.blue, fontSize: 17.0),
              )),
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                       onChanged: (val) {
                  setState(() => email = val);
                },
                    decoration: InputDecoration(
                        labelText: 'Staff ID:',
                        hintText: 'Enter staff id'
                    ),
                    keyboardType:TextInputType.text,
                    
                  ),
                  TextFormField(
                       onChanged: (val) {
                  setState(() => password = val);
                },
                    decoration: InputDecoration(
                        labelText: 'Password:',
                        hintText: 'Enter password',
                       
                    ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  ),
                  Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.underline),
          
        ),
      ),
    ),
    new Padding(
                           padding: EdgeInsets.symmetric(vertical: 25.0),
      
                      ),
                 
                      new MaterialButton(
                        padding: EdgeInsets.all(15.0),
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text('Login'),
                      onPressed: () {
                          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StaffPage()),
            );

                        },
                        
                        
                      ),
                      SizedBox(
                        height: 30
                      ),
                     Container(
                    
      height: 30.0,
      child: Row(
        children: <Widget>[
      
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
             style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  ),
          ),
          SizedBox(
            width: 40
          ),
           Container(
             
      alignment: Alignment.centerRight,
      child: FlatButton(
        
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SRegisterPage()),
            );
          },
        
        
        child: Text(
          
         
          'Sign Up',
           
          style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.underline),
          
        ),
      ),
    ),
        ],
      ),
    ),
    SizedBox(height: 20),
     
                        Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  ),
          
        ),
      ],
    ),
     Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         Container(
             
      alignment: Alignment.centerRight,
      child: FlatButton(
        
         onPressed: () {
          
          },
        
        
        child:  CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/google.jpg'),
          ),
      ),
    ),
          
        Container(
             
      alignment: Alignment.centerRight,
      child: FlatButton(
        
         onPressed: () {
          
          },
        
        
        child:  CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/fb.jpg'),
          ),
      ),
    ),
        
        ],
      ),
    ),
                ],
              ),
            ),
      ),
      ),
      ),
      ],
 ),
      ],
      ),
    );
    
  }
}