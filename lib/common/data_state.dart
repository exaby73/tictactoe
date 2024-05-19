import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/common/failure.dart';

part 'data_state.freezed.dart';

@freezed
sealed class DataState<T> with _$DataState<T> {
  const factory DataState.initial() = DataStateInitial;

  const factory DataState.loading() = DataStateLoading;

  const factory DataState.success(T data) = DataStateSuccess;

  const factory DataState.failure(Failure failure) = DataStateFailure;
}
