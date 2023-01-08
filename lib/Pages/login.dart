import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  // TextEditingController usrnm=new TextEditingController();
  // TextEditingController pwd=new TextEditingController();
  String name="";
  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login",
          style:new TextStyle(
              color: Colors.white
          ),
        )),
      ),
      // drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.all(20.0),
        // color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image.asset("contact.png",fit: BoxFit.cover,),
                CircleAvatar(
                  backgroundImage:new AssetImage("contact.png"),
                  radius: 120.0,
                  backgroundColor: Colors.red,
                ),
                SizedBox(height: 20,),
                Text("Welcome $name",
                  style:new TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    TextFormField(
                      // controller: usrnm,
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                          border:new OutlineInputBorder(
                            borderSide:new BorderSide(),
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                      onChanged: (value){
                        name=value;
                        setState(() {
                        });
                      },
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      // controller: pwd,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          fillColor: Colors.amberAccent,
                          border:new OutlineInputBorder(
                            borderSide:new BorderSide(),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                      ),
                    ),
                    SizedBox(height: 30.0,),

                    InkWell(
                      onTap: ()async{
                        setState(() {
                          changeButton=true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width:changeButton?50:150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(changeButton?50:8),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   // style:TextButton.styleFrom(),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(120, 40),
                    //   ),
                    //   onPressed: () {
                    //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //   ),
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
