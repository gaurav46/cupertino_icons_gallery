import '../gallery_exporter.dart';
import 'home_screens.dart';
import 'rail/navrail.dart';

class CupertinoIconsHome extends StatelessWidget {
  const CupertinoIconsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GalleryResponsive(
      mobile: const Scaffold(
        // appBar: homeAppBar(context: context, ref: ref),
        body: HomeScreens(),
        extendBody: true,
        // bottomNavigationBar: const HomeNavBar(),
      ),

      // * desktop and tablet view
      desktop: Row(
        children: const [
          // rail
          HomeNavRail(),
          // body
          Expanded(
            child: Scaffold(
              // appBar: homeDesktopAppBar(context: context, ref: ref),
              body: HomeScreens(),
            ),
          ),
        ],
      ),
    );
  }
}
