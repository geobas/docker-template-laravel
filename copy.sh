#!/bin/bash

composer create-project --prefer-dist laravel/laravel temp && shopt -s dotglob nullglob && mv temp/* . && rmdir temp
