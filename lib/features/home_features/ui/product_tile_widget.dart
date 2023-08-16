import 'package:flutter/material.dart';
import 'package:smeconnect/features/home_features/bloc/home_bloc.dart';
import 'package:smeconnect/features/home_features/models/home_product_data_model.dart';

class ProductList extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;
  const ProductList({super.key, required this.productDataModel, required this.homeBloc});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.all(Radius.circular(8)),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.lightGreen)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productDataModel.imageUrl))),
        ),
        const Divider(
          thickness: 1,
        ),
        // const SizedBox(height: 20),
        Text(productDataModel.name,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text(productDataModel.description,style:  TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.grey.shade600),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$."+productDataModel.price.toString(),style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
           Row(
            children: [
              IconButton(onPressed: (){
                homeBloc.add(HomeProductWishlistButtonClickEvent(
                 clickedProduct:productDataModel,
                  ));
              }, icon: Icon(Icons.favorite_border_outlined)),
              IconButton(onPressed: (){
                homeBloc.add(HomeProductCartButtonClickEvent(
                 clickedProduct: productDataModel
                ));
              }, icon: Icon(Icons.shopping_bag_outlined)),


            ],
           )
          ],
        ),
      ]),
    );
  }
}
