### Valet doesn't support PHP version: php@7.4 (try something like 'php7.2' instead)

#### Here's a temporary fix :

```bash
nano ~/.composer/vendor/laravel/valet/cli/Valet/Brew.php
Add 'php@7.4' into SUPPORTED_PHP_VERSIONS.
Try again valet install
```
