import 'package:flutter/material.dart';
import 'package:myapp/constants/paddings.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/src/resources/home_page.dart';
import 'package:myapp/widgets/logo.dart';
import 'package:myapp/constants/colors.dart';
class LoginPage extends StatefulWidget
{
  LoginPage( {Key? key,}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}
class _LoginPage extends State<LoginPage> {

  bool _passwordVisible=true;
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  void initState() {

    _passwordVisible = true;

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: MyColor.white_4,
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
            child: Column(
          children: <Widget>[
            const SizedBox(
              height: 101,
            ),
            const Logo(),
            const SizedBox(
              height: 91,
            ),
            Text('Welcome to Condotel!', style: MyStyle.stylewelcome),
            const SizedBox(
              height: 4,
            ),
            Text('Alive with your style of living!', style: MyStyle.stylealive),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 53.0,
              padding: MyPadding.LP,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  labelText: "Email",
                  labelStyle: MyStyle.styletext,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 53.0,
              padding: MyPadding.LP,
              child: TextFormField(
                controller: passController,
                obscureText: _passwordVisible,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    labelText: "Password",
                    labelStyle: MyStyle.styletext,
                    suffixIcon: IconButton(
                      icon: Image.asset(
                        !_passwordVisible?
                        "assets/image/eye.png":'assets/image/eye-slash.png',
                        height: 24,
                        width: 24,
                      ),
                      onPressed: () {setState((){_passwordVisible=!_passwordVisible;});},
                    )),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 53.0,
              width: double.infinity,
              padding: MyPadding.LP,
              child: ElevatedButton(
                style: MyStyle.StyleButton,
                child: Text(
                  "Sign in",
                  style: MyStyle.stylebutton,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
