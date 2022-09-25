import 'package:get/get.dart';
import 'package:meuestudo/presentation/states/page_state.dart';

abstract class PageCtrl extends GetxController {
  final _state = PageState().obs;
  
  PageState get state => _state.value;
  
  set state(PageState state) {
    _state(state);
  }

}