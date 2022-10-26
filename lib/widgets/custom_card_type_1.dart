import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.title, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Elit ex laborum veniam voluptate dolor aliquip cillum non enim esse sunt. Incididunt velit cillum duis cillum consectetur nulla sint aliqua pariatur ipsum nisi. Laboris deserunt reprehenderit sit nisi sit. Mollit cillum sunt ea velit.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    
                  }, 
                  child: const Text('cancel'),
                ),
                TextButton(
                  onPressed: () {
                    
                  }, 
                  child: const Text('ok'),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}