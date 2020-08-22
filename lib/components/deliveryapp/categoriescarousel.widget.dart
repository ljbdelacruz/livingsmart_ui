




import 'package:flutter/material.dart';
import 'package:foody_ui/components/deliveryapp/categoriescarouselitem.widget.dart';
import 'package:foody_ui/components/progress/circularloading.progress.dart';
import 'package:foody_ui/typdef/mytypedef.dart';


// ignore: must_be_immutable
class CategoriesCarouselWidget extends StatelessWidget {
  List<CategoryItems> categories;
  final GetStringData selectedItem;

  CategoriesCarouselWidget(this.selectedItem, {Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return this.categories.isEmpty
        ? CircularLoadingWidget(height: 150)
        : Container(
            height: 150,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: this.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                double _marginLeft = 0;
                (index == 0) ? _marginLeft = 20 : _marginLeft = 0;
                return new CategoriesCarouselItemWidget(this.selectedItem,
                  marginLeft: _marginLeft,
                  category: this.categories.elementAt(index),
                );
              },
            ));
  }
}

class CategoryItems{
  int id;
  String description;
  String image;
  CategoryItems(this.id, this.description, this.image);
}
