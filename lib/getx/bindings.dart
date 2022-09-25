import 'package:get/get.dart';
import 'package:meuestudo/data/repositories/disciplina_repository.dart';
import 'package:meuestudo/presentation/controllers/home_ctrl.dart';

class DependenciesBindig implements Bindings{
  @override
  void dependencies() {
    Get.put(DisciplinaRepository());
    Get.put(HomeCtrl());
  }

}