import 'package:cabelin_app/widgets/category_wiget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/list_widget.dart';
import 'package:cabelin_app/widgets/text_button_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String urlImage = "https://s3-alpha-sig.figma.com/img/8739/5bba/de53e0225d86366a4cc216da592e867a?Expires=1696204800&Signature=eSmFZXyCMVVpxIQnFIeqFK77AAPrJRyP3LOQ3yo7WGU4yWAu0nj-qlJL8mZY7ep6hhPPaTX4EcJwXD1r4rOnETXdEUU2wEizut5dj9Kjvg234elbS5hn9fR5pGki1AMu49EnGnGJsxM~8w0pnjlI2gLbq95FJo9IpjGt1aCqnXZAbrFbXofPmt16By7aV8ocvvqocT5TnqCmS4Zan9AAX410hRE2duczEPU6aOK61ISxMctEPnrJlOYIHEtJPZGdQ4oRklYaSQga3NAFldasfMQzVZDCvbrEMTpIhy5jytqgQkCFyQXlGOb-b89bmcjIgqROoR6~e0Aq90lTLosB6g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4";

    return LayoutWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            "Ultimas atualizações",
            margin: EdgeInsets.only(top: 41, bottom: 12),
            customWeight: FontWeight.w600,
          ),

          Container(
            width: 353,
            height: 191,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.grey
            ),
            child: const Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        "Promoção de lançamento",
                        customWeight: FontWeight.w600,
                        customFontsize: 25,
                        color: Colors.white,
                      ),
                      TextWidget(
                        "Ganhe 30% OFF pagando pelo",
                        customWeight: FontWeight.w300,
                        customFontsize: 13,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const TextWidget(
            "Categorias",
            margin: EdgeInsets.only(top: 41, bottom: 12),
            customWeight: FontWeight.w600,
          ),
          
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: CategoryWidget(
                title: "Saloes",
                imageUrl: "assets/salao.png",
                onTap: () {},
              ),
            ) ,
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: CategoryWidget(
                title: "Barba",
                imageUrl: "assets/barbearia.png",
                onTap: () {},
              ),
            ) ,
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: CategoryWidget(
                title: "Tatto",
                imageUrl: "assets/tatuagem.png",
                onTap: () {},
              ),
            ) ,
              CategoryWidget(
                title: "SPA",
                imageUrl: "assets/spa.png",
                onTap: () {},
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                  "Perto de mim",
                  customWeight: FontWeight.w600,
                ),
                TextButtonWidget(title: "Ver mais", onTap: () {
          
                })
              ],
            ),
          ),
        
          Container(
            padding: const EdgeInsets.all(8),
            height: 212,
            child: ListView.separated(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (_, __) => Container(
                width: 16,
              ),
              itemBuilder: (context, index) => Container(
                width: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 81,
                      width: 94,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                    ),
                    const TextWidget(
                      "Viking \n Barbearia",
                      margin: EdgeInsets.only(top: 12),
                      customFontsize: 13,
                      customWeight: FontWeight.w600,
                    ),
                    const TextWidget(
                      "Atendimento até \n às 20h",
                      margin: EdgeInsets.only(top: 6),
                      customFontsize: 10,
                      customWeight: FontWeight.w300,
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 14),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0XFFC5FCFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(32)
                        )
                      ),
                      child: const TextWidget(
                        "20% OFF",
                        color: Color(0XFF0E8587),
                        customFontsize: 9,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                  "Novidades",
                  customWeight: FontWeight.w600,
                ),
                TextButtonWidget(title: "Ver mais", onTap: () {
          
                })
              ],
            ),
          ),
          ListWidget(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            separatorBuilder: (_, __) => Container(height: 26),
            itemBuilder: (index, _) {
              return ListTile(
                contentPadding: const EdgeInsets.only(right: 8, left: 8),
                leading: Container(
                  height: 56,
                  width: 56,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
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
                )
              );
            },
          )
        ],
      )
    );
  }
}