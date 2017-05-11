# CentOS

## 概要
1. [よく使うコマンド](#sector1)

## <a name="sector1">よく使うコマンド

### systemctl
- `/usr/lib/systemd/system`下にサービスを格納

```bash
systemctl start mysqld
systemctl enable mysqld

# 稼働中のサービス
systemctl | grep service

# 〜は稼働中か
systemctl is-enabled mysqld
```
