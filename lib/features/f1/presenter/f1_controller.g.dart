// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'f1_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$F1Controller on _F1ControllerBase, Store {
  final _$playersAtom = Atom(name: '_F1ControllerBase.players');

  @override
  List<Player> get players {
    _$playersAtom.reportRead();
    return super.players;
  }

  @override
  set players(List<Player> value) {
    _$playersAtom.reportWrite(value, super.players, () {
      super.players = value;
    });
  }

  final _$errorAtom = Atom(name: '_F1ControllerBase.error');

  @override
  Failure? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(Failure? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$initValuesAsyncAction = AsyncAction('_F1ControllerBase.initValues');

  @override
  Future<void> initValues() {
    return _$initValuesAsyncAction.run(() => super.initValues());
  }

  @override
  String toString() {
    return '''
players: ${players},
error: ${error}
    ''';
  }
}
