create table customer
(
    id         serial      not null
        constraint customer_pk
            primary key,
    first_name varchar(40) not null,
    last_name  varchar(40) not null,
    email      varchar(30) not null
);

comment on table customer is 'people who buy stuff';

create table product
(
    id   serial not null
        constraint product_pk
            primary key,
    name text   not null
);

comment on table product is 'things customers buy';

create table "order"
(
    customer_id integer           not null
        constraint order_customer_id_fk
            references customer,
    product_id  serial            not null
        constraint order_product_id_fk
            references product,
    quantity    integer default 1 not null,
    order_date  timestamp         not null,
    constraint order_pk
        primary key (customer_id, product_id)
);

comment on table "order" is 'oredered product';


