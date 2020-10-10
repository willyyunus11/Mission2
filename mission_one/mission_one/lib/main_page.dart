import 'package:flutter/material.dart';
import 'package:mission_one/booking_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainPage> with SingleTickerProviderStateMixin {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Honda HR-V"),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/merdeka.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Flexible(
                  flex: 5,
                  child: Container(
                    width: 550,
                    height: 275,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/2.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    width: 900,
                    height: 900,
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/1.jpg"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.fromLTRB(8, 0, 5, 300),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/3.jpg"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 300),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/4.jpg"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 300),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/5.jpg"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 300),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 10, top: 10),
                child: FloatingActionButton(
                    child: Icon(
                      Icons.thumb_up,
                      color: _hasBeenPressed ? Colors.red : Colors.blue,
                    ),
                    backgroundColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                      });
                    })),
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BookingController();
                  }));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    height: 10,
                    constraints:
                        BoxConstraints(maxWidth: 120.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Book Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                width: 500,
                height: 1000,
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 340, bottom: 0),
                child: ListView(
                  children: <Widget>[
                    Text(
                      "Honda HR-V, Sang Penguasa yang kurang berinovasi",
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "siapa yang tak mengenali sosok Compact SUV ini? tentu hampir semua orang tau SUV Compact keluaran honda yang satu ini. Memang untuk saat ini mobil ini sangat memimpin jumlah penjualan yang paling laris untuk pangsa pasar Compact SUV, tetapi sejak meluncur pada tahun 2014 akhir dan mulai dijual pada tahun 2015, mobil ini masih menggunakan body dan design yang sama. Mobil ini hanya mendapatkan satu kali facelift minor pada tahun 2018 yang memberikan design lampu baru, bumper depan baru, grille depan baru, design lampu belakang sedikit berubah yang lampu seinnya kini lebih jernih, lali trunk lid yang kini agak mancung dan diberi aksen krom, namun itu semua sangat minor dan belum ada lagi pembaruan hingga kini tahun 2020. Hal ini tentu sangat disayangkan mengingat mobil ini sangat banyak digemari masyarakat yang ini mobil compact, kabinnya lega, cocok untuk perkotaan.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                    Text(
                      "Kelebihan dan Kekurangan",
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Kelebihan dari mobil ini memiliki konsumsi bahan bakar dalam kota yang sangat hemat dan mobil ini memiliki gaya berkendara yang sporty dan bermuda, dengan bantingan suspensi yang lembut namun cenderung stiff ketika melewati jalan yang bergelombang, hal ini memang baik untuk memperoleh handling yang stabil dengan suspensi ini juga yang membuat guncangan terkadang terasa sangat bergetar.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                    Text(
                      "Kekurangan dari mobil ini yang paling terasa di Varian 1500cc CVT yang terasa lemot dan ciri khas CVT yang cukup mengganggu adalah raungan mesin ketika berakselerasi karena CVT itu sendiri tidak memiliki gear seperti transmisi matik konvensional. Selain itu, gemuruh roda sangat terdengar didalam kabin dan sangat terlihat sekali peredaman bawah mobil ini kurang begitu baik.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                    Text(
                      "Masih layak untuk dipertimbangkan?",
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Menurut opini pribadi saya, mobil ini masih cukup layak untuk anda pertimbangkan jika anda mencari mobil compact dengan harga 300 jutaan rupiah, anda akan mendapatkan Honda HRV bermesin 1500cc yang menurut saya cukup worth jika dibandingkan anda membeli tipe Prestige 1800cc yang harganya kini sudah melewati angka 400 juta rupiah.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
