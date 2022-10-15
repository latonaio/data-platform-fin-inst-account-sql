# data-platform-fin-inst-master-sql
data-platform-fin-inst-master-sqlは、データ連携基盤において、金融機関マスタデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-fin-inst-master-sqlは、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-fin-inst-master-sqlには、sqlの設定ファイルとして、以下のファイルが含まれます。 

* data-platform-fin-inst-master-sql-general-data.sql （データ連携基盤 金融機関マスタ - 金融機関データ）
* data-platform-fin-inst-master-sql-business-partner-data.sql （データ連携基盤 金融機関マスタ - ビジネスパートナデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
