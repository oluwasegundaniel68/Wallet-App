import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_real/constants/my_button.dart';
import 'package:wallet_app_real/constants/my_card.dart';
import 'package:wallet_app_real/constants/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.pink,
          child: Icon(Icons.monetization_on,
          color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home,
              size: 32,

              )
              ),
              Container(),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,
                size: 32,
              )
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0,),
          child: Column(
            children: [
              Row(
                children: [
                 RichText
                   (text: TextSpan(
                   text: 'My',
                   style: TextStyle(
                     fontSize: 28,
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                   ),
                   children: [
                     TextSpan(
                       text: ' Cards',
                       style: TextStyle(
                         fontSize: 28,
                         fontWeight: FontWeight.w400,
                       )
                     )
                   ]
                 ),
                 ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    shape: BoxShape.circle
                    ),
                      child: Icon(Icons.add)
                  ),
                ],
              ),
              SizedBox(height: 25,),
             Container(
               height: 200,
               child: PageView(
                 scrollDirection: Axis.horizontal,
                 controller: _controller,
                 children: [
                   MyCard(
                     balance: 5250.20,
                     cardNumber: 12345678,
                     expiryMonth: 10,
                     expiryYear: 24,
                     color: Colors.deepPurple[300],
                   ),
                    MyCard(
                     balance: 5250.20,
                     cardNumber: 12345678,
                     expiryMonth: 10,
                     expiryYear: 24,
                     color: Colors.red[400],
                   ),
                    MyCard(
                     balance: 5250.20,
                     cardNumber: 12345678,
                     expiryMonth: 10,
                     expiryYear: 24,
                     color: Colors.green[400],
                   ),
                 ],
               ),
             ),
              SizedBox(height: 10,),
              SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  radius: 6,
                  dotHeight: 12,
                  dotWidth: 10,

                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                      imagePath: 'images/img_5.png',
                      buttonText: 'Send',
                  ),
                  MyButton(
                      imagePath: 'images/img_1.png',
                      buttonText: 'Pay',
                  ),
                  MyButton(
                      imagePath: 'images/img_4.png',
                      buttonText: 'Bills',
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: [
                  MyListTile(
                      imagePath: 'images/img_3.png',
                      tileName: 'Statistics',
                      tileSubTitle: 'Payments and Income'
                  ),
                  MyListTile(
                      imagePath: 'images/img_6.png',
                      tileName: 'Transactions',
                      tileSubTitle: 'Transaction History'
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
