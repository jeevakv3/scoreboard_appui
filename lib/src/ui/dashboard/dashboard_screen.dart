import '../../../allpackages.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<String> items = ['Dashboard', 'Clubs', 'Leagues', 'More'];

  Widget _cuurentPage = const Home();

  int selectedBottomNavItem = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: _cuurentPage,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        height: 80,
        child: SizedBox(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedBottomNavItem = index;
                    navigateScreen(index);
                  });
                },
                child: Container(
                  width: 70,
                  height: 55,
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Image.asset(
                            _getIcons(index),
                            color: selectedBottomNavItem == index
                                ? ColorConstant.appColor
                                : Colors.grey,
                            height: index == 4 ? 12 : 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          _getLabelText(index),
                          style: TextStyle(
                            color: selectedBottomNavItem == index
                                ? ColorConstant.appColor
                                : Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  void _updateScreen(Widget screen) {
    setState(() {
      _cuurentPage = screen;
    });
  }

  navigateScreen(int index) {
    switch (index) {
      case 0:
        _updateScreen(const Home());
      case 1:
        _updateScreen(const Center(child: Text('Clubs')));
      case 2:
        _updateScreen(const Center(child: Text('Leagues')));
      case 3:
        _updateScreen(const Center(child: Text('More')));
      default:
        _updateScreen(const Home());
    }
  }

  _getIcons(int index) {
    switch (index) {
      case 0:
        return 'assets/dashboard.png';
      case 1:
        return 'assets/clubs.png';
      case 2:
        return 'assets/leagues.png';
      case 3:
        return 'assets/more.png';
      default:
        return 'assets/dashboard.png';
    }
  }

  String _getLabelText(int index) {
    switch (index) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Clubs';
      case 2:
        return 'Leagues';
      case 3:
        return 'More';
      default:
        return 'Dashboard';
    }
  }
}
