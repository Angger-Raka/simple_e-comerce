import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController searchController;
  final List<ProductModel> products = [
    ProductModel(
      images: [MainAssets.product1],
      name: 'Tas Kekinian',
      price: 200000,
    ),
    ProductModel(
      images: [MainAssets.product2],
      name: 'Earphone',
      price: 199999,
    ),
    ProductModel(
      images: [MainAssets.product3],
      name: 'Sepatu Pria',
      price: 700000,
    ),
    ProductModel(
      images: [MainAssets.product4],
      name: 'Earphone',
      price: 670000,
    ),
  ];

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final List<String> images = [
      MainAssets.recomendedProductBanner,
      MainAssets.recomendedProductBanner,
      MainAssets.recomendedProductBanner,
    ];

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          20.sbh,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.addressDelivery,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Sleman, DI Yogyakarta",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ColorName.primary,
                        ),
                      ),
                      5.sbw,
                      const Icon(
                        Icons.expand_more,
                        size: 18.0,
                        color: ColorName.primary,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  // IconButton(
                  //     onPressed: () {
                  //       // Navigator.push(
                  //       //   context,
                  //       //   MaterialPageRoute(
                  //       //       builder: (context) => const SizedBox()),
                  //       // );
                  //     },
                  //     icon: Image.asset(
                  //       MainAssets.iconBuy,
                  //       height: 24.0,
                  //     )),
                  IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const SizedBox()),
                        // );
                      },
                      icon: Image.asset(
                        MainAssets.iconNotificationHome,
                        height: 24.0,
                      )),
                ],
              ),
            ],
          ),
          16.sbh,
          SearchInput(
            controller: searchController,
            onChanged: (value) {},
          ),
          16.sbh,
          ImageSlider(items: images),
          12.sbh,
          Text(
            l10n.category,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
          12.sbh,
          Row(
            children: [
              Flexible(
                child: CategoryButton(
                  imagePath: MainAssets.fashion1,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: MainAssets.fashion2,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: MainAssets.fashion3,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: MainAssets.more,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
            ],
          ),
          16.sbh,
          Text(
            l10n.product,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
          8.sbh,
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 55.0,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) => ProductCard(
              data: products[index],
            ),
          ),
        ],
      ),
    );
  }
}
