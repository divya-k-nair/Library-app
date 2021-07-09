import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:library_app/details.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));

              },
                child: Text("BOOKS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
              ),
            ),
            ),

          ],//children
        ),
      ),
    );
  }
}
