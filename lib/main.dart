import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
TextEditingController  bname=TextEditingController();
TextEditingController  bauth=TextEditingController();
TextEditingController  bdis=TextEditingController();
TextEditingController  bpub=TextEditingController();
TextEditingController  bprice=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("LIBRARY APP"),
        ),
        body:
          SingleChildScrollView(
            child:Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextField(
                    controller: bname,
                    decoration: InputDecoration(
                      prefix:CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.api,color: Colors.deepOrange,size: 40,),
                      labelText: "Book name",
                      hintText: "Book name",
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
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      labelText: "Author",
                      hintText: "Author",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: bdis,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.assignment_ind_sharp,color: Colors.pink,size: 40,),
                      labelText: "Distributor",
                      hintText: "Distributor",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: bpub,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.ac_unit_sharp,color: Colors.lightBlue,size: 40,),
                      labelText: "Publisher",
                      hintText: "Publisher",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: bprice,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.attach_money,color: Colors.cyan,size: 40,),
                      labelText: "Price",
                      hintText: "Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child:RaisedButton(
                      color: Colors.deepOrange,
                      onPressed: (){
                        var getBookname=bname.text;
                        var getAuthor=bauth.text;
                        var getDistributor=bdis.text;
                        var getPublisher=bpub.text;
                        var getPrice=int.parse(bprice.text);
                        print(getBookname);
                        print(getAuthor);
                        print(getDistributor);
                        print(getPublisher);
                        print(getPrice);
                        print("hello");
                      },
                      child: Text("SUBMIT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ) ,
                  ),

                ],//children
              ),
            ),
          ),
      ),
    );
  }
}

