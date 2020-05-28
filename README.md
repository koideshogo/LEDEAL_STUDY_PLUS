# README

# LEDEAL-STUDY-PLUSについて
社員間で動画学習＆情報発信できるプラットフォームです。
メーカー様の新商品の座学での勉強会が、1回/月（５〜６時間）あり就業時間の半分以上を取られてしまう現状を改善したいという思いで本アプリを作成しました。
本アプリでは座学から動画学習にすることにより効率的な学習＆学習した内容を自らが情報発信をし共有できる環境を目指しております。
その環境を作り出すことによって社員一人ひとりに有意義な時間を過ごして欲しいと思っております。

URL:https://ledeal-study-plus.com/

# デモ
<img width="1678" alt="スクリーンショット 2020-05-10 13 35 40" src="https://user-images.githubusercontent.com/56552221/81491038-11512f80-92c4-11ea-88bf-262e8ed9c3e1.png">


![README動画](https://user-images.githubusercontent.com/56552221/81490948-12ce2800-92c3-11ea-8d2f-59ca424c8aad.gif)

 
# 特徴
 youtubeとの差別化
 * 各カテゴリ（メーカー、商材種類）による分類
 * youtube限定公開による不便性の解消
 * 管理者による社員の閲覧履歴確認

# 開発環境
* Git/GitHub
* Capistrano
* Rubocop/rails_best_practices

# インフラ
* EC2
* Nginx
* Unicorn
* Let's Encrypted

# フロントエンド
* haml/sass
* jQuery

# バックエンド
* Ruby/Rails 5系

# 実装済みの機能
* ログイン機能
* 動画投稿
* 多階層構造
* slick
* 管理者権限
* 検索機能
* いいね機能
* アウトプット機能
* マイページ（アウトプット一覧）


# 使用したgem
* 認証機能：devise
* テンプレートエンジン:haml/sass
* アプリケーションサーバー:unicorn
* 自動デプロイ:capistrano
* 多階層構造：ancestry
* 管理者権限：rails_admin/cancancan
* マイグレーション整理：squasher
* 画像関連:carrierwave,mini_magick
* フォント：font-awesome-sass
* パンくずリスト: gretel
* 検索機能: ransack

# 今後実装したい機能
* 足跡機能
* 動画閲覧をランキング形式
* 新商品のパンフレットPDF化
* 動画投稿後LINE通知
* コメント機能

# DB構造
![LEDEALSTUDYPLUS ER](https://user-images.githubusercontent.com/56552221/82138443-8049fd80-985b-11ea-981e-ae77a132f265.jpeg)


