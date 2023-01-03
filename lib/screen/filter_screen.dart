import "package:flutter/material.dart";
import 'package:training3clone/Widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {

  static const routeName = "/filter_screen";

  final Map<String,dynamic> currentFilters;
  final Function saveFilters;

  FilterScreen(this.currentFilters,this.saveFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  var _forAdult = false;
  var _horror = false;

  @override
  initState(){
    _forAdult = widget.currentFilters["forAdult"];
    _horror = widget.currentFilters["horror"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              final _selectedFilter={
                "forAdult" : _forAdult,
                "horror": _horror,
              };
              widget.saveFilters(_selectedFilter);
              },
            icon: Icon(Icons.save),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your book selections",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SwitchListTile(
                  title: Text(
                    "For Kids",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text("For Age restrictions"),
                  value: _forAdult,
                  onChanged: (newValue){
                    setState((){
                      _forAdult = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text(
                    "For Non-Horror",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text("For Horror restrictions"),
                  value: _horror,
                  onChanged: (newValue){
                    setState((){
                      _horror = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
