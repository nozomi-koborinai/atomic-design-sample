import 'package:atomic_design_sample/components/molecules/neumorphic_icon_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AtomicDesignSamplePage extends StatelessWidget {
  const AtomicDesignSamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Atomic Design Sample',
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              // organisms1
              SizedBox(
                child: NeumorphicIconButton(
                  backColor: Colors.grey[300],
                  icon: Icons.favorite,
                  foreColor: Colors.pink[200],
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'images/poly.png',
                  ),
                ),
              ),
              SizedBox(
                child: NeumorphicIconButton(
                  backColor: Colors.green[100],
                  icon: Icons.favorite,
                  foreColor: Colors.grey[500],
                  onPressed: () {},
                ),
              ),
              // organisms1
            ],
          ),
          ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              })
        ],
      ),
    );
  }
}
