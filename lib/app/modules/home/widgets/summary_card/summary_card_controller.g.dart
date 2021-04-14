// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_card_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SummaryCardController = BindInject(
  (i) => SummaryCardController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SummaryCardController on _SummaryCardControllerBase, Store {
  final _$valueAtom = Atom(name: '_SummaryCardControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_SummaryCardControllerBaseActionController =
      ActionController(name: '_SummaryCardControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SummaryCardControllerBaseActionController
        .startAction(name: '_SummaryCardControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SummaryCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
