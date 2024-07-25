## Docker for Laravel 5.4 && Docker for PHP 5.6 with MySQL 5.5
It was made to run the Laravel 5.4 project with Docker.
PHP 5.6 version and MySQL 5.5 version were used.
You must complete the following steps carefully.

### 1 ) Folder layouts ; 
    -- projectFiles (Copy laravel project files here)
    -- mysqlDb (When you import the database with any interface, you can see the MySQL files here.)
### 2 ) Prepare your project; 
    # Copy the laravel files to the projectFiles folder.
    # Update the following settings in your .env file;
        * DB_HOST=mysqlDb
        * DB_PORT=3306
        * DB_DATABASE=laravel_db
        * DB_USERNAME=laravel
        * DB_PASSWORD=laravel
    # Add this line in config object of composer.json file (VERY IMPORTANT);
        * "platform-check": false, 
    # Remove all files inside the bootstrap/cache folder.
### 2 ) Docker ; 
    # Open terminal inside main directory ( not laravel directory).
    # Run the following command in terminal;
        * docker-compose up -d
### 3 ) MySQL connection ; 
    # Connect to the database using a MySQL interface. Forexample (DbGate Database Client)
    # Connect your db with below settings;
        * Server => localhost
        * Port => 3309 (Not 3306)
        * Database => laravel_db
        * Username => laravel
        * Password => laravel
    # Import your project database.
### 4 ) Composer; 
    # Connect shell the laravel54_docker project.
    # Run the following commands;
        * php artisan cache:clear
        * php artisan config:clear
        * composer dump-autoload
### 5 ) Final; 
    # Open the link below in your browser
        * http://localhost:5001