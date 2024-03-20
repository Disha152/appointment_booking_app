import 'package:flutter/material.dart';

import '../models/product_model.dart';


class HorizontalScrollWidget extends StatelessWidget {
  const HorizontalScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
     final List<Product> products = [
    Product(
        name: 'Basic Haircut',
        price: '\$10',
        imageUrl:
            'https://media.istockphoto.com/id/640274128/photo/barber-using-scissors-and-comb.webp?b=1&s=170667a&w=0&k=20&c=afK3ERG54QD5fdfn8HTWjhjOPywSyu7ZoO7AAHK7Igs='),
    Product(
        name: 'Kids Haircut',
        price: '\$20',
        imageUrl:
            'https://media.istockphoto.com/id/1484293368/photo/young-man-receiving-new-hairstyle-at-barber-shop.webp?b=1&s=170667a&w=0&k=20&c=3kmm_HIjGIHN3bNwvZqNjOlPSHQ4EKwYMwj7raEjXY0='),
    Product(
        name: 'Hair Coloring',
        price: '\$30',
        imageUrl:
            'https://media.istockphoto.com/id/1984860331/photo/hairdresser-is-cutting-hair-for-female-customers-with-scissors-to-cut-hair-in-a-beauty-salon.webp?b=1&s=170667a&w=0&k=20&c=PtPowm_di3hZ8saWS4b09wTUP_lxnauHivhZLkuVeds='),
    Product(
        name: 'Hair Treatment',
        price: '\$40',
        imageUrl:
            'https://media.istockphoto.com/id/1146328575/photo/young-woman-having-her-hair-dyed-by-beautician-at-parlor.webp?b=1&s=170667a&w=0&k=20&c=uuAQonx_WYfujZfD4RQUxXn5gIOV9yhwcOs6oQR0w3Q='),
    Product(
        name: 'Hair Spa',
        price: '\$50',
        imageUrl:
            'https://media.istockphoto.com/id/851007946/photo/woman-getting-hair-shampooed-at-salon.webp?b=1&s=170667a&w=0&k=20&c=1869mjAAf8EMPjTR0mOjIBBI-iVxbK4jw8mNHUEy5KE='),
  ];
    return Container(
      height: 200, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onSelect: (Product) {},
          );
        },
      ),
    );
  }
}


 class ProductCard extends StatefulWidget {
  final Product product;
  final Function(Product) onSelect;

  const ProductCard({required this.product, required this.onSelect});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.onSelect(widget.product); // Notify parent widget about selection
        });
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(widget.product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: isSelected ? Colors.white : Colors.transparent, // Add white border if selected
                      width: 2.0,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        )
                      : SizedBox(), // Empty SizedBox if not selected
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              widget.product.name,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              widget.product.price,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
 