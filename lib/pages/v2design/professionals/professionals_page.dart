import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfessionalsPage extends StatelessWidget {
  const ProfessionalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16)
            )
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextWidget(
                      "Escolha um profissional",
                      isFontWeight: true,
                      customFontsize: 16,
                    ),
                    GestureDetector(
                      onTap: () =>context.pop(),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: const BorderRadius.all(Radius.circular(50))
                        ),
                        child: Icon(
                          Icons.close_rounded,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(6, (index) {
                  return index == 0 
                    ? Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey
                        ),
                      ),
                      child: const Center(
                        child:  Column(
                          children: [
                            Icon(Icons.transfer_within_a_station),
                            TextWidget(
                              "Qualquer profissional",
                              isFontWeight: true,
                              customFontsize: 12,
                            ),
                            TextWidget(
                              "Faça o agendamento \n com qualquer profissional",
                              customFontsize: 12,
                            )
                          ],
                        ),
                      ),
                    )
                    : GestureDetector(
                      onTap: () => context.push("/v2/choose_service"),
                      child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                          const TextWidget(
                            "Maria Silva",
                            isFontWeight: true,
                            customFontsize: 16,
                            margin: EdgeInsets.only(top: 16),
                          )
                        ],
                      ),
                                  ),
                    );
                }),
              ),
            ],
          ),
        ),
    ); 
  }
}