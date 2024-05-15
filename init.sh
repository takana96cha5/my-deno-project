   #!/bin/sh

   # 引数からプロジェクト名を取得
   PROJECT_NAME=$1

   # 雛形リポジトリのURL
   TEMPLATE_REPO_URL="https://github.com/takana96cha5/my-deno-project.git"

   # 雛形リポジトリをクローン
   git clone ${TEMPLATE_REPO_URL} ${PROJECT_NAME}

#    # .gitディレクトリを削除し、新しいGitリポジトリを初期化
   cd ./${PROJECT_NAME} && rm -rf .git && git init

#    # 不要になったinit.shを削除
   cd .. && rm ./init.sh

   echo "Project ${PROJECT_NAME} initialized successfully!"
