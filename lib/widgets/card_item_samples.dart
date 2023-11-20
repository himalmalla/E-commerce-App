import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItemSamples extends StatelessWidget {
  List imgList = ["Warm Jacket", "Black T-Shirt", "Black Pant"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < imgList.length; i++)
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Checkbox(
                    activeColor: const Color(0xFFFD725A),
                    value: true,
                    onChanged: (value) {}),
                Container(
                  height: 110,
                  width: 90,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 224, 244),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("images/${imgList[i]}.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        imgList[i],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.7)),
                      ),
                      Text(
                        "Best Selling",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.7)),
                      ),
                      const Text(
                        "\$150",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD725A),
                      ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.delete, color: Colors.redAccent,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            CupertinoIcons.minus,
                            size: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "01",
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            CupertinoIcons.add,
                            size: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    )
                  ],
                ),)
              ],
            ),
          )
      ],
    );
  }
}
