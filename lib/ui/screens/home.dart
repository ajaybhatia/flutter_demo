import 'package:demo/ui/screens/welcome.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Container(
          // color: Colors.green,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black38,
                      offset: Offset(10, 10),
                    )
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.britannica.com/24/189624-131-BAF1184D/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  "Take me to Second Screen",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Welcome(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: FlatButton(
                child: Text('Welcome'),
                onPressed: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Welcome()));
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Welcome(),
          ),
        ),
      ),
    );
  }
}
