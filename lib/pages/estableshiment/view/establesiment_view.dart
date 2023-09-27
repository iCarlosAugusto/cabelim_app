import 'package:cabelin_app/widgets/appbar_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EstableshimentView extends StatelessWidget {
  const EstableshimentView({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.CSWUMGiprKJMKXEGUjAz3QHaE7%26pid%3DApi&f=1&ipt=d41cb666b64c89ecdd8e1ad8a57605cbdf1418af114f53cdc079e411fac0ba14&ipo=images";
    return LayoutWidget(
      paddingLeft: 0,
      paddingRight: 0,
      child: Stack(
        children: [
          Stack(
            children: [
              Image.network(
                imageUrl,
                height: 260,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        blurRadius: 40,
                      ),
                    ],
                  ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )
                    ),
                    IconButton(
                      onPressed: () {
                        print("Favorite");
                      },
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      )
                    )
              
                  ],
                ),
              )
            ],
          ),

          Positioned(
            top: 250,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)
                )
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 21,
                  right: 21,
                  top: 12,
                  bottom: 12
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget("Salão Mozzanete"),
                        Icon(Icons.star_outline)
                      ],
                    )
                  ],
                ) 
              ) ,
            ),
          ),
        ],
      )
    );
  }
}