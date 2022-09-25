class PageState {}

class PageLoadingState extends PageState {}

class PageFailureState extends PageState {

  String message;
  PageFailureState([this.message = 'Erro']);

}

class PageSuccessState<T> extends PageState {
  T data;
  PageSuccessState(this.data);
}