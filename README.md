# rails_template
## 概要
これは、Railsアプリケーションを作る際にテンプレートとして使用することで、  
新しいプロジェクトに、高速に必要不可欠なgemや設定を組み込むことができるテンプレートです。

## なぜ作ったか
自分のサービスでも、会社のサービスでも、テンプレートを使わない場合は、  
rails newをした後に、その個人・組織のルールに則り、アプリケーションの設定をいくつも追加すると思います。  
テンプレートとして、必要な設定を全て網羅していれば、素早く、モレなく、設定が完了します。  

僕は、後からlinterを追加して、ひーひー言いたくありません。

また、READMEも、フォーマットを固定している企業は多くありません。  
その結果、プロジェクト移った際に、必要な環境構築や設定などが分からず、有識者に直接聞くことがあるかと思います。  
このテンプレートでは、READMEのフォーマットも指定しており、あとは製作者に必要なことそう目てもらうだけになっています。

## 事前準備
このテンプレートは以下のバージョンで動くことを保証しています。  

- MySQL
- ruby 2.7.x
- Rails 6.0.x

手元の環境に上記のバージョンを用意して、お試しください。

## 使用方法
1. gitclone  
```
$ git clone https://github.com/hotatekaoru/rails_template.git
```

2. rails new
```
$ rails new project_name -m path/to/rails_template -d mysql
```

3. 作られた todo.md に沿って、必要な設定を追加

## 追加しているgem
- [fasterer](https://github.com/DamirSvrtan/fasterer)
- [haml-lint](https://github.com/sds/haml-lint)
- [rubocop](https://github.com/rubocop-hq/rubocop)
- [settingslogic](https://github.com/binarylogic/settingslogic)
- [bullet](https://github.com/flyerhzm/bullet)
  デフォルトで、development/test環境では、N+1がある場合は500になるようにしています。
- [kaminari](https://github.com/kaminari/kaminari)
- [rollbar](https://github.com/rollbar/rollbar-gem)
- [newrelic](https://github.com/newrelic/rpm)
- sidekiq
- rspec
