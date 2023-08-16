part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}
class HomeIntialEvent extends HomeEvent{}

class HomeProductWishlistButtonClickEvent extends HomeEvent{
  final ProductDataModel clickedProduct;

  HomeProductWishlistButtonClickEvent({required  this.clickedProduct});



}
class HomeProductCartButtonClickEvent extends HomeEvent{
  final ProductDataModel clickedProduct;

  HomeProductCartButtonClickEvent({required this.clickedProduct});
  

  
}
class HomeProductWishlistNavigateClickEvent extends HomeEvent{
  
}
class HomeProductCartNaviagteClickEvent extends HomeEvent{
  
}
