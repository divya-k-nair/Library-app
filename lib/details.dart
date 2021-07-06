import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class Details extends StatelessWidget {
  TextEditingController bname=TextEditingController();
  TextEditingController bauth=TextEditingController();
  TextEditingController bdis=TextEditingController();
  TextEditingController bpub=TextEditingController();
  TextEditingController bpric=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              controller: bname,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.arrow_forward_outlined,color: Colors.purple,size: 40,),
                hintText: "Book name",
                labelText: "Book name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: bauth,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.arrow_forward,color: Colors.pink,size: 40,),
                hintText: "Author",
                labelText: "Author",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: bdis,
              decoration: InputDecoration(
                hintText: "Distributor",
                labelText: "Distributor",
                prefix: CircularProgressIndicator(),
                prefixIcon:Icon(Icons.arrow_forward_outlined,color: Colors.teal,size: 40,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: bpub,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.arrow_forward,color: Colors.red,size: 40,),
                hintText: "Publisher",
                labelText: "Publisher",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: bpric,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.attach_money,color: Colors.green,size: 40,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed: (){
                  var getBookname=bname.text;
                  var getBauth=bauth.text;
                  var getBdis=bdis.text;
                  var getBpub=bpub.text;
                  var getBprice=bpric.text;
                  print(getBookname);
                  print(getBauth);
                  print(getBdis);
                  print(getBpub);
                  print(getBprice);

              },
                child: Text("SUBMIT",
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
