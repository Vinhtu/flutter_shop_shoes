// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_shop_shoes/models/ProductModel.dart';
// import 'dart:async';
// import '../../model/cart_model.dart';
// import '../../model/product_model.dart';
// import 'package:equatable/equatable.dart';

// part "cart_event.dart";
// part "cart_state.dart";

// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartLoading());

//   @override
//   Stream<CartState> mapEventToState(
//     CartEvent event,
//   ) async* {
//     if (event is CartStarted) {
//       yield* _mapCartStartedToState();
//     } else if (event is CartProductAdded) {
//       yield* _mapCartProductAddedToState(event, state);
//     } else if (event is CartProductRemoved) {
//       yield* _mapCartProductRemovedToState(event, state);
//     }
//     //toto
//   }

//   Stream<CartState> _mapCartStartedToState() async* {
//     yield CartLoading();
//     try {
//       await Future<void>.delayed(Duration(seconds: 1));
//       yield CartLoaded();
//     } catch (_) {}
//   }

//   Stream<CartState> _mapCartProductAddedToState(
//       CartProductAdded event, CartState state) async* {
//     if (state is CartLoaded) {
//       try {
//         yield CartLoaded(
//             cartmodel: CartModel(
//                 products: List.from((state.cartmodel.products)
//                   ..add(event.product as ProductModel))));
//       } catch (_) {}
//     }
//   }

//   Stream<CartState> _mapCartProductRemovedToState(
//       CartProductRemoved event, CartState state) async* {
//     if (state is CartLoaded) {
//       try {
//         yield CartLoaded(
//             cartmodel: CartModel(
//                 products: List.from(
//                     (state.cartmodel.products)..remove(event.product))));
//       } catch (_) {}
//     }
//   }
// }
