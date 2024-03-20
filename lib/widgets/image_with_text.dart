import 'package:flutter/material.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),

      height: 250, // Fixed height for the image
      child: Stack(
        children: [
          // Image
          Container(
            child: Image.network(
              'https://media.istockphoto.com/id/640274128/photo/barber-using-scissors-and-comb.webp?b=1&s=170667a&w=0&k=20&c=afK3ERG54QD5fdfn8HTWjhjOPywSyu7ZoO7AAHK7Igs=', // Sample image URL
              fit: BoxFit.cover,
              width: double.infinity,
              color: Color.fromRGBO(
                  54, 53, 53, 0.831), // Set color with opacity (R,G,B,Opacity)
              colorBlendMode: BlendMode.modulate, // Adjust opacity as needed
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),

              padding: EdgeInsets.all(10.0), // Adjust padding as needed
              // color: Colors.black.withOpacity(0.5), // Background color for text
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Fade Factory',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white)),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 10,
                      ),
                      SizedBox(width: 7),
                      Text('Jaga Expo Center(2km)',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: Color.fromARGB(211, 255, 255, 255),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.white, size: 10),
                      SizedBox(width: 7),
                      Text('5.0',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: Color.fromARGB(218, 255, 255, 255),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),

              padding: EdgeInsets.all(17.0), // Adjust padding as needed
              // color: Colors.black.withOpacity(0.5), // Background color for text
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 14,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[850],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Book Appointment',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}