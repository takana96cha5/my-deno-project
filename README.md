# Deno プロジェクトテンプレート

このリポジトリは、Denoプロジェクトを素早く始めるためのテンプレートです。\
開発環境をすぐにセットアップできるように、devcontainer設定が含まれています。

## 前提条件

- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/)
- [Visual Studio Code Remote - Containers 拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## 始め方

このリポジトリを雛形として使用し、新しいプロジェクトを作成するために、以下の`init.sh`スクリプトを実行します。

```bash
   #!/bin/sh

   # 引数からプロジェクト名を取得
   PROJECT_NAME=$1

   # 雛形リポジトリのURL
   TEMPLATE_REPO_URL="https://github.com/takana96cha5/my-dene-project.git"

   # 雛形リポジトリをクローン
   git clone ${TEMPLATE_REPO_URL} ${PROJECT_NAME}

   # プロジェクトディレクトリに移動
   cd ${PROJECT_NAME}

   # .gitディレクトリを削除し、新しいGitリポジトリを初期化
   rm -rf .git
   git init

   # 不要になったinit.shを削除
   rm ./init.sh

   echo "Project ${PROJECT_NAME} initialized successfully!"
```

以下のコマンドを実行して、init.shを実行可能にします。

```bash
chmod +x init.sh
```

以下のコマンドを実行して、新しいプロジェクトを作成します。

```bash
./init.sh your-project-name
```

作成されたプロジェクトのディレクトリに移動します。

```bash
cd your-project-name
```

Visual Studio Codeを開き、プロジェクトフォルダを開きます。

コマンドパレットを開き（Ctrl+Shift+P または Cmd+Shift+P）、"Dev Containers: Open
Folder in Container..."を選択し、プロジェクトのフォルダを選択します。

開発環境が構築されるまで待ちます。

ターミナルを開き、以下のコマンドを実行してアプリケーションを実行します。

```bash
deno run src/main.ts
```

"Hello, Deno!"と出力されれば、設定は完了です。

---

## プロジェクト構造

- .devcontainer/: devcontainer設定ファイルが含まれています。
  - Dockerfile: devcontainerイメージとその依存関係を定義します。
  - devcontainer.json: devcontainerの設定と拡張機能を構成します。
- src/: ソースコードファイルが含まれています。
  - main.ts: アプリケーションのエントリーポイントです。
- tests/: テストファイルが含まれています。
- deps.ts: 外部モジュールの依存関係を管理します。
- config.ts: アプリケーションの設定を格納します。
- README.md: プロジェクトの説明と開発環境のセットアップ方法を提供します。
