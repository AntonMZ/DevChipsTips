Remove old settings.

```bash
    error_page 404 /my_404_error.html;
    location = /my_404_error.html {
        root /usr/share/nginx/html;
        internal;
    }
```


Insert new settings.

```bash
http {
    #...
    
    server {
        #...
    
        error_page 404 /my_404_error.html;
        location = /my_404_error.html {
            root /usr/share/nginx/html;
            internal;
        }
    
        error_page 403 /my_403_error.html;
        location = /my_403_error.html {
            root /usr/share/nginx/html;
            internal;
        }
    
        error_page 500 /my_500_error.html;
        location = /my_500_error.html {
            root /usr/share/nginx/html;
            internal;
        }
    
    #...
    
    }
}
```