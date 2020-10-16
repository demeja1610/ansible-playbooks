# Ansible playbooks
## Что в директориях

<code>@templates</code> - <code>содержит шаблоны конфигов и прочее</code>
<br/>
<code>@vars</code> - <code>содержит в себе файлы с переменными для любых нужд</code>
<br/>
<code>playbook.yml</code> - <code>список команд к запуску</code>
<br/><br/>

## Hosts 
<code>Добавить в /etc/ansible/hosts нужный сервер/домен. Пример:</code>
<br/>
<code>domain_name.com ansible_host=11.22.33.44 ansible_user=root</code>
<br/><br/>

## Как запускать
<code>ansible-playbook playbook.yml -l domain_name.com</code> - domain_name.com берем из /etc/ansible/hosts
<br/><br/>

## TODO сервер
1. Устанавливать certbot
2. Копировать /root/.nvm в /etc/nvm для доступа всех пользователей на сервере
3. Устанавливать postfix и opendkim
<br/><br/>

## TODO сайт
1. Добавлять www-data в группу пользователя
2. Перезагружать php-fpm
3. Внутри /var/www/{{ sitename }} <code>sudo find . -type d -exec chmod 0755 {} \;</code>
4. Внутри /var/www/{{ sitename }} <code>sudo find . -type f -exec chmod 0644 {} \;</code>
5. Создавать файлы логов
6. В конфиге nginx указать путь до логов
<br/><br/>

## TODO Написать плейбук для выпуска сертификатов
1. Выпускать сертификат для домена
2. Поправить {{ sitename }}.conf в конфигах nginx на SSL
3. Выпустить DKIM ключ, запихнуть в 3 файла
4. Добавить в DNS записи sendonly._domainkey и v=spf1 mx ip4:109.68.215.79 ip6:2a03:6f00:4::6d44:d74f ~all