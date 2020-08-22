
import 'package:flutter/material.dart';
import 'package:foody_ui/typdef/mytypedef.dart';


class CategoryCells extends StatelessWidget {
  final GetIntData billerTag;
  final CategoryCellsVM vm;
  CategoryCells(this.vm, this.billerTag);

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product>(context, listen: false);
    // final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            this.billerTag(this.vm.index);
          },
          child:Image.asset(this.vm.imageUrl, fit: BoxFit.cover,),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            vm.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize:vm.titleFz)
          ),
        ),
      ),
    );
  }
}
class CategoryCellsVM{
  int index;
  String title;
  String imageUrl;
  double titleFz = 10;
  CategoryCellsVM(this.index, this.title, this.imageUrl, this.titleFz);

}

