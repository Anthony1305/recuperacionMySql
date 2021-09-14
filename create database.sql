/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     14/9/2021 9:26:34                            */
/*==============================================================*/


drop table if exists ALQUILER;

drop table if exists CLIENTE;

drop table if exists PELICULA;

/*==============================================================*/
/* Table: ALQUILER                                              */
/*==============================================================*/
create table ALQUILER
(
   IDALQUILER           int not null,
   IDPELICULA           int,
   IDCLIENTE            int,
   FECHAPRESTAMO        date,
   FECHAENTREGA         date,
   VALOR                decimal(8,2),
   primary key (IDALQUILER)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   IDCLIENTE            int not null,
   CEDULACLIENTE        varchar(10),
   NOMBRESCLIENTE       varchar(20),
   APELLIDOSCLIENTE     varchar(20),
   FECHAREGISTROCLIENTE date,
   primary key (IDCLIENTE)
);

/*==============================================================*/
/* Table: PELICULA                                              */
/*==============================================================*/
create table PELICULA
(
   IDPELICULA           int not null,
   NOMBREPELICULA       varchar(30),
   ANIO_ESTRENO         int,
   primary key (IDPELICULA)
);

alter table ALQUILER add constraint FK_RELATIONSHIP_1 foreign key (IDPELICULA)
      references PELICULA (IDPELICULA) on delete restrict on update restrict;

alter table ALQUILER add constraint FK_RELATIONSHIP_2 foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE) on delete restrict on update restrict;

