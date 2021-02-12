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

## TODO сайт
1. Перезагружать php-fpm
<br/><br/>

## TODO Написать плейбук для выпуска сертификатов
1. Выпускать сертификат для домена
2. Поправить {{ sitename }}.conf в конфигах nginx на SSL
3. Выпустить DKIM ключ, запихнуть в 3 файла
4. Добавить в DNS записи sendonly._domainkey и v=spf1 mx ip4:109.68.215.79 ip6:2a03:6f00:4::6d44:d74f ~all
<br/><br/>

## TODO Написать плейбук для удаления сайтов
1. Удалить директорию
2. Удалить пользователя и группу
3. Удалить nginx конфиг
4. Удалить сертификат SSL
5. Удалить fpm pool