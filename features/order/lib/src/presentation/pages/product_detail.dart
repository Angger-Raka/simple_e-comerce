import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:order/order.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  EdgeInsets paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20.0);
  final List<String> images = [
    MainAssets.product3,
    MainAssets.product3,
    MainAssets.product3,
    MainAssets.product3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.primary,
        title: const Text("Detail Produk"),
      ),
      body: ListView(
        children: [
          ImageSlider(items: images),
          16.sbh,
          ProductInfoWidget(
            padding: paddingHorizontal,
            product: ProductModel(
              images: images,
              name: 'Nike Air Zoom 36',
              price: 700000,
            ),
            onWishlistTap: (isWishlist) {
              // TODO: on wishlist tap
            },
          ),
          11.sbh,
          ProductDescriptionWidget(
            padding: paddingHorizontal,
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.',
          ),
          11.sbh,
          Padding(
            padding: paddingHorizontal,
            child: Divider(
              color: ColorName.grey.withOpacity(0.18),
            ),
          ),
          11.sbh,
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.18)),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Button.filled(
                onPressed: () {
                  context.go(NamedRoutes.dashboard);
                },
                label: "Add to Cart",
              ),
            ),
            15.sbh,
            Flexible(
              child: Button.outlined(
                onPressed: () {
                  context.push(
                    NamedRoutes.payment,
                    extra: "https://www.youtube.com/",
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const PaymentPage()),
                  // );
                },
                label: "Buy Now",
                color: ColorName.light,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
