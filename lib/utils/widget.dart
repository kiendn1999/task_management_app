import 'package:flutter/material.dart';
import 'package:task_management_app/models/brading.dart';

List<int> listSelected = [];

appBar({title, context}) {
  return AppBar(
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline1,
    ),
    centerTitle: true,
    bottom: PreferredSize(
        child: Container(
          color: Color(0xFFEDEEF2),
          height: 2.0,
        ),
        preferredSize: Size.fromHeight(0.0)),
    leading: IconButton(
      icon: Image.asset("assets/images/ic_search.png"),
      onPressed: () {},
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
          visualDensity: VisualDensity(horizontal: -4,vertical: -4),
          icon: Image.asset("assets/images/ic_notification.png"),
          onPressed: () {}),
      IconButton(
        visualDensity: VisualDensity(vertical: -4),
        icon: Image.asset("assets/images/avatar.png"),
        onPressed: () {},
      ),
    ],
  );
}

bottomNavigationBar() {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/ic_calender.png"),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/ic_activity.png"),
        label: 'Business',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/ic_add.png"),
        label: 'School',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/ic_document.png"),
        label: 'Business',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/ic_setting.png"),
        label: 'School',
      ),
    ],
//currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[800],
//onTap: (){},
  );
}

button({top, context, content, toScreen}) {
  return Container(
    margin: EdgeInsets.only(top: top),
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      onPressed: () {
        var route = MaterialPageRoute(builder: (context) => toScreen);
        Navigator.push(context, route);
      },
      child: Text(
        content,
      ),
    ),
  );
}

listViewTickBranding({setState}) {
  return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 9.6,
        );
      },
      itemCount: brandingList.length,
      itemBuilder: (context, index) {
        return tickBranding(setState: setState, index: index, context: context);
      });
}

tickBranding({index, setState, context}) {
  return TextButton(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 17,
          child: Checkbox(
            visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Theme.of(context).primaryColor,
            value: listSelected.contains(index) ? true : false,
            onChanged: (newValue) {},
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            brandingList[index].branding,
            style: listSelected.contains(index)
                ? Theme.of(context).textTheme.headline3
                : Theme.of(context).textTheme.headline4,
          ),
        )
      ],
    ),
    style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(0, 0),
        padding: EdgeInsets.only(top: 10, bottom: 13, left: 16),
        side: listSelected.contains(index)
            ? BorderSide(color: Theme.of(context).primaryColor)
            : BorderSide(style: BorderStyle.none),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
    onPressed: () {
      setState(() {
        if (listSelected.contains(index))
          listSelected.remove(index);
        else
          listSelected.add(index);
      });
    },
  );
}
