import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.pexels.com/photos/572688/pexels-photo-572688.jpeg?cs=srgb&dl=pexels-tyler-lastovich-572688.jpg&fm=jpg', name: 'Un hermoso paisaje'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/index/2022/10/18/11-44-28-337_1440x550.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://pga-tour-res.cloudinary.com/image/upload/c_fill,dpr_3.0,f_auto,g_center,h_393,q_auto,w_713/v1/pgatour/editorial/2022/04/17/fleetwood-1694-patricksmith.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1542553458-79a13aebfda6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
