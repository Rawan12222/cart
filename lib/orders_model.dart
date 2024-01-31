
class UserOrders {
  final String pTitle ;
  final double pPrice;
  final int pCount;
  final String imagAssets;
UserOrders( 
{
  required this.imagAssets, 
  required this.pTitle, 
  required this.pPrice, 
  required this.pCount, 
}
);
 }

List usercartDetails =[];

void addusercartDetails( 
{
  required String pTitle ,
  required double pPrice,
  required int pCount,
  required String imagAssets,

  })
  {
  final newDetails=UserOrders(   
 pCount: pCount,
  pPrice: pPrice, 
  pTitle: pTitle, 
  imagAssets: imagAssets,  
  );
  
  usercartDetails.add(newDetails);
}



