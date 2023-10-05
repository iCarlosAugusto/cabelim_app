import 'package:cabelin_app/widgets/appbar_widget.dart';
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
        child: Column(
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
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            "Salão Mozzanete",
                            customWeight: FontWeight.w600,
                            customFontsize: 20,
                          ),
                          Row(
                            children: [
                              TextWidget(
                                "4,5",
                                customFontsize: 16,
                                customWeight: FontWeight.w600,
                              ),
                              Icon(
                                Icons.star_border_rounded,
                                color: Colors.amber,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: ListWidget(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, index) => const SizedBox(width: 6),
                        itemBuilder: (_, index) => const ChipWidget(),
                        itemCount: 10
                      ),
                    ),
                    const TextWidget(
                      "Viking Barbearia, o lugar para você dar o melhor trato no seu cabelo!",
                      margin: EdgeInsets.symmetric(vertical: 12),
                      customFontsize: 16,
                    ),
                    TextButtonWidget(
                      onTap: () {},
                      title: "Ver mais informações",
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        "Serviços em destaque",
                        customWeight: FontWeight.w600,
                        customFontsize: 20,
                        margin: EdgeInsets.only(top: 24, bottom: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 170,
                      child: ListView.separated(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        separatorBuilder: (_, __) => Container(
                          width: 16,
                        ),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => context.push('/estableshiment'),
                          child: SizedBox(
                            width: 110,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 81,
                                  width: 94,
                                  decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                ),
                                const TextWidget(
                                  "Corte de cabelo",
                                  margin: EdgeInsets.only(top: 12),
                                  customFontsize: 13,
                                  customWeight: FontWeight.w300,
                                ),
                                const TextWidget(
                                  "R\$ 30",
                                  customFontsize: 16,
                                  customWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TextWidget(
                          "Todos os serviços",
                          customWeight: FontWeight.w600,
                          customFontsize: 20,
                        ),
                        TextButtonWidget(
                            title: "Ver mais",
                            onTap: () {
                              print("Listando todos...");
                            })
                      ],
                    ),
                    ListWidget(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      separatorBuilder: (_, __) => Container(height: 26),
                      itemBuilder: (index, _) {
                        return ListTile(
                            contentPadding:
                                const EdgeInsets.only(right: 8, left: 8),
                            leading: Container(
                              height: 56,
                              width: 56,
                              decoration: const BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            ),
                            horizontalTitleGap: 24,
                            title: const TextWidget(
                              "Viking Barber",
                              customWeight: FontWeight.w600,
                              customFontsize: 16,
                            ),
                            subtitle: const TextWidget(
                              "Atendimento até as 19:00",
                              customWeight: FontWeight.w300,
                              customFontsize: 13,
                            ),
                            trailing: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.favorite_outline),
                              onPressed: () {
                                print("TODO: favoritar salao");
                              },
                            ));
                      },
                    )
                  ],
                )),
          ],
        ));
  }
}
