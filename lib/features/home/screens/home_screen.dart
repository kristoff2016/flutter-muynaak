import 'package:flutter/material.dart';
import 'package:muynaak/core/utils/helpers.dart';
import 'package:muynaak/features/home/widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(alignment: Alignment.topLeft, children: [
              Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 85, 20, 0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.white, width: 0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 3, 144, 8),
                      spreadRadius: 0,
                      blurRadius: 40,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Align(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 25, 0, 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Available Balance",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: AppFont.fontDefault,
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$ 22.12',
                                            textAlign: TextAlign.start,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontFamily: AppFont.fontDefault,
                                              fontSize: 24,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/login');
                                      },
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.account_balance_wallet,
                                            size: 20,
                                            color: Colors.green,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'Top Up Balance',
                                            textAlign: TextAlign.start,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontFamily: AppFont.fontDefault,
                                              fontSize: 14,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const TextButton(
                                      onPressed: null,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.update,
                                            size: 20,
                                            color: Colors.green,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'Account History',
                                            textAlign: TextAlign.start,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontFamily: AppFont.fontDefault,
                                              fontSize: 14,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: cardTitles.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    title: cardTitles[index],
                    icon: cardIcons[index],
                    router: cardUrls[index],
                  );
                },
              ),
            ),
          ]),
        ));
  }
}

List<String> cardTitles = [
  'All Deliveries',
  'Reports',
  'My Account',
  'Saved Address',
  'Saved Drivers',
  'My Profile',
];

List<String> cardUrls = [
  '/all-deliveries',
  '/reports',
  '/my-account',
  '/saved-address',
  '/saved-drivers',
  '/my-profile',
];

List<IconData> cardIcons = [
  Icons.local_shipping,
  Icons.bar_chart,
  Icons.account_circle,
  Icons.location_on,
  Icons.drive_eta,
  Icons.person,
];
