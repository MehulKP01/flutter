import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);

  TextEditingController usrnm=new TextEditingController();
  TextEditingController pwd=new TextEditingController();

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
      drawer: Drawer(),
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
                Text("Welcome",
                  style:new TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    TextFormField(
                      controller: usrnm,
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                          border:new OutlineInputBorder(
                            borderSide:new BorderSide(),
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      controller: pwd,
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
                    ElevatedButton(
                      // style:TextButton.styleFrom(),
                      style: TextButton.styleFrom(
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        print(usrnm.text);
                        print(pwd.text);
                      },
                      child: Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    )
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
