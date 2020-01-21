* Возврат обратно на страницу откуда был переход
  
    ```php
    redirect()->back()->getTargetUrl()
    ```

* Вывод даты в нациальном формате

    ```php
    setlocale(LC_TIME, 'ru_RU.UTF-8');
    Carbon::parse('2019-08-12')->formatLocalized("%A %d %B %Y");
    ```