import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/chip_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/list_widget.dart';
import 'package:cabelin_app/widgets/text_button_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EstableshimentView extends StatelessWidget {
  const EstableshimentView({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.CSWUMGiprKJMKXEGUjAz3QHaE7%26pid%3DApi&f=1&ipt=d41cb666b64c89ecdd8e1ad8a57605cbdf1418af114f53cdc079e411fac0ba14&ipo=images";
    return LayoutWidget(
        paddingLeft: 0,
        paddingRight: 0,
        floatingActionButton: ButtonWidget(title: "Agendar", onTap: () {}),
        child: Column(
          children: [
            Stack(
              children: [
                //Image.network(
                //  imageUrl,
                //  height: 260,
                //  fit: BoxFit.fill,
                //  width: MediaQuery.of(context).size.width,
                //),
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
                          )),
                      IconButton(
                          onPressed: () {
                            print("Favorite");
                          },
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 21, right: 21, top: 12, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      "Salão Mozzanete",
                      customWeight: FontWeight.w600,
                      customFontsize: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        ),
                        const TextWidget(
                          "Aberto",
                          isFontWeight: true,
                          customFontsize: 14,
                          margin: EdgeInsets.only(left: 6, right: 16),
                        ),
                        const Icon(
                          Icons.timer_outlined,
                          size: 20,
                          color: Colors.grey
                        ),
                        const TextWidget(
                          "10:00 - 19:00",
                          margin: EdgeInsets.only(left: 6),
                          customFontsize: 14,
                          color: Colors.grey
                        )
                      ],
                    ),
                    const TextWidget(
                      "Viking Barbearia, o lugar para você dar o melhor trato no seu cabelo!",
                      margin: EdgeInsets.symmetric(vertical: 12),
                      customFontsize: 16,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 219, 214, 214),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                    const TextWidget(
                      "Fotos",
                      isFontWeight: true,
                      margin: EdgeInsets.only(top: 16, bottom: 16),
                    ),
                    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        children: List.generate(6, (index) {
                          return Container(
                            width: 100,
                            height: 100,
                            color: const Color.fromARGB(255, 219, 214, 214),
                          );
                        }))
                  ],
                )),
          ],
        ));
  }
}
