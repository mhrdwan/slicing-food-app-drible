import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:slicing_drible_food/core.dart';
import '../view/product_detail_view.dart';

class ProductDetailController extends State<ProductDetailView> {
  static late ProductDetailController instance;
  late ProductDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
