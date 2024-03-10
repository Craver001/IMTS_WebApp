import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth =MediaQuery.of(context).size.width;
    double screenHeight =MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children:[
          Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150))
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
              children:[ Text(
                "Welcome to IMTS!!",
                  style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              ),] 
              )
             
          ),

         const SizedBox(height:30),
         // for email and password
         Padding(padding: const EdgeInsets.all(15),
          child: Column(
            children: [TextField(
              decoration: const InputDecoration(
                label: Text("Employee Email"),
                prefixIcon: Icon(Icons.person),
                border:OutlineInputBorder()
              ),
              controller: _email,
            ),

           const SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                label: const Text("Password"),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon( _isPasswordVisible ? Icons.visibility : Icons.visibility_off, ),
                  onPressed: (){
                    setState(() {
                      _isPasswordVisible =! _isPasswordVisible;
                    });
                  },
                ),
                border:const OutlineInputBorder()
              ),
              controller: _password,
              obscureText: _isPasswordVisible
            )],

          ),
          

      
          ),
        
         const SizedBox(height: 30,),

         //textButton

         Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    
          children: [
          
            // login textbutton
            Container(
              margin: const EdgeInsets.only(right: 5.0),
              width: 170,
              child:    TextButton(
                  onPressed:(){},
                  style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))
                        ),
                  child: const Text(
                               "Login",
                                style: TextStyle(
                                fontSize: 18,
                               color: Colors.white,
                              fontWeight: FontWeight.bold),
                  ),),
            ),

            SizedBox(
              width: 170,
              child:    //create textButton
                TextButton(
                  onPressed:(){},
                  style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))
                        ),
                  child: const Text(
                               "Create Account",
                                style: TextStyle(
                                fontSize: 18,
                               color: Colors.white,
                              fontWeight: FontWeight.bold),
                  ),),
            )
            
          ],
         ),

      
        const SizedBox(height: 50,),
      
         Expanded(child: Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only( topRight: Radius.circular(150)),
            
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
              children: [
              Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 80,
                ),
              SizedBox(
                height: 20,
              ),
              Text(
                "IMTs Web for Teacher",
                  style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              )
            ]),
          ),
)

        ],
      )
      );
  }
}
 