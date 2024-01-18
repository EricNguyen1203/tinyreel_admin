import 'package:admin/component/textfield.dart';
import 'package:admin/main.dart';
import 'package:admin/view/adminHomePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final firestore = FirebaseFirestore.instance;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordHidden = true;

  TextEditingController _adminAccountController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Phần bên trái chứa hình ảnh
          Container(
            color: Colors.grey, // Màu sắc có thể thay đổi theo ý muốn
            child: Center(
              child: Image.asset(
                'assets/admin_image.png', // Đường dẫn hình ảnh admin
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Phần bên phải chứa TextField và nút đăng nhập
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextField để nhập tên user
                  Container(
                    width: 300.0, // Giới hạn chiều ngang của TextField
                    child: TextField(
                      controller: _adminAccountController,
                      decoration: InputDecoration(
                        labelText: 'Admin Account',
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white.withOpacity(1.0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // TextField để nhập mật khẩu
                  Container(
                    width: 300.0, // Giới hạn chiều ngang của TextField
                    child: TextField(
                      controller: _passwordTextController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white.withOpacity(1.0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Password',
                        icon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isPasswordHidden = !_isPasswordHidden;
                            });
                          },
                          icon: _isPasswordHidden
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: _isPasswordHidden,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // Nút đăng nhập
                  singInSignUpButton(context, true, () {
                    if (_adminAccountController.text != "" &&
                        _passwordTextController.text != "") {
                      adminLogin(context, _adminAccountController, _passwordTextController);
                    }
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void adminLogin(context, TextEditingController _adminAccountController,
    TextEditingController _passwordController) async {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(child: CircularProgressIndicator()),
        );
      });
  await firestore
      .collection("admin")
      .doc("adminID")
      .snapshots()
      .forEach((element) {
    if (element.data()?['account'] == _adminAccountController.text &&
        element.data()?['password'] == _passwordController.text) {
        
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
          (route) => false);
    }
  }).catchError((e) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(e.toString()),
          );
        });
  });
}
