import 'package:flutter/material.dart';
import 'package:flutter_application_1/orders_model.dart';


//import 'widgets/products.dart';

class DetailsScreenBody extends StatefulWidget {
  
  const DetailsScreenBody({
   // super.key, required this.products, 
   required this.imagAssets, 
   required this.productTiltle, 
   required this.productDescription, 
   required this.productPrice, 
 
  });
//
//final UserOrders products;
final String productTiltle;
final String imagAssets;
final String productDescription;
final double productPrice;


  @override
  State<DetailsScreenBody> createState() => _DetailsScreenBodyState();
}

class _DetailsScreenBodyState extends State<DetailsScreenBody> {
  int _counter =1;
  // final  String imagAssets ,productTiltle , productDescription;
void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    //int amount=0;
    return Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          AspectRatio(
               aspectRatio: 1.1,
               child: Container(              
                 padding: EdgeInsets.all(2),
                 decoration: BoxDecoration(
                   color:  
                   Color(0xFF343434)
                   .withOpacity(0.1),
            
                   borderRadius: BorderRadius.circular(15)
                   ),
                   child: Image.asset(widget.imagAssets)
                    // imagAssets),
                 ),
          ),
      
            SizedBox(height: 25,),
          Text(widget.productTiltle,
            //productTiltle,
          style: TextStyle(fontSize: 24),),
            SizedBox(height: 5,),
          // Text('products.description',
          //   //productDescription,
          // style: TextStyle(fontSize: 24),),
            Text(" السعر : ${widget.productPrice*_counter
              } ",
            style: TextStyle(color: Colors.greenAccent.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 18)
            ),
          

         SizedBox(height: 25,),  
            SizedBox(      
        width: 280,
        height: 56,        
      child: Container(
        //color: Colors.amber,
        //backgroundcolor:Colors.blueAccent,
        decoration: BoxDecoration(
          color:Colors.amberAccent,
          borderRadius: BorderRadius.circular(15)),
          child:
            TextButton(child: Text('اضف إلى السلة',
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent,
                )
            ),
            onPressed: (){
              if(_counter>=1){
  addusercartDetails(
    pCount: _counter,
                pTitle: widget.productTiltle, 
                pPrice: widget.productPrice, 
                //pCount: _counter, 
                imagAssets: widget.imagAssets);
              }
            
  //             addcartDetails(
  //               products:products,
  //               item:4,
  //  );
              
            //  MyCartDetails(products: products, items: products.images.length);
              // addnewrequest(

              //   // productTiltle,productDescription,imagAssets,productPrice
              // );
            },
            ),
      ),
            ),
                     
        

     ],

   );
  }
}