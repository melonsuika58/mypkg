![test](https://github.com/melonsuika58/mypkg/actions/workflows/test.yml/badge.svg)

# mypkg
これは、ros2のパッケージです。
* できること
  * 数字のカウントアップを別の端末へと送り、表示することができる。
  ```sh
  # 実行 (端末1)
  ros2 run mypkg talker
  # 実行 (端末2)
  ros2 run mypkg listener
  ```

# ファイルの説明
* README.md:
  * このリポジトリについての説明です。最初にお読みください。
* talker.py(場所: mypkg/mypkg/talker.py):
  * listener.pyに対し、数字のカウントアップを伝達する。
  * 注意：このノードは"listener.py"と並行して使用するノードです。
  ```sh
  # 実行
  ros2 run mypkg talker
  ```
* listener.py(場所: mypkg/mypkg/listener.py):
  * talker.pyから送られてた数字をメッセージとして表示する。
  * 注意：このノードは"talker.py"と並行して使用するノードです。
  ```sh
  # 実行(talker.pyを起動後、別の端末で実行してください。)
  ros2 run mypkg listener
  ```
* talk_listen.launch.py(場所: mypkg/launch/talk_listen.launch.py):
  * 上記の"talker.py"と"listener.py"を同時に起動させる。
  ```sh
  # 実行
  ros2 launch mypkg talk_listen.launch.py
  ```
* test.bash(場所: mypkg/test/test.bash):
  * talk_listen.launch.pyに対するテスト
  ```sh
  # 移動
  cd ./mypkg/test
  # 実行
  ./test.bash
  ```

* LICENSE:
  * 3条項BSDライセンス

# 必要なソフトウェア
* Python
  * テスト済み: 3.7～3.10

# テスト環境
* Ubuntu 22.04.01 LTS

# ライセンスについて
* このソフトウェアパッケージは、3条項BSDライセンスの下、再分布および使用が許可されています
。
* © 2022 Shuma Suzuki
