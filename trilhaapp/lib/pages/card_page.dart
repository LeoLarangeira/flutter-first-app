import 'package:flutter/material.dart';
import 'package:trilhaapp/model/card_detail.dart';
import 'package:trilhaapp/pages/card_detail.dart';
import 'package:trilhaapp/repositories/card_detail_repository.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  CardDetail? cardDetail;
  var cardDetailtRepository = CardDetailRepository();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    cardDetail = await cardDetailtRepository.get();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: double.infinity,
        child: Card(
          elevation: 8,
          shadowColor: Colors.grey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                      height: 10,
                    ),
                    const Text(
                      "Meu Card",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec lacinia libero. Sed a aliquet urna. Praesent eleifend diam sit amet tortor sagittis efficitur. Aliquam erat volutpat. Ut condimentum risus eget justo ultricies, id maximus arcu maximus. Praesent aliquet, augue nec ullamcorper accumsan, libero risus hendrerit nulla, nec convallis dui velit non lorem. Nam convallis tellus pellentesque sem feugiat, et mollis urna iaculis. Sed rutrum est ut mauris faucibus, luctus vestibulum risus tempus. Curabitur in lobortis lacus. Nullam molestie, lorem eget laoreet mattis, eros eros sollicitudin dolor, vel porta ligula sapien eu velit. Integer eget molestie sapien. Etiam ac vestibulum metus. Ut dignissim, leo convallis auctor mollis, mauris felis vehicula neque, non facilisis dolor ipsum at urna. '),
              ],
            ),
          ),
        ),
      ),
      //aqui usamos o Hero
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: double.infinity,
        child: cardDetail == null
            ? LinearProgressIndicator()
            : InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardDetailPage(
                                cardDetail: cardDetail!,
                              )));
                },
                child: Hero(
                  tag: cardDetail!.id,
                  child: Card(
                    elevation: 8,
                    shadowColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                cardDetail!.url,
                                height: 20,
                              ),
                              Text(
                                cardDetail!.title,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            cardDetail!.text,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {},
                                child: const Text("Ler Mais",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline))),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ),
    ]);
  }
}
