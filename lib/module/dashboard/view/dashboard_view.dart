import 'package:flutter/material.dart';
import 'package:slicing_drible_food/core.dart';
import 'package:slicing_drible_food/state_util.dart';

import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);
  Widget build(context, DashboardController controller) {
    double ukuranlayar = MediaQuery.of(context).size.width;
    void navigateToProductDetail() {
      // Use Navigator or another navigation method
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ProductDetailView(),
      ));
    }

    controller.view = this;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Ciracas, Jakarta Timur",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            //
          },
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mau Makan Apa Hari Ini?",
                  style: TextStyle(
                      fontSize: ukuranlayar * 1 / 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 40.0,
                  child: ListView.builder(
                    itemCount: controller.ListCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = controller.ListCategory[index];
                      bool dipilih = controller.selectkeberapa == index;

                      return InkWell(
                          onTap: () => controller.updateselect(index),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                color: dipilih
                                    ? Colors.orange
                                    : Colors.transparent),
                            margin: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              children: [
                                if (item["gambar"] != null)
                                  Image.network(
                                    item["gambar"],
                                    width: ukuranlayar * 1 / 17,
                                  ),
                                const SizedBox(width: 6.0),
                                Text(
                                  item["label"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ));
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Popular",
                  style: TextStyle(
                      fontSize: ukuranlayar * 1 / 19,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: ukuranlayar * 1 / 2,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => navigateToProductDetail(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: ukuranlayar * 1 / 3,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://media.istockphoto.com/id/879515574/id/foto/kubis-kimchi-hidangan-pembuka-korea-dalam-mangkuk-keramik-horisontal.jpg?s=2048x2048&w=is&k=20&c=UYgzm7WqxHytJZCo-B9ltqpsZDqk0Gfg03iyRhucsGI=",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              "Bakwan Seblak",
                              style: TextStyle(
                                fontSize: ukuranlayar * 1 / 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rp.15.000",
                                  style: TextStyle(
                                    fontSize: ukuranlayar * 1 / 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.lock_clock_outlined,
                                  size: ukuranlayar * 1 / 25,
                                ),
                                const SizedBox(
                                  width: 2.0,
                                ),
                                Text(
                                  "10-14 min",
                                  style: TextStyle(
                                    fontSize: ukuranlayar * 1 / 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.star,
                                  size: ukuranlayar * 1 / 25,
                                ),
                                const SizedBox(
                                  width: 2.0,
                                ),
                                Text(
                                  "4,7",
                                  style: TextStyle(
                                    fontSize: ukuranlayar * 1 / 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Semua Restoran",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ukuranlayar * 1 / 19,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://media.istockphoto.com/id/454064639/id/foto/mie-dengan-makanan-laut.jpg?s=2048x2048&w=is&k=20&c=8bbV_oOheD13deaHmGIbJTlMd8Gok78t7DUnFWTmAmw=",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "Seblak Ciracas",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 10.0,
                                    child: Icon(
                                      Icons.fire_extinguisher_rounded,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 10.0,
                                    child: Icon(
                                      Icons.thumb_up,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "256 Cal",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    "P/F/C: 12/10/31",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    "53.8 °C",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "12 Menu Tersedia",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  const Spacer(),
                                  Transform.scale(
                                    scale: 1,
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton.icon(
                                      icon: const Icon(Icons.card_membership),
                                      label: const Text("Add to Cart"),
                                      style: ElevatedButton.styleFrom(),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
