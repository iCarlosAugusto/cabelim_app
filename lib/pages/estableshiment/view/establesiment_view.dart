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
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                imageUrl,
                height: 230,
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
                        blurRadius: 30,
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
                        context.pop();
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


          const TextWidget("Salão MozzaneteE")
        ],
      )
    );
  }
}