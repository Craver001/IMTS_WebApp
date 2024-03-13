import 'package:flutter/material.dart';

class RegistrationUi extends StatefulWidget {
  const RegistrationUi({super.key});

  @override
  State<RegistrationUi> createState() => _RegistrationUiState();
}

class _RegistrationUiState extends State<RegistrationUi> {
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _userEmail = TextEditingController();
  final TextEditingController _userPassword1 = TextEditingController();
  final TextEditingController _userPassword2 = TextEditingController();
  bool _passwordVisible1 = true;
  bool _passwordVisible = true;

    
  @override
  Widget build(BuildContext context) {
    double screenWidth =MediaQuery.of(context).size.width;
    double screenHeight =MediaQuery.of(context).size.height;
    
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight / 4,
            width: screenWidth,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150))
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
              children:[ Text(
                "Employee Registration",
                  style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              ),] 
              )
             
          ),
          const SizedBox(height: 30,),

          Padding(padding:const EdgeInsets.all(15),
          child: Column(
            children: [
              //user name
              TextField(
              decoration: const InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()),
              controller: _fullname,
            ),
            //user email
             const SizedBox(height: 5,),
            TextField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder()
              ),
              controller: _userEmail,

            ),
              const SizedBox(height: 5,),
            //UserPAssword 1
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),
                 suffixIcon: IconButton(
                      icon: Icon(
                          _passwordVisible1 ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),

                border:const OutlineInputBorder(),
              
              ),

                 controller: _userPassword1,
                obscureText: _passwordVisible1

            ),
              const SizedBox(height: 5,),
            //verify password
            TextField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    border: const OutlineInputBorder()),
                controller: _userPassword2,
                obscureText: _passwordVisible),

            ],
          )
      
          
          )

        ],

      ),
    );
  }
}