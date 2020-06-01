Проверка авторизации в роут маршруте

```php
Route::group(['prefix' => 'settings', 'middleware' => ['auth']], function () {
    Route::get('/', 'SettingsController@index')->name('settings.index');
```

Проверка авторизации в классе
```php
<?php

namespace App\Http\Controllers;

class SettingsController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }
}
```