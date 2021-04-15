# Fliper

## Instrução de execução

1. Git clone este projeto.
``
flutter pub run build_runner build
``
2. Siga as etapas de construção convencionais para Flutter
``
flutter pub get
flutter run
``

## Observações gerais

- O gerenciamento de estado utilizada foi Mobx (mas pode usar qualquer outro, como: Provider, Bloc, Streams, Cubit, State Notifier, Get)
- Integração com o hasura utilizei o pacote hasura_connect por ser mais simples, mas poderia ter utilizado graphql que tem mais recursos.
- Devido a uma fonte não está disponível gratuitamente para download não utilizei uma fonte correta do Adobe XD.
- Implementei a internacionalização, estando habilitada para os idiomas português e inglês, se quiser testar manualmente, basta colocar o locale manualmente em `app_widget.dart`.
- Percebi que o retorno da API é uma `lista` então decidi usar a criatividade e usar recursos como` ListView` com `RefreshIndicator`, já que centralizar é muito simples, basta usar o widget `Center` ou` Container` ou` Column` por exemplo, mas claro somente fiz isso porque é um **teste**.