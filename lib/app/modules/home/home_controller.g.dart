// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<SummaryRepository>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

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

  final _$summaryModelAtom = Atom(name: '_HomeControllerBase.summaryModel');

  @override
  List<SummaryModel> get summaryModel {
    _$summaryModelAtom.reportRead();
    return super.summaryModel;
  }

  @override
  set summaryModel(List<SummaryModel> value) {
    _$summaryModelAtom.reportWrite(value, super.summaryModel, () {
      super.summaryModel = value;
    });
  }

  final _$refreshAsyncAction = AsyncAction('_HomeControllerBase.refresh');

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  @override
  String toString() {
    return '''
value: ${value},
summaryModel: ${summaryModel}
    ''';
  }
}
