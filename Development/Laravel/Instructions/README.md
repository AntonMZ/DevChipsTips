Статья - [Тайный метод firstOr()](https://laravel.demiart.ru/secret-method-firstor/)
* Источник - demiart.ru
* Дата публикации - 14.11.2019
---
Статья - [Управление данными запроса перед валидацией](https://laravel.demiart.ru/manipulating-request-data-before-performing-validation/)
* Источник - demiart.ru
* Дата публикации - 15.11.2019
---




![](../Images/45290941-748c2c80-b4f9-11e8-9021-1effed808121.png)

![](../Images/45333439-df337b80-b57e-11e8-9846-63ed00cad33b.png)

- install ide-helpers
- install laravel plugin
- enable plugin for project
- edit _ide_helper.php
(see [here](https://github.com/Haehnchen/idea-php-laravel-plugin/issues/148#issuecomment-484984699))



### Naming routes
---
```php 
Route::group(['prefix' => 'settings', 'namespace' => 'Admin\Sites'], function () {
    $methods = ['index', 'create', 'store', 'edit', 'update', 'destroy'];
    Route::resource('users', 'UsersController',
        [
            'names' => [
                'index' => 'settings.users.index',
            ]])
    ->only($methods);
});
```
```php
Route::group(['prefix' => 'settings', 'namespace' => 'Admin\Sites','as' => 'settings.'], function () {
    $methods = ['index', 'create', 'store', 'edit', 'update', 'destroy'];
    Route::resource('users', 'UsersController')
        ->only($methods);
});
```


Подстановка id вместо ресурса
(https://laravel.ru/docs/v5/controllers#%D1%87%D0%B0%D1%81%D1%82%D0%B8%D1%87%D0%BD%D1%8B%D0%B5)
 Route::group($groupData, function () {
        $methods = ['index', 'create', 'store', 'show', 'edit', 'update', 'destroy'];
        Route::resource('sites', 'SitesController',
            ['names' => 'admin.sites',
                'parameters' => ['sites' => 'id']])
            ->only($methods)
            ->names('admin.sites');

    });


Запуск почтовой очереди
program:laravel-worker]
process_name=%(program_name)s_%(process_num)02d
command=/usr/bin/php /srv/corp.reconn.ru/www/artisan queue:work --sleep=3 --tries=3
autostart=true
autorestart=true
user=corpuser
numprocs=4
redirect_stderr=true


0 * * * * /usr/bin/php /srv/corp.reconn.ru/www/artisan queue:retry all >/dev/null 2>&1




***
Вставка значений в таблицу через миграцию
```php
DB::table('users')->insert(
        array(
            'email' => 'name@domain.com',
            'verified' => true
        )
    );
```
***
Отключение primaryKey
```php
class Student extends Eloquent {

    protected $primaryKey = null;
    public $incrementing = false;


    protected $fillable = array('username', 'password', 'status', 'profile_id');

    public function profile() {
        return $this->belongsTo('Profile');
    }
}
```
***
Обновление данных определенной строки
```php
NameOfMyTable::where('entity_type', 1)->update(['last_import' => Carbon::now()]);
```