# Datadog Install by Ansible

Amazon Linux インスタンス (ローカル/リモート) にDatadog Agentをインストールする実験

## Setup Pipenv

Pipenv が導入されていない場合、以下のスクリプトを使ってインストールする

```
. setup_pipenv.sh
```

## Configure Roles

[ansible-datadog](https://github.com/DataDog/ansible-datadog) の変数定義にしたがってインベントリに変数を設定する。

### Ansible Vault settings

以下コマンドでAnsible Vaultの値を設定する

```
pipenv run ansible-vault create host/dev/group_vars/all/vault.yml
```

プロンプトで入力したパスワードは `ansible/vault_passwd` に保存する。再度編集するときには次のように `edit` サブコマンドを指定する

```
pipenv run ansible-vault edit host/dev/group_vars/all/vault.yml
```

## Run Playbook

以下コマンドで実行前確認を行う

```
cd ansible
pipenv run ansible-playbook dd-agent.yml -i hosts/dev --diff --check
```

以下コマンドで設定を適用する

```
pipenv run ansible-playbook dd-agent.yml -i hosts/dev --diff --check
```