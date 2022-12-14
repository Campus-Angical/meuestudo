import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meuestudo/getx/bindings.dart';
import 'package:meuestudo/presentation/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      initialBinding: DependenciesBindig(),
      home:  HomePage(),
      
    );
    
  }
}
