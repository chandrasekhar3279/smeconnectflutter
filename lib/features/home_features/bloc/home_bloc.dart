import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smeconnect/data/cart_items.dart';
import 'package:smeconnect/data/grocery_data.dart';
import 'package:smeconnect/data/wish_list_items.dart';
import 'package:smeconnect/features/home_features/models/home_product_data_model.dart';
import 'package:smeconnect/features/wishlist/ui/wish_list.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeIntialEvent>(homeIntialEvent);
    on<HomeProductWishlistNavigateClickEvent>(
        homeProductWishlistNavigateClickEvent);
    on<HomeProductCartNaviagteClickEvent>(homeProductCartNaviagteClickEvent);
    on<HomeProductCartButtonClickEvent>(homeProductCartButtonClickEvent);
    on<HomeProductWishlistButtonClickEvent>(
        homeProductWishlistButtonClickEvent);
  }

  FutureOr<void> homeIntialEvent(
      HomeIntialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(
      HomeLoadedSuccessState(
        products: GroceryData.groceryProducts.map((e) => ProductDataModel(
            id: e['id'],
            name: e['name'],
            description: e['description'],
            price: e['price'],
            imageUrl: e['imageUrl'])).toList(),
      ),
    );
  }

  FutureOr<void> homeProductWishlistNavigateClickEvent(
      HomeProductWishlistNavigateClickEvent event, Emitter<HomeState> emit) {
    print('Wishlist Clicked');
    emit(HomeNavigateToWishlistPageActionState());
  }

  FutureOr<void> homeProductCartNaviagteClickEvent(
      HomeProductCartNaviagteClickEvent event, Emitter<HomeState> emit) {
    print('Cart Clicked');
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeProductCartButtonClickEvent(
      HomeProductCartButtonClickEvent event, Emitter<HomeState> emit) {
    print('Clicked on product to cart');
    cartItems.add(event.clickedProduct);
    emit(HomeProductItemCartedActionState());
  }

  FutureOr<void> homeProductWishlistButtonClickEvent(
      HomeProductWishlistButtonClickEvent event, Emitter<HomeState> emit) {
    print('WishList on product  clicked');
    wishListItems.add(event.clickedProduct);
    emit(HomeProductItemWishlistedActionState());
  }
}
