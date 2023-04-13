import 'package:flutter/material.dart';
import 'package:headphones_ecommerce/widget_details.dart';

import '../data/models.dart';

class DetailPage extends StatefulWidget {
  DetailPage({required this.headphone, Key? key}) : super(key: key);
  HeadPhone headphone;
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.92,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.65,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(Icons.arrow_back_ios)),
                                    Text(
                                      'SOUNDLINK WIRELESS \nHEADPHONES',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                WidgetDetail(headphone: widget.headphone),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'SELECT COLOR',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Color.fromARGB(
                                              171, 190, 180, 122),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 14,
                                            backgroundColor:
                                                widget.headphone.color,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Color.fromARGB(
                                              177, 123, 183, 193),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.65,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                            color: widget.headphone.color,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                            )),
                      ),
                    ),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.03,
                        top: MediaQuery.of(context).size.height * 0.2,
                        child: Container(
                          /*  color: Colors.blue, */
                          height: MediaQuery.of(context).size.height * 0.38,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.headphone.image),
                          ),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'WIRELESS FREEDOM',
                                  style: TextStyle(
                                    color: widget.headphone.color,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'UNCOMPROMISE PERFORMANCE',
                                  style: TextStyle(
                                    color: widget.headphone.color,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25, bottom: 10),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                  'The art of producing pleasing or expressive combinations of tones especially with melody, rhythm, and usually harmony. : a musical composition set down on paper. bring your music. : sounds that have rhythm, harmony, and melody.'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
