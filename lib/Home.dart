import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: <Widget>[
          Row(
          children: <Widget>[
          Expanded(
          child: Text(
          "Do Not Disturb",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20.0,
                color: Colors.black87),
          )),
      Expanded(
          child: Text(
            "1 Hour",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15.0,
                color: Colors.black87),
          )),
      Expanded(
          child: Text(
            "2 Hours",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15.0,
                color: Colors.black87),
          )),
      Expanded(
          child: Text(
            "Till Tomorrow",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15.0,
                color: Colors.black87),
          )),
      ],
    ),
    HnhImage(),
            BookingButton()],
    )
    ,
    )
    ,
    );
  }
}

class HnhImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage("images/icons8-0-percent-30.png");
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class BookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: RaisedButton(
          color: Colors.deepOrange,
          child: Text("Book now",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        elevation: 6.0,
        onPressed: () {
          book(context);
        }),);
  }

  void book(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Successful"),
      content: Text("Safe trip"),
    );
    showDialog(context: context,
        builder: (BuildContext context) {
          return alertDialog;
        }
    );
  }
}
