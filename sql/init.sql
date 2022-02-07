create table users(
    id serial primary key,
    username varchar not null,
    display_name varchar not null  
);

create table user_follows(
    follower serial references users(id),
    followee serial references users(id)
);