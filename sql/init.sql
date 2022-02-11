create table users(
    id serial primary key,
    username varchar not null unique,
    display_name varchar not null,
    created_at timestamp with time zone  
);

create table user_credentials(
    id serial primary key references users(id),
    username varchar not null unique references users(username),
    password_hash varchar not null,
    salt varchar not null
);

create table user_follows(
    id serial primary key,
    follower serial references users(id) not null,
    followee serial references users(id) not null
);