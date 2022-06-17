import 'package:flutter/material.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/src/resources/HotelDetail.dart';
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
  @override
  bool _passwordVisible=true;
  void initState() {
    _passwordVisible = true;
  }
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 101,
            ),
            Logo(),
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
              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
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
              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
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
                        "assets/image/eye.png",
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
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    primary: MyColor.white_1,
                    backgroundColor: MyColor.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                child: Text(
                  "Sign in",
                  style: MyStyle.stylebutton,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
