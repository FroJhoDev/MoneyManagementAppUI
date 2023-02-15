import 'package:flutter/material.dart';

import 'dash_board_page.dart';
import '../styles/color_schema.dart';
import '../utils/custom_shape_clipper.dart';
import '../widgets/cards_options_widget.dart';
import '../widgets/up_coming_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSchema.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorSchema.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(color: ColorSchema.primaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '2800,00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Avalilable Balance',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          )
                        ],
                      ),
                      Material(
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.blue[300],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const DashBoardPage()));
                          },
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: const Text(
                            'TOP UP',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 120.0, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 370.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CardsOptionsWidget(
                                text: 'Send',
                                icon: Icon(Icons.send),
                                color: Colors.purple,
                              ),
                              CardsOptionsWidget(
                                text: 'Pay',
                                icon: Icon(Icons.credit_card),
                                color: Colors.blue,
                              ),
                              CardsOptionsWidget(
                                text: 'Request',
                                icon: Icon(Icons.receipt),
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CardsOptionsWidget(
                                text: 'Invoice',
                                icon: Icon(Icons.monetization_on),
                                color: Colors.pink,
                              ),
                              CardsOptionsWidget(
                                text: 'Charity',
                                icon: Icon(Icons.favorite),
                                color: Colors.purpleAccent,
                              ),
                              CardsOptionsWidget(
                                text: 'Loan',
                                icon: Icon(Icons.attach_money),
                                color: Colors.deepPurple,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        const Divider(),
                        const SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Lorem ipsum dolor sit amet dan aku tan moyan',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 40.0),
                              Material(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blueAccent.withOpacity(0.1),
                                child: IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios),
                                  color: Colors.blueAccent,
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                'Upcoming',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, bottom: 25.0),
              child: SizedBox(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    UpComingCardWidget(
                      title: 'Cred Card One',
                      value: 280.0,
                      color: Colors.purple,
                    ),
                    UpComingCardWidget(
                      title: 'Cred Card Text Two',
                      value: 260.0,
                      color: Colors.blue,
                    ),
                    UpComingCardWidget(
                      title: 'Cred Card Text Two',
                      value: 210.0,
                      color: Colors.orange,
                    ),
                    UpComingCardWidget(
                      title: 'Cred Card Text Two',
                      value: 110.0,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
