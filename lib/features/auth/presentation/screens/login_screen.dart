import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:korrrrrrrr/removed/register.dart';
import 'package:korrrrrrrr/sp.dart';

Future<void> _signInWithGoogle() async {
  // setState(() => _isLoading = true);

  // try {
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //   if (googleUser == null) return;

  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser.authentication;
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );

  //   await FirebaseAuth.instance.signInWithCredential(credential);
  //   _showSuccessSnackBar(AppLocalizations.of(context).welcome);
  //   Navigator.pop(context);
  // } catch (e) {
  //   _showErrorSnackBar(e.toString());
  // } finally {
  //   setState(() => _isLoading = false);
  // }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeInUp(
                        duration: Duration(seconds: 1),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/999-removebg-preview.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeInUp(
                      duration: Duration(milliseconds: 1800),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(143, 148, 251, 1),
                                  ),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.grey[700]),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey[700]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => sp()),
                            );
                          },
                          child: FadeInUp(
                            duration: Duration(milliseconds: 1900),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, .6),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        FadeInUp(
                          duration: Duration(milliseconds: 1900),

                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ],
                              ),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,

                              child: OutlinedButton(
                                onPressed: _signInWithGoogle,
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Image.asset(
                                      'assets/images/google.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "sign in with",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
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
                    SizedBox(height: 70),
                    FadeInUp(
                      duration: Duration(milliseconds: 2000),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Don't have an account? Register",
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                            decoration: TextDecoration.underline,
                          ),
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
    );
  }
}





// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:koraa/screens/match_screens/matches.dart';
// import 'package:koraa/screens/register.dart';
// import 'package:koraa/sp.dart';

// Future<void> _signInWithGoogle() async {
//   // سيتم تنفيذ تسجيل الدخول بواسطة جوجل هنا
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Container(
//           constraints: BoxConstraints(
//             minHeight: MediaQuery.of(context).size.height,
//           ),
//           child: Column(
//             children: <Widget>[
//               // شعار التطبيق
//               FadeInDown(
//                 duration: Duration(milliseconds: 800),
//                 child: Container(
//                   margin: EdgeInsets.only(top: 80, bottom: 40),
//                   child: Image.asset(
//                     "assets/icon.png",
//                     width: 120,
//                     height: 120,
//                   ),
//                 ),
//               ),

//               // نموذج تسجيل الدخول
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Column(
//                   children: <Widget>[
//                     // حقل البريد الإلكتروني
//                     FadeInUp(
//                       duration: Duration(milliseconds: 1000),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.1),
//                           hintText: "Email or Phone number",
//                           hintStyle: TextStyle(color: Colors.grey[500]),
//                           prefixIcon: Icon(
//                             Icons.email,
//                             color: Colors.grey[500],
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15),
//                             borderSide: BorderSide.none,
//                           ),
//                           contentPadding: EdgeInsets.symmetric(vertical: 15),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),

//                     // حقل كلمة المرور
//                     FadeInUp(
//                       duration: Duration(milliseconds: 1200),
//                       child: TextField(
//                         obscureText: true,
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.1),
//                           hintText: "Password",
//                           hintStyle: TextStyle(color: Colors.grey[500]),
//                           prefixIcon: Icon(Icons.lock, color: Colors.grey[500]),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15),
//                             borderSide: BorderSide.none,
//                           ),
//                           contentPadding: EdgeInsets.symmetric(vertical: 15),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 30),

//                     // زر تسجيل الدخول
//                     FadeInUp(
//                       duration: Duration(milliseconds: 1400),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (_) => sp()),
//                           );
//                         },
//                         child: Container(
//                           height: 55,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             gradient: LinearGradient(
//                               colors: [Color(0xFF00C6FB), Color(0xFF005BEA)],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0xFF005BEA).withOpacity(0.4),
//                                 blurRadius: 15,
//                                 offset: Offset(0, 8),
//                               ),
//                             ],
//                           ),
//                           child: Center(
//                             child: Text(
//                               "LOGIN",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 25),

//                     // أو تسجيل الدخول باستخدام
//                     FadeInUp(
//                       duration: Duration(milliseconds: 1500),
//                       child: Row(
//                         children: [
//                           Expanded(child: Divider(color: Colors.grey[700])),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Text(
//                               "OR",
//                               style: TextStyle(
//                                 color: Colors.grey[500],
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                           Expanded(child: Divider(color: Colors.grey[700])),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 25),

//                     // زر تسجيل الدخول بواسطة جوجل
//                     FadeInUp(
//                       duration: Duration(milliseconds: 1600),
//                       child: OutlinedButton(
//                         onPressed: _signInWithGoogle,
//                         style: OutlinedButton.styleFrom(
//                           side: BorderSide(color: Colors.grey[700]!),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           padding: EdgeInsets.symmetric(vertical: 14),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/images/google.png',
//                               height: 25,
//                               width: 25,
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               "Sign in with Google",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 40),

//                     // رابط التسجيل
//                     FadeInUp(
//                       duration: Duration(milliseconds: 1700),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => RegisterPage(),
//                             ),
//                           );
//                         },
//                         child: RichText(
//                           text: TextSpan(
//                             text: "Don't have an account? ",
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: 14,
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: "Register",
//                                 style: TextStyle(
//                                   color: Color(0xFF00C6FB),
//                                   fontWeight: FontWeight.bold,
//                                   decoration: TextDecoration.underline,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

