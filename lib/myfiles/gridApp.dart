import 'package:flutter/material.dart';

void main(){
  runApp(const GridApp());
}
class GridApp extends StatelessWidget{
  const GridApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: GridViewBuilderWidget(),
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcons.getIconList();
    return GridView.builder(
      itemCount: _iconList.length,
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        print('_buildGridViewBuilder $index');
        return Card(
          color: Colors.lightGreen.shade50,
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              print('Tapped on index $index');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _iconList[index],
                  size: 48.0,
                  color: Colors.indigo,
                ),
                Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class GridIcons {
  static List<IconData> getIconList() {

    return [
      Icons.directions_car,
      Icons.ac_unit,
      Icons.flight,
      Icons.cake,
      Icons.ac_unit,
      Icons.access_alarm,
      Icons.face,
      Icons.star,
      Icons.access_alarm,
      Icons.access_alarm,
      Icons.access_alarm,

    ];
  }
}