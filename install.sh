#!/bin/bash

echo "Which framework you wish to install?"
select pckg in "Laravel" "Lumen"; do
    case $pckg in
        Laravel ) composer create-project --prefer-dist laravel/laravel temp && shopt -s dotglob nullglob && mv temp/* . && rmdir temp && echo && ./artisan --version; break;;
        Lumen ) composer create-project --prefer-dist laravel/lumen temp && shopt -s dotglob nullglob && mv temp/* . && rmdir temp && echo && ./artisan --version; break;;
    esac
done
