### Ошибка

```bash
== Log ==
	
PHP: showing 1 of 1PHP: 2020-05-03 14:57:04 [notice X 55][/srv/b.site.ru/wp-content/plugins/elementor/includes/base/controls-stack.php::1447] Trying to access array offset on value of type null [array (
  'trace' => '
#0: Elementor\Core\Logger\Manager -> shutdown()
',
)]

JS: showing 3 of 3JS: 2020-05-03 15:36:31 [error X 17][https://b.site.ru/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.9.8:7:57167] Sandbox access violation: Blocked a frame at \"https://b.site.ru\" from accessing a cross-origin frame. The frame being accessed is sandboxed and lacks the \"allow-same-origin\" flag. 
JS: 2020-05-03 15:43:22 [error X 2][https://b.site.ru/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.9.8:7:57120] Blocked a frame with origin \"https://b.site.ru\" from accessing a cross-origin frame. 
JS: 2020-05-03 15:58:57 [error X 6][https://b.site.ru/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.9.8:7:0] Permission denied to access property \"elementorFrontend\" on cross-origin object 
```

### Решение

Добавляем строку
```bash
define( ‘WP_MAX_MEMORY_LIMIT’, ‘256M’ );
```

после строки

```bash
define( ‘WP_DEBUG’, false );
```

Проверяем настройки Nginx.
Необходимо закомментировать строку, если она есть:

```bash
add_header X-Frame-Options DENY;
```
				