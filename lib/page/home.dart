import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),

      body: Container(),


      //TODO MENU BAR
      bottomNavigationBar: _BottomAppBar(
        
      ),
      floatingActionButton: true ? FloatingActionButton(
        onPressed: (){},
        tooltip: 'Create',
        child: const Icon(Icons.add),
        // ignore: dead_code
        ):null,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
class _MenuBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: MenuBar(
                children: [
                  MenuEntry.build(_get)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
  
}

class _BottomAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: true ? CircularNotchedRectangle(): null,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.menu),
                tooltip: 'Open Menu',
                ),
              IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        
      ),
    );
  }
  //final FloatingActionButtonLocation fabLocation;
  //final NotchedShape? shape;


}