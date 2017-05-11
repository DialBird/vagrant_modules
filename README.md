# Vagrantのモジュール集

## 目的
- Vagrantでの環境構築の際に毎度使うコードを書き溜めておく

## ssh接続を便利にする
- [参考](http://qiita.com/Sanche/items/43d615beef05cd9417e2)
- 一応ダメだった場合は`chmod 600`を試すこと

## Vagrant 共有フォルダのマウントに失敗場合の対策
- まずは`yum -y update`
- それでダメならツールを入れる[参考](http://big1to.com/development-note/489)
- このエラーが起こる場合は、ホスト側とゲスト側でGuestAddtionsのバージョンがあっていないことが原因
- `vagrant vbguest --status`で調査
- `vagrant vbguest`で治る時もあるらしいが、カーネルが古すぎると使えない場合がある
- 解決策としては

```bash
vagrant ssh
sudo yum -y update
sudo /etc/init.d/vboxadd setup
exit

# 再起動
vagrant halt
vagrant up

# 確認
vagrant vbguest --status
```
