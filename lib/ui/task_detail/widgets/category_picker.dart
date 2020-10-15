import 'package:easy_tasks/domain/category/category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<TaskCategory> pickCategory(BuildContext context) async {
  return await showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    context: context,
    builder: (context) => Container(
      height: 460,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: CategoryPickerWidget(),
    ),
  );
}

class CategoryPickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
    // final UserId id = Provider.of<UserId>(context);
    // return StreamBuilder<List<TaskCategory>>(
    //     stream: CategoryService.instance.streamCategory(id.id),
    //     builder: (context, categories) {
    //       if (!categories.hasData) {
    //         return Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       }
    //       return Container(
    //         padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //                 topRight: Radius.circular(20.0),
    //                 topLeft: Radius.circular(20.0))),
    //         child: Column(
    //             children: [
    //               SizedBox(
    //                 height: 16.0,
    //               ),
    //               Text(
    //                 'Select category',
    //                 textAlign: TextAlign.center,
    //                 style: TextStyle(
    //                   fontSize: 24.0,
    //                   color: Colors.black,
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 16.0,
    //               ),
    //               Container(
    //                 height: 340,
    //                 child: ListView.builder(
    //                   padding:
    //                       EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    //                   itemCount: categories.data.length,
    //                   itemBuilder: (context, index) {
    //                     final item = categories.data[index];
    //                     return CategoryItem(item);
    //                   },
    //                 ),
    //               ),
    //             ]),
    //       );
    //     });
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem(this.item);

  final TaskCategory item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pop(context, item),
      leading: Icon(
        item.icon,
        size: 24.0,
        color: item.color,
      ),
      title: Text(
        item.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
