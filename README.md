# GitHub Repository Search

GitHub Repository Searchは、キーワードで GitHub リポジトリを検索したり、スターや説明などの詳細を表示したり、リポジトリのGitHubページに移動したりできるシンプルなFlutterアプリケーションです。

## Flutterバージョン
- Flutter SDK: [3.24.4] (管理: FVM)
- Dart: [3.5.4]

## Features
- キーワードでリポジトリを検索
- リポジトリの詳細（名前、スター数、説明など）を表示
- 選択したリポジトリのGitHubページに移動


## Installation
1. このリポジトリをクローンします：
   ```bash
   https://github.com/yato-developer/github-repository-search.git
   ```
2. FVM を使って Flutter バージョンをセットアップ
    ```
    fvm install 3.24.4
    fvm use 3.24.4

    ```
3. パッケージをインストール
    ```
    fvm flutter pub get
    ```

4. アプリを実行
    ```
    fvm flutter run
    ```

## Usage
1. アプリを起動すると、GitHubリポジトリの検索画面が表示されます。
2. 検索バーにキーワードを入力し、リポジトリを検索します。
3. 検索結果に表示されたリポジトリをタップすると、詳細情報が表示されます。
4. 「Open GitHub」ボタンをクリックすると、リポジトリのGitHubページがブラウザで開きます。

## Dependencies

このプロジェクトで使用している主要な依存パッケージは以下の通りです：

```yaml
dependencies:
  flutter:
    sdk: flutter

  # iOSスタイルのアイコンを提供するパッケージ
  cupertino_icons: ^1.0.8

  # クラスのコード生成をサポートするFreezed用のアノテーション
  freezed_annotation: ^2.4.4

  # JSONシリアライズ対応のアノテーション
  json_annotation: ^4.9.0

  # GitHub APIとの通信に使用
  http: ^1.2.2

  # Riverpodによる状態管理
  hooks_riverpod: ^2.6.1

  # Flutterの多言語対応のためのローカライゼーションサポート
  flutter_localizations:
    sdk: flutter

  # 国際化対応（intl パッケージ）
  intl: any

  # リンクを開くために使用
  url_launcher: ^6.3.1

  # Flutter Hooks を利用して、ウィジェットのライフサイクルを簡単に管理
  flutter_hooks: ^0.20.5

  # アプリのUIをデバイス上でプレビュー可能
  device_preview: ^1.2.0

  # モックの作成に使用
  mockito: ^5.4.4

dev_dependencies:
  flutter_test:
    sdk: flutter

  # コーディングスタイルを改善するための推奨リントセット
  flutter_lints: ^5.0.0

  # Freezedでクラス生成を行うためのコード生成ツール
  build_runner: ^2.4.13

  # Freezedパッケージ本体
  freezed: ^2.5.7

  # JSONシリアライズ用のコード生成ツール
  json_serializable: ^6.8.0
```