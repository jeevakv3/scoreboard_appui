import '../../../allpackages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Overview'),
    const Tab(text: 'Events'),
    const Tab(text: 'Payments'),
    const Tab(text: 'Places'),
    const Tab(text: 'News'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 2.0),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset(
                  'assets/profile.png',
                  fit: BoxFit.fill,
                  height: 42,
                ),
              ),
              title: Text(
                'Marnus',
                style: GoogleFonts.getFont('Outfit',
                    textStyle: TextStyle(
                      fontSize: 19,
                      color: ColorConstant.blackColor,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              subtitle: Text(
                'Right hand batsman, Leeds',
                style: GoogleFonts.getFont('Outfit',
                    textStyle: TextStyle(
                      fontSize: 13,
                      color: ColorConstant.greyColor,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              trailing: Image.asset(
                'assets/notification.png',
                height: 35,
              ),
            ),
          ),
          TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: ColorConstant.appColor,
            unselectedLabelColor: ColorConstant.greyColor,
            labelColor: ColorConstant.appColor,
            tabs: myTabs,
            labelStyle: GoogleFonts.getFont('Outfit',
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: myTabs.map((Tab tab) {
                final String label = tab.text!;
                return tab.text == 'Overview'
                    ? const OverViewScreen()
                    : Center(
                        child: Text(
                          'No record found $label page',
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
