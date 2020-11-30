import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/signe_in_page.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/check_out_screen.dart';

class ShopingCartScreen extends StatefulWidget {
  @override
  _ShopingCartScreenState createState() => _ShopingCartScreenState();
}

class _ShopingCartScreenState extends State<ShopingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: comm_appbar('Shopping Cart', context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsets.only( top: 15 , left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _heading_container(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: ListView.builder(
                itemCount: 3,
                  itemBuilder: ( BuildContext context , int index){
                  return _detail_list();
                  }
                  ),
            ),
            Divider(
              thickness: 1,
              color: HexColor('#E0B936'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only( left: 60 , right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sub Total' , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),),
                      Text('820.00 SAR' , style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  SizedBox( height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping Fee' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      Text('50.00 SAR' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  SizedBox( height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tax 15%' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      Text('130.500 SAR' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  SizedBox( height: 5,),
                  Divider(
                    thickness: 1,
                    color: HexColor('#E0B936'),
                  ),
                  SizedBox( height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total' , style: TextStyle(
                          color: HexColor('#E0B936'),
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      Text('1000.500 SAR' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  SizedBox( height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discount' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      Text('50.500 SAR' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  SizedBox( height: 5,),
                  Divider(
                    thickness: 1,
                    color: HexColor('#E0B936'),
                  ),
                  SizedBox( height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('To be paid' , style: TextStyle(
                          color: HexColor('#E0B936'),
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      Text('950.500 SAR' , style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox( height: 30,),
            InkWell(
              child: Container(
                padding: EdgeInsets.only( top: 15),
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: HexColor("#BD9E2F"),
                ),
                child: Text( 'Check out' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.center,
                ),
              ),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: ( context)=> SigneInScreen()
                ));

              },
            )

          ],
        ),
      ),
    );
  }

_heading_container(){
    return Row(
      children: [
        Container(
          width: 220,
          height: 40,
          padding: EdgeInsets.only( left: 10),
          decoration: BoxDecoration(
            color: HexColor('#F2F2F7'),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15)
            )
          ),
          child: Row(
            children: [
              Image.asset('assets/icon-coupon.png'),
              SizedBox( width: 10,),
              Text('SCARF 2020' , style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: HexColor('#BD9E2F')
              ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 118,
          height: 40,
          decoration: BoxDecoration(
            color: HexColor('#BD9E2F'),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15)
            )
          ),
          child: Center(
            child: Text('Apply Coupon' ,  style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),),
          ),
        )
      ],
    );
}



_detail_list(){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only( top: 15 , bottom: 15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all( color: HexColor('#BD9E2F')),
                  image: DecorationImage(
                    image: ExactAssetImage( 'assets/4627-5.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              InkWell(
                  child: Image.asset('assets/btn-close.png' , fit: BoxFit.cover,),
                  onTap: (){},
                ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Colors cotton shawls' , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),),
                  SizedBox( width: 50,),
                  Text('150.00 SAR' , style: TextStyle(
                      color: HexColor('#BD9E2F'),
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 23,
                    height: 28,
                    decoration: BoxDecoration(
                      border: Border.all( color: HexColor('#BD9E2F')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      )
                    ),
                    child: Center(
                      child: Text('-' , style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                  Container(
                    width: 23,
                    height: 28,
                    decoration: BoxDecoration(
                        border: Border.all( color: HexColor('#BD9E2F')),
                    ),
                    child: Center(
                      child: Text('3' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                  Container(
                    width: 23,
                    height: 28,
                    decoration: BoxDecoration(
                        color: HexColor('#E0B936'),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        )
                    ),
                    child: Center(
                      child: Text('+' , style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
}
}
