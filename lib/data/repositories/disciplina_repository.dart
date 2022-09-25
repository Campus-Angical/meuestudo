import 'package:meuestudo/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:meuestudo/domain/disciplina.dart';

class DisciplinaRepository {

  List<Disciplina> disciplinas = [];
  
  Future<Either<Failure, List<Disciplina>>> all() async {
    return right(disciplinas);
  }

}