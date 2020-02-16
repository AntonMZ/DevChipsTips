* Возврат обратно на страницу откуда был переход
  
    ```php
    redirect()->back()->getTargetUrl()
    ```

* Вывод даты в нациальном формате

    для blade
    ```php
    setlocale(LC_TIME, 'ru_RU.UTF-8');
    Carbon::parse('2019-08-12')->formatLocalized("%A %d %B %Y");
    ```

    альтернативный вариант (для php скриптов)
    ```php
    Carbon::setLocale('ru');
    ```

    Можно выставить локаль непосредственно перед сравнением.
    ```php
    $diffTime = $endTime->diffForHumans($startTime);
    $endTime = Carbon::now()->locale('ru');
    $diffTime = $endTime->diffForHumans($startTime);
    ```