import 'package:get/get.dart';
import 'package:meuestudo/core/page_ctrl.dart';
import 'package:meuestudo/data/repositories/disciplina_repository.dart';
import 'package:meuestudo/domain/disciplina.dart';
import 'package:meuestudo/presentation/states/page_state.dart';

class HomeCtrl extends PageCtrl {
  DisciplinaRepository repository = Get.find();

  Future<void> search() async {
    state = PageLoadingState();
    (await repository.all()).fold((failure) => state = PageFailureState(),
        (disciplinas) {
      state = PageSuccessState<List<Disciplina>>(disciplinas);
    });
  }
}
