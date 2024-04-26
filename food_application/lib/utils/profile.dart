import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize:  const Size.fromHeight(kToolbarHeight), 
      //   child: Padding(
            
      //       padding: const EdgeInsets.only(top: 20.0),
      //       child: AppBar(
      //         backgroundColor: Colors.white,
      //         leading: IconButton(
      //           icon: const Icon(Icons.arrow_back_ios_new),
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //         ),
      //         title: const Text(
      //           "Profile",
      //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      //         ),
      //       ),
      //   ),
      // ),
      body: content(context),
    );

    
  }

  Widget content(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 300,
                
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.orange.shade300,
                      Colors.orange.shade600,
                      Colors.orange.shade700
                    ]
                  ),
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: const Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('lib/assets/foto.jpg'),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 30),
                        child:Text("Vincentius Actonio", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 3),
                        child:Text("Juragan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: SizedBox(
                  width: 410,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.orange[50],
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.lock_outline, size: 24.0),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Text(
                              'Password',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 24.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 410,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange[50],
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.email_outlined, size: 24.0),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Text(
                            'Email Address',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 24.0),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 410,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange[50],
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.support_agent, size: 24.0),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Text(
                            'Support',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 24.0),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 410,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange[50],
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.exit_to_app, size: 24.0),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Text(
                            'Sign Out',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 24.0),
                      ],
                    ),
                  ),
                ),
              )
            ],
          
          ),
        ),
      );
    }
}