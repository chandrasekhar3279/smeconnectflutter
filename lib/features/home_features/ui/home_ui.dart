import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smeconnect/features/cart/ui/cart.dart';
import 'package:smeconnect/features/home_features/bloc/home_bloc.dart';
import 'package:smeconnect/features/home_features/ui/product_tile_widget.dart';
import 'package:smeconnect/features/wishlist/ui/wish_list.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  void initState() {
    // TODO: implement initState
    homeBloc.add(HomeIntialEvent());
    super.initState();
  }

  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>const Cart()));
        } else if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>const WishList()));
        } else if (state is HomeProductItemWishlistedActionState){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Item Added to Wishlist'),));
        }
         else if (state is HomeProductItemCartedActionState){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Item Added to Cartlist'),));
        };
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case HomeLoadedSuccessState:
          final successState = state as HomeLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text('Grocery App'),
                actions: [
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomeProductWishlistNavigateClickEvent());
                      },
                      icon: const Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomeProductCartNaviagteClickEvent());
                      },
                      icon: const Icon(Icons.shopping_bag_outlined)),
                ],
              ),
              body: ListView.builder(
                itemCount: successState.products.length,
                itemBuilder: (context,index){
                return ProductList(
                  homeBloc: homeBloc,
                  productDataModel: successState.products[index]);
              }),
            );
          case HomeErrorState:
            return const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
