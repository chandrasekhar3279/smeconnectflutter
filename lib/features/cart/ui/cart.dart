import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smeconnect/features/cart/bloc/cart_bloc.dart';
import 'package:smeconnect/features/cart/ui/cart_tile_widget.dart';
import 'package:smeconnect/features/home_features/ui/product_tile_widget.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartBloc cartBloc = CartBloc();
  @override
  void initState() {
    // TODO: implement initState
    cartBloc.add(CartInitialEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart page'),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is !CartActionState,
        bloc:cartBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          switch(state.runtimeType){
            case CartSuccessState:
            final successState = state as CartSuccessState;
            return ListView.builder(
                itemCount: successState.cartItems.length,
                itemBuilder: (context,index){
                return CartList(
                  cartBloc: cartBloc,
                  productDataModel: successState.cartItems[index]);
              });


            default:
          }
          return Container();
        },
      ),
    );
  }
}
