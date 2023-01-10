#!/bin/bash

### 変数一覧
VAR1=$1 # ホスト名
VAR2=$2 # IPアドレス & サブネットマスク
VAR3=$3 # ゲートウェイ
VAR4=$4 # DNS

# ホスト名
sudo hostnamectl set-hostname "$VAR1"

### 固定IP
nmcli con mod enp0s3 ipv4.method manual

# IPアドレス
nmcli con mod enp0s3 ipv4.addresses "$VAR2"

# ゲートウェイ
nmcli con mod enp0s3 ipv4.gateway "$VAR3"

# DNS
nmcli con mod enp0s3 ipv4.dns "$VAR4"

### 設定反映 ###
nmcli connection up enp0s3

######### 作：夏目 智徹, Toshiyuki Natsume 2023 01 06