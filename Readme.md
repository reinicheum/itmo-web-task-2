# Mission 2
## Part 0
[Mission 2 Video](https://drive.google.com/file/d/1reshAKN3p-tt1YwwGCKv-tF8rf-b8kKd/view?usp=sharing)
## Part 1
- Вопрос 1. Зачем нужен ssh? Ответ на пару предложений.
> SSH (Secure Shell) — это сетевой протокол, обеспечивающий защищённое удалённое подключение к серверу. Он гарантирует безопасность соединения за счёт шифрования данных. Это позволяет надёжно управлять серверами, обмениваться файлами и выполнять команды на компьютерах, находящихся на расстоянии.
- Вопрос 2. Предположим, у вас есть прямой доступ к серверу(терминалу) под управлением ubuntu. У вас есть коллега Вася, который хочет получить доступ к этому серверу. Он генерирует пару ssh ключей с помощью команды ssh-keygen и дает вам свой публичный ключ. В какой файл на сервере нужно записать ключ, чтобы Вася смог подключиться к терминалу сервера?
>Чтобы добавить публичный ключ Васи в файл authorized_keys, который находится по пути .ssh в домашней папке вашего пользователя на сервере, нужно открыть этот файл и вписать ключ в новой строке.
- Вопрос 3. Тут вопрос про АПИ. Разберитесь, что такое long polling и webhooks, опишите сами в нескольких предложениях, как они работают.
>Long polling — это способ общения между клиентом и сервером, при котором клиент отправляет HTTP-запрос и ждёт ответа от сервера до появления новых данных. Как только у сервера появляется информация для передачи, он отправляет ответ клиенту, который тут же формирует новый запрос для продолжения процесса.
>Webhooks — это инструмент, который позволяет серверу отправлять HTTP POST-запросы на URL (конечную точку), заранее указанный клиентом. Благодаря этому клиент может моментально получать уведомления о событиях без необходимости постоянно запрашивать информацию у сервера.
- Вопрос 4. Найдите информацию, что такое issues на гитхабе и для чего нужны. Также вставьте ссылки на пару примеров issues в популярных open source проектах.
>Issues на GitHub — это инструмент для отслеживания рабочих процессов, задач, ошибок и предложений в рамках проекта. С его помощью разработчики и пользователи могут обсуждать и документировать проблемы или улучшения.
- Вопрос 5. Ваш проект используется пустую папку images, но гит не поддерживает отслеживание пустых директорий. Что делать?
Чтобы Git отслеживал пустую директорию, нужно создать в ней скрытый файл, например, .gitkeep. Этот файл не имеет практического значения, но он позволяет Git отслеживать директорию.

Для создания файла используется команда: touch images/.gitkeep.

Затем нужно добавить этот файл в репозиторий и зафиксировать изменения:

* git add images/.gitkeep;
* git commit -m "Добавлен файл .gitkeep для пустой папки images".