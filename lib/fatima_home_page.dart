import 'package:flutter/material.dart';

class FatimaForm extends StatefulWidget {
  const FatimaForm({super.key});

  @override
  State<FatimaForm> createState() => _FatimaFormState();
}

class _FatimaFormState extends State<FatimaForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fatina App"),
      ),
      body: container(
        mainAxisAlignment: MainAxisAlignment.center
        width:400,
        height:600,
        padding: EgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          boxShadow:[
            BoxShadow(color: Colors.black ,blurRadius: 5 , offset:Offset(0,2))
          ]
          border: Border.all(),
          borderRadius: BorderRadius.circulal(10),
          alignment: Alignment.center,
          child: Column(children:[
            TextFromField(
              decoration: InputDecration(
                hintText: "Fatima Name",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1)
                )
              ),
            ),
            SizedBox(height:15), 

            TextFromField(
              decoration: InputDecration(
                hintText: "Fatima phone",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1)
                )
              ),
            ),

            SizedBox(height:15), 

            TextFromField(
              decoration: InputDecration(
                hintText: "Fatima age",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1)
                )
              ),
            ),

            SizedBox(height:15), 

            TextFromField(
              decoration: InputDecration(
                hintText: "Fatima email",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1)
                )
              ),
            ),

            SizedBox(height:15),
            
            Container(
              child: RaisedButton(
                color: Color.white,
                onPressed: () {},
                child: Text("Ok",
                style:TextStyle( color: Colors.black ,fontSize: 16))
              )
            )

          ],))
        
      )
    );
  }
}
