import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:intl/intl.dart';
import 'payment.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class cart extends StatefulWidget{
  const cart({super.key});

  @override
  State<cart> createState() => _cart();

}

class _cart extends State<cart> {
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("my cart".toUpperCase(),
        style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),),
      ),

      body: Container(
        height: 600,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: cardContainr(
               // Image(image:Image.asset('photo/potato_fry.jpg')),
                //Icon(Icons.credit_card, size: 45,), 
              'assets/images/potato_fry.jpg',
                "potato fry", 
                "1 PCS", 
                "16 TK"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: cardContainr(
                 'assets/images/burger.jpg',
                  "burger khaw", 
                  "2 PCS", 
                  "240 TK"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: cardContainr(
                  'assets/images/donate.jpg',
                  "Donate choco", 
                  "2 PCS", 
                  "180 TK"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                //padding:EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 110,
                  width: 385,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(204, 245, 182, 184),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text("Order summary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("product cost", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:100.0),
                            child: Text("470 TK ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                                ),
                          ),
              
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("Service charge", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                                ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left:100.0),
                          child: Text("5 TK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                                ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left:160.0),
                          child: Text("475 TK", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ),
              
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
              Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 57, 60, 63),
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: ElevatedButton(
                                child: const Text('pay with card'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const payment()),
                                     );},
                                     style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 57, 60, 63),
                                     ),
                                     ),
                            ),

                            

                          ),
                        ),
                        Container(
                          height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: ElevatedButton(
                                child: const Text('pay cash'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const payment()),
                                     );},
                                     style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                     ),
                                     //style: ButtonTheme()
                                     ),
                            )
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:6.0),
                      child: Container(
                        height: 70,
                        width: 412,
                        //mainAxisAlignment:
                        
                        decoration: BoxDecoration(
                          
                          
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(25)
                        ),
                    
                        child: const GNav(
                          backgroundColor: Color.fromARGB(204, 245, 182, 184),
                          color: Colors.white,
                          //mainAxisAlignment:MainAxisAlignment.center ,
                          activeColor: Colors.orange,
                          //onTabChange: contrlle,
                          tabs: [
                    
                            GButton(icon: (Icons.home_outlined),
                            //active: false,
                            text: "Home",
                            iconColor: Colors.black,                 
                            ),

                            GButton(icon: (Icons.shopping_cart_outlined),
                            text: "Cart",
                            iconColor: Colors.black,
                            //active: true,
                            ),

                            GButton(icon: (Icons.favorite_border),
                            text: "Favorite",
                            iconColor: Colors.black,
                            //active: false,
                            ),
                    
                          ],
                        ),
                    
                    
                      ),
                    ),
                    
              
          ],
        ),

      ),


      );

  }
  Container cardContainr( String image, String foodName, String quality, String money){
    return Container(
      height: 100,
      width: 380,
      decoration: BoxDecoration(
        color: Color.fromARGB(204, 245, 182, 184),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: <Widget>[
          //Padding(
           // padding: EdgeInsets.all(30.0),
           // child: Icon(Icons.food_bank, size: 45,),
            //),
            Image.asset(image),

          //Image(image: Image.asset('photo/potato_fry.jpg')),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(foodName),
                  Text("$quality")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text("$money"),
            )
            
        ],
      ),
    );
  }
  
  pay() {
    
    //const Navigator(pages: [payment()],);
    //Navigator.of(context)..push(MaterialPageRoute(builder: (context)=>payment()));
  }
}