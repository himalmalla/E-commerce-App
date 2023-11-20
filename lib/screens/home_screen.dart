import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List catList = ["All", "Best Selling", "jackets", "Shirts", "Pants", "Bags"];

  List imgList = ["Warm Jacket", "Black T-Shirt", "Black Pant", "Ladies Bag"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F8Fa),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text("Find your product"),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF7F8Fa),
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                          size: 30,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 9,),
                Container(
                  margin: const EdgeInsets.only(right: 25, left: 20),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/cover.jpg',
                      width: MediaQuery.of(context).size.width / 1.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        for (int i = 0; i < catList.length; i++)
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                            decoration: BoxDecoration(
                              color: catList[i] == "All"
                                  ? const Color(0xFFFD725A)
                                  : const Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(18)
                            ),
                            child: Text(catList[i], style: TextStyle(
                              fontSize:16,
                                color: catList[i] == "All"
                                    ? Colors.white
                                    : Colors.grey,
                            ),),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (MediaQuery.of(context).size.width - 30 -15) / (2* 290),
                      mainAxisSpacing: 35,
                      crossAxisSpacing: 15,
                    ),
                    itemCount: imgList.length,
                    itemBuilder: (_, i){
                    if(i%2==0){
                      return ProductCard(imgList[i]);
                    }
                    return OverflowBox(
                      maxHeight: 290.0 + 70.0,
                      child: Container(
                        margin: const EdgeInsets.only(top: 70),
                        child: ProductCard(imgList[i]),
                      ),
                    );
                    })
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedItemColor: const Color(0xFFFD725A),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index){},
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart_fill), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFFD725A),
          child: const Icon(Icons.add),
          onPressed: (){},
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
