import 'package:flutter/material.dart';
import 'package:slicing_drible_food/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selectkeberapa = 0;
  updateselect(selected) {
    selectkeberapa = selected;
    setState(() {});
  }

  List<Map> ListCategory = [
    {"label": "All"},
    {
      "label": "Pizza",
      "gambar": "https://cdn-icons-png.flaticon.com/512/3595/3595455.png"
    },
    {
      "label": "Burger",
      "gambar": "https://cdn-icons-png.flaticon.com/512/878/878052.png"
    },
    {
      "label": "Minuman",
      "gambar": "https://cdn-icons-png.flaticon.com/512/2738/2738730.png"
    },
    {
      "label": "Snack",
      "gambar": "https://cdn-icons-png.flaticon.com/512/859/859354.png"
    },
  ];
}
