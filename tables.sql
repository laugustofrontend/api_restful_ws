-- Create database
create database api_restful_ws default CHARACTER set utf8 DEFAULT COLLATE utf8_general_ci;
create database api_restful_ws_test default CHARACTER set utf8 DEFAULT COLLATE utf8_general_ci;
-- create user 'api_resftul_ws'@'localhost' identified by 'api_resftul_ws';
-- grant all on api_resftul_ws.* to 'api_resftul_ws'@'localhost';

use api_restful_ws;
-- Create table syntax for TABLE 'categories'
create table categories (
    id char(36) not null primary key,
    name varchar(255) not null
);

-- Create table syntax for TABLE 'users'
create table users (
    id char(36) not null primary key,
    email varchar(70) not null,
    pass varchar(40) not null
);

use api_restful_ws_test;
-- Create table syntax for TABLE 'categories'
create table categories (
    id char(36) not null primary key,
    name varchar(255) not null
);

-- Create table syntax for TABLE 'users'
create table users (
    id char(36) not null primary key,
    email varchar(70) not null,
    pass varchar(40) not null
);
