import 'package:dartz/dartz.dart';

extension IteratableX<E> on Iterable<E> {
  IList<E> toIList() {
    return IList<E>.from(this);
  }
}
