create table netology.CUSTOMER
(
    id           int primary key not null auto_increment,
    name         varchar(20)     not null,
    surname      varchar(40)     not null,
    age          int             not null,
    phone_number varchar(18)     not null
);

create table netology.ORDER
(
    id           int primary key auto_increment not null,
    date         timestamp                      not null,
    customer_id  int                            not null,
    product_name varchar(60)                    not null,
    amount       double                         not null check ( amount > 0 ),
    constraint customer_order
        foreign key (customer_id) references netology.CUSTOMER (id)
            on delete cascade
            on UPDATE cascade
);
insert into netology.CUSTOMER(id,name, surname, age, phone_number)
values (1,'Иван', 'Иванов', 25, '888888'),
       (2,'Иван', 'Шаров', 30, '111111'),
       (3,'Света', 'Авдеева', 38, '555555'),
       (4,'Инга', 'Истомина', 40, '222222');

insert into netology.ORDER(date, customer_id, product_name, amount)
    VALUE
    (current_date, 1, 'Принтер', 50.0),
    (current_date, 1, 'Сканер', 150.0),
    (current_date, 1, 'Бумага', 20.0),
    (current_date, 2, 'Скутер', 2000.0),
    (current_date, 2, 'Шлем', 100.0),
    (current_date, 3, 'Скатерть', 12.20),
    (current_date, 4, 'Утюг', 25.50);
