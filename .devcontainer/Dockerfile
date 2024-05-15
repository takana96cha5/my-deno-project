FROM denoland/deno:latest

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Deno のキャッシュディレクトリを設定
ENV DENO_DIR /deno-dir

# ユーザーを作成
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# Deno のキャッシュディレクトリを作成し、権限を設定
RUN mkdir -p $DENO_DIR && chown -R $USERNAME:$USERNAME $DENO_DIR