import '../../../allpackages.dart';

class OverViewScreen extends StatefulWidget {
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  State<OverViewScreen> createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabMatchController;

  @override
  void initState() {
    super.initState();
    _tabMatchController = TabController(length: 4, vsync: this);
  }

  final List<Tab> myTabs = <Tab>[
    const Tab(text: '20-20'),
    const Tab(text: 'ODI'),
    const Tab(text: 'Net Session'),
    const Tab(text: 'Test'),
  ];

  var image = ['assets/img1.png', 'assets/img2.png'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: size.height * 0.09,
              width: size.width,
              decoration: BoxDecoration(
                  color: ColorConstant.greenColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/arrowCricle.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'You have 2 new requests from clubs',
                    style: GoogleFonts.getFont('Outfit',
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: ColorConstant.whiteColor,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: 'You have 2 new requests from clubs');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: ColorConstant.whiteColor,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming Events',
                      style: GoogleFonts.getFont('Outfit',
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: ColorConstant.lightBlack,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListItem(
                                      title: 'Upcoming Events',
                                    )));
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.getFont('Outfit',
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.appColor,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                    height: size.height * 0.3,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: ColorConstant.cardColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: size.height * 0.14,
                              width: size.width * 0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorConstant.whiteColor,
                                  border: Border.all(
                                      color: ColorConstant.greyColor)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 6.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'May',
                                          style: GoogleFonts.getFont('Outfit',
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                color: ColorConstant.lightBlack,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                        Image.asset(
                                          'assets/circleCricket.png',
                                          height: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      '24',
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: TextStyle(
                                            fontSize: 28,
                                            color: ColorConstant.lightBlack,
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      '02:00 PM',
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            color: ColorConstant.lightBlack,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/pk.png',
                                      height: 55,
                                    ),
                                    Text(
                                      '  Punjab Kings 2’nd 11',
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: ColorConstant.blackColor,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/rcb.png',
                                      height: 55,
                                    ),
                                    Text(
                                      'Royal Challenger Banglore \n  3rd 11',
                                      maxLines: 2,
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: ColorConstant.blackColor,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 32,
                                    width: size.width * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffC8E8EF)),
                                    child: Center(
                                      child: Text(
                                        'Net Session',
                                        style: GoogleFonts.getFont('Outfit',
                                            textStyle: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff5C6A80),
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.42,
                                  ),
                                  Icon(
                                    Icons.add_location_alt,
                                    color: ColorConstant.appColor,
                                  ),
                                  Text(
                                    '0.3 M away',
                                    style: GoogleFonts.getFont('Outfit',
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          color: ColorConstant.appColor,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            color: Color(0xffE5E7E9),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Status:',
                              style: GoogleFonts.getFont('Outfit',
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff5C6A80),
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            SizedBox(
                              width: size.width * 0.4,
                            ),
                            Container(
                              width: size.width * 0.35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorConstant.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Playing',
                                    style: GoogleFonts.getFont('Outfit',
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff5C6A80),
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 7.0, bottom: 7.0, right: 3.0),
                                      child: Container(
                                        height: 35,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorConstant.greenColor,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.done,
                                            color: ColorConstant.whiteColor,
                                          ),
                                        ),
                                      )),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: ColorConstant.greyColor,
                                    size: 25,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, bottom: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Live score',
                      style: GoogleFonts.getFont('Outfit',
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: ColorConstant.lightBlack,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListItem(
                                      title: 'Live score',
                                    )));
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.getFont('Outfit',
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.appColor,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: size.height * 0.25,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: Container(
                                height: size.height * 0.25,
                                width: size.width * 0.5,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: index == 0
                                        ? const Color(0xff2648D1)
                                        : index == 1
                                            ? const Color(0xffD1266E)
                                            : index == 2
                                                ? ColorConstant.greenColor
                                                : ColorConstant.appColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '.LIVE',
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: TextStyle(
                                            fontSize: 16,
                                            color: ColorConstant.whiteColor,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/rcb1.png',
                                              height: 70,
                                            ),
                                            Text(
                                              'RCB’1',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                            ),
                                            Text(
                                              '164/3',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            ),
                                            Text(
                                              '20.0',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/wh1.png',
                                              height: 70,
                                            ),
                                            Text(
                                              'WH’1',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                            ),
                                            Text(
                                              '121/4',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            ),
                                            Text(
                                              '17.4',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ));
                        }),
                  ))
                ],
              ),
              //Stats
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, bottom: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.55,
                      child: Row(
                        children: [
                          Text(
                            'Stats   ',
                            style: GoogleFonts.getFont('Outfit',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: ColorConstant.lightBlack,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Image.asset(
                            'assets/stats.png',
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListItem(
                                      title: 'Stats',
                                    )));
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.getFont('Outfit',
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.appColor,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                    height: size.height * 0.3,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: ColorConstant.cardColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.55,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: const Color(0xffD13200)
                                          .withOpacity(0.4),
                                      child: Text(
                                        'WC',
                                        style: GoogleFonts.getFont('Outfit',
                                            textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Color(0xffD13200),
                                              fontWeight: FontWeight.w800,
                                            )),
                                      ),
                                    ),
                                    Text(
                                      '   Workingham Club     ',
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: TextStyle(
                                            fontSize: 16,
                                            color: ColorConstant.blackColor,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: size.width * 0.25,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffC8E8EF)),
                                      color: const Color(0xffE0F8FD),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      'All rounders',
                                      style: GoogleFonts.getFont('Outfit',
                                          textStyle: const TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff5C6A80),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        TabBar(
                          // isScrollable: true,
                          controller: _tabMatchController,
                          indicatorColor: const Color(0xff00B8A9),
                          unselectedLabelColor: ColorConstant.greyColor,
                          labelColor: const Color(0xff00B8A9),
                          tabs: myTabs,
                          labelStyle: GoogleFonts.getFont('Outfit',
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        Expanded(
                          child: TabBarView(
                              controller: _tabMatchController,
                              children: [
                                scoures(),
                                Center(
                                  child: Text(
                                    'No ODI',
                                    style: GoogleFonts.getFont('Outfit',
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: ColorConstant.blackColor)),
                                  ),
                                ),
                                scoures(),
                                scoures(),
                              ]),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, bottom: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent performance',
                      style: GoogleFonts.getFont('Outfit',
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: ColorConstant.lightBlack,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListItem(
                                      title: 'Recent performance',
                                    )));
                      },
                      child: Text(
                        'Full scoreboard',
                        style: GoogleFonts.getFont('Outfit',
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.appColor,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: size.height * 0.25,
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Container(
                                height: size.height * 0.22,
                                width: size.width,
                                decoration: BoxDecoration(
                                    color: ColorConstant.cardColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: size.width * 0.55,
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/rcb1.png',
                                                  height: 35,
                                                ),
                                                Text(
                                                  'RCB’s 1st 11',
                                                  style: GoogleFonts.getFont(
                                                      'Outfit',
                                                      textStyle: TextStyle(
                                                        fontSize: 16,
                                                        color: ColorConstant
                                                            .blackColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                              width: size.width * 0.25,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xffC8E8EF)),
                                                  color:
                                                      const Color(0xffE0F8FD),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Center(
                                                child: Text(
                                                  'Man of the match',
                                                  style: GoogleFonts.getFont(
                                                      'Outfit',
                                                      textStyle:
                                                          const TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff5C6A80),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                'assets/profile.png',
                                                height: size.height * 0.1,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'Runs',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 12,
                                                          color: ColorConstant
                                                              .greyColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  Text(
                                                    index == 0 ? '112' : '100',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          color: ColorConstant
                                                              .blackColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'Balls',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 12,
                                                          color: ColorConstant
                                                              .greyColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  Text(
                                                    index == 0 ? '80' : '10',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          color: ColorConstant
                                                              .blackColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '4’s',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 12,
                                                          color: ColorConstant
                                                              .greyColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  Text(
                                                    index == 0 ? '07' : '02',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          color: ColorConstant
                                                              .blackColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '6’s',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 12,
                                                          color: ColorConstant
                                                              .greyColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  Text(
                                                    index == 0 ? '06' : '02',
                                                    style: GoogleFonts.getFont(
                                                        'Outfit',
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          color: ColorConstant
                                                              .blackColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              index == 0
                                                  ? 'SR: 140.4'
                                                  : 'SR: 120.4',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                        ColorConstant.greyColor,
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.15,
                                            ),
                                            Text(
                                              index == 0
                                                  ? 'Current rank: 2'
                                                  : 'Current rank: 9',
                                              style: GoogleFonts.getFont(
                                                  'Outfit',
                                                  textStyle: TextStyle(
                                                    fontSize: 18,
                                                    color:
                                                        ColorConstant.greyColor,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_up,
                                              color: ColorConstant.greenColor,
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          );
                        }),
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, bottom: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More Actions   ',
                      style: GoogleFonts.getFont('Outfit',
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: ColorConstant.lightBlack,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: size.height * 0.2,
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Container(
                                      height: size.height * 0.2,
                                      width: size.width * 0.45,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.cardColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding:
                                          EdgeInsets.only(left: 12, right: 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 25.0,
                                          ),
                                          Image.asset(
                                            'assets/s1.png',
                                            height: 40,
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            'Requests',
                                            style: GoogleFonts.getFont('Outfit',
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  color:
                                                      ColorConstant.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ),
                                          Text(
                                            'DB Club',
                                            style: GoogleFonts.getFont('Outfit',
                                                textStyle: TextStyle(
                                                  fontSize: 18,
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                )),
                                          ),
                                          Text(
                                            'Sunny Club',
                                            style: GoogleFonts.getFont('Outfit',
                                                textStyle: TextStyle(
                                                  fontSize: 18,
                                                  color:
                                                      ColorConstant.blackColor,
                                                  fontWeight: FontWeight.w700,
                                                )),
                                          ),
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Container(
                                      height: size.height * 0.2,
                                      width: size.width * 0.45,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.cardColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding:
                                          EdgeInsets.only(left: 12, right: 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 25.0,
                                          ),
                                          Image.asset(
                                            'assets/s2.png',
                                            height: 40,
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            'Requests',
                                            style: GoogleFonts.getFont('Outfit',
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  color:
                                                      ColorConstant.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '£ 12.44',
                                                style: GoogleFonts.getFont(
                                                    'Outfit',
                                                    textStyle: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorConstant
                                                          .blackColor,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                              ),
                                              Text(
                                                'Due',
                                                style: GoogleFonts.getFont(
                                                    'Outfit',
                                                    textStyle: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '£ 235.33',
                                                style: GoogleFonts.getFont(
                                                    'Outfit',
                                                    textStyle: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorConstant
                                                          .blackColor,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                              ),
                                              Text(
                                                'Paid',
                                                style: GoogleFonts.getFont(
                                                    'Outfit',
                                                    textStyle: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorConstant
                                                          .greenColor,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                )
                              ],
                            ))),
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Image.asset('assets/demo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, bottom: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Places To Eat   ',
                      style: GoogleFonts.getFont('Outfit',
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: ColorConstant.lightBlack,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListItem(
                                      title: 'Places To Eat',
                                    )));
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.getFont('Outfit',
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.appColor,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.25,
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(2), // Padding around the grid
                  itemCount: image.length, // The number of items in the grid
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      childAspectRatio: 0.85),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(image[index]),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  'Aroma Mocha',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorConstant.blackColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: ColorConstant.greyColor,
                                ),
                                Text(
                                  '0.5 M away',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      color: ColorConstant.greyColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget scoures() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '14',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Match',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.lightBlack)),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1,455',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Runs',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.lightBlack)),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '06',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '50’s',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.lightBlack)),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '02',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '100’s',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.lightBlack)),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.whiteColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '13',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.blackColor)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'SR',
                  style: GoogleFonts.getFont('Outfit',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.lightBlack)),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }
}
