function link_valet() {
    project=$1
    full_directory=$(pwd)

   if [ -z "$project" ]; then
        project=$(basename "$PWD")
    fi

    init_vscode

    eval "ln -s $full_directory ~/Code/valet/$project"
    open "http://$project.test"
}

function init_vscode() {
    cp $HOME/dotfiles/code/eslintrc.js .eslintrc.js
    cp $HOME/dotfiles/code/php_cs .php_cs
}

function make_db() {
    project=$1
    if [ -z "$project" ]; then
        project=$(basename "$PWD")
    fi

    echo "1. Creating database: $project"
    mysql -uroot -e "create database $project"
}

function fresh_db() {
    project=$1
    if [ -z "$project" ]; then
        project=$(basename "$PWD")
    fi

    mysql -uroot -e "drop database $project; create database $project"
    echo "Done 😇"
}

function docker_make_db() {
    project=$1
    if [ -z "$project" ]; then
        project=$(basename "$PWD")
    fi
#   mysql -uroot -e "create database $project"
    docker exec -it TO--mariadb--focal--3306 mysql -uroot -ppassword -e "create database $project"
}

function docker_drop_db() {
    project=$1
    if [ -z "$project" ]; then
        project=$(basename "$PWD")
    fi
#   mysql -uroot -e "drop database $project"
    docker exec -it TO--mariadb--focal--3306 mysql -uroot -ppassword -e "drop database $project"
}

function docker_fresh_db() {
    project=$1
    if [ -z "$project" ]; then
        project=$(basename "$PWD")
    fi
#   mysql -uroot -e "drop database $project"
    docker exec -it TO--mariadb--focal--3306 mysql -uroot -ppassword -e "drop database $project; create database $project"
    echo "Done 😇"
}

function list_dbs() {
    docker exec -it TO--mariadb--focal--3306 mysql -uroot -ppassword -e "show databases"
}

## Toggle xdebug
function tx() {
    # Set php.ini path
    php_ini=$(php --ini | grep "Loaded Configuration File:" | sed -e 's/Loaded Configuration File://g' | tr -d '[:space:]')

    # Check if file starts with a comment #
    test=$(sed -n '/^#/p;q' "$php_ini")

    # If xdebug is enabled we will disabled
    if [ -z "$test" ]; then
        echo "Xdebug disabled"
        sed -i '.bak' '/xdebug/s/^/#/' "$php_ini"
    else
        echo "Xdebug enabled"
        sed -i '.bak' '/xdebug/s/^#//' "$php_ini"
    fi

    valet restart
}

function soapbox_env() {
    valet use php@7.2
    composer self-update --1
}

function default_env() {
    valet use php@8.0
    composer self-update --2
}

function routes()
{
    if ! command -v fzf > /dev/null
    then
        if [ $# -eq 0 ]; then
            php artisan route:list
        else
            php artisan route:list | grep ${1}
        fi

        return
    fi

    if [ $# -eq 0 ]; then
        php artisan route:list | fzf
    else
        php artisan route:list | rg ${1}
    fi
}


function myip() {
    dig +short myip.opendns.com @resolver1.opendns.com
}


function httpstatus()
{
    if [ $# -ne 1 ]; then
        echo "Usage: httpstatus <url>"
    else
        if http --check-status --ignore-stdin HEAD ${1} &> /dev/null; then
            echo 'OK!'
        else
            case $? in
                2) echo 'Request timed out' ;;
                3) echo 'Unexpected HTTP redirect' ;;
                4) echo 'HTTP 4xx client error' ;;
                5) echo 'HTTP 5xx server error' ;;
                *) echo 'Other error' ;;
            esac
        fi
    fi
}


