# Proiect baze de date  myshop
Scopul acestui proiect este de a folosi cunostintele de SQL dobandite in timpul cursului de Testare Manuala si punerea lor in practica.

Aplicatia testata: **myshop**

Tool utilizat: **MySQL Workbench**

Descriere baza de date: myshop este un proiect ce gestioneaza un mic online shop cu jucarii. 

**Schema baze de date:**
![poza reverse engineer](https://github.com/user-attachments/assets/fe7cb34a-58bd-415b-934a-1dce4a82dc9b)

- **tabela detalii_comenzi** este conectata cu **tabela produse** prin o relatie de tip **1:1** relatie care este implementata prin **produse.id** ca si cheie primara si **detalii_comenzi.id_produs** ca si cheie secundara
- **tabela detalii_comenzi** este conectata cu **tabela comenzi** prin o relatie de tip **1:1** relatie care este implementata prin **comenzi.id** ca si cheie primara si **detalii_comenzi.id_comanda** ca si cheie secundara
- **tabela gestiune_produse** este conectata cu **tabela produse** prin o relatie de tip **1:1** relatie care este implementata prin **produse.id** ca si cheie primara si **gestiune_produse.id_produs** ca si cheie secundara
- **tabela comenzi** este conectata cu **tabela utilizatori** prin o relatie de tip **1:1** relatie care este implementata prin **utilizatori.id** ca si cheie primara si **comenzi.id_client** ca si cheie secundara	

## Queries baza de date:

### DDL (Data Definition Language)

**create database myshop;**
```
create table produse(
	id int primary key auto_increment,
        nume_produs varchar(30),
        categorie_produs varchar (40),
        pret_vanzare float (5),
        stoc_disponibil int,
        descriere_produs varchar (150));
```
```
create table utilizatori(
	id int primary key auto_increment,
        nume_utilizator varchar (30),
        email_utilizator varchar (40),
        adresa_livrare varchar (80));
```
```
create table comenzi(
	id int primary key auto_increment,
        id_client int,
        data_comanda varchar(12));
```
``` 
create table detalii_comenzi(
	id int primary key auto_increment,
        id_comanda int,
        id_produs int,
        cantitate int,
    	pret_total float(5));
```
```
create table gestiune_produse(
	id int primary key auto_increment,
	id_produs int,
        cantitate_intrari int,
        cantitate_iesiri int,
        stoc_depozit int);
```
`
alter table detalii_comenzi
add foreign key (id_produs) references produse(id);`<br>

`
alter table detalii_comenzi
add foreign key (id_comanda) references comenzi(id);`<br>


`
alter table gestiune_produse
add foreign key (id_produs) references produse(id);`<br>

`
alter table comenzi
add foreign key (id_client) references utilizatori(id);`<br>


`
alter table comenzi 
change data_comanda data_comanda date;`<br>


`
alter table produse
change descriere_produs descriere_produs varchar(250);`<br>




### DML (Data Manipulation Language)
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(1, "Antemergator", "Jucarii Montessori", 420, 22, "Antemergator 6 in 1 cu ceas labirint,
	abac, forme geometrice, puzzle 3D, din lemn");
```
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(2, "Ceas copii", "Jucarii Monteessori", 173, 41, "Ceas educativ Montessori,
	multicolor, lemn, 15 cm diametru");
```
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(3, "Puzzle 3D", "Jucarii Montessori", 31, 73, "Puzzle educativ Montessori cu 6 fete,
	caracatita, delfin, broasca testoasa, rac, crab,
	rechin. Jucarie din lemn cu dimensiuni 15x15x5, 9 piese");
```
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(4, "Joc educativ matematic", "Jucarii Montessori", 82, 20, "Joc educativ matematic Montessori
	abac, cu cercuri si coloane, lemne, multicolor. Dimensiuni 35x5x12 cm, 56 piese.");
```
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(5, "Balance Board", "Mobilier copii", 480, 17, "Placa de echilibru din lemn,
	ce ajuta imbunatatirea coordonarii motrice. Design minimalist.
	Adecvat pentru toate varstele. Sarcina maxima 200kg.");
```
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(6, "Pink Lemon", "Jucarii organice", 159, 36, "Jucarie muzicala din bumbac organic,
	ce ii permite copilului sa adoarma mai usor");
```
```
insert into produse
	(id, nume_produs, categorie_produs, pret_vanzare, stoc_disponibil, descriere_produs)
values
	(7, "Marsupiu ISARA", "Marsupii ergonomice", 859, 36, "Marsupiu ajustabil,
	marime unica, realizat din bumbac organic, potrivit inca de la nastere. Sarcina maxima: 15 kg");
```


```
insert into utilizatori
	(id, nume_utilizator, email_utilizator, adresa_livrare)
values
	(1, "IONESCU CALIN", "ionescucalin.10@gmail.com", "Bucuresti, str Ion Mincu, bl A3, ap 5");
```
```
insert into utilizatori
	(id, nume_utilizator, email_utilizator, adresa_livrare)
values
	(2, "POPESCU DIANA", "popescu.diana@yahoo.com", "Craiova, str Ion Creanga, nr 35");
```
```
insert into utilizatori
	(id, nume_utilizator, email_utilizator, adresa_livrare)
values
	(3, "STERIE ANTONIA", "sterieantonia.5@gmail.com", "Targoviste, str Mihai Eminescu bl 1A, ap 10");
```
```
insert into utilizatori
	(id, nume_utilizator, email_utilizator, adresa_livrare)
values
	(4, "STAN DAN", "stan.7dan@yahoo.com", "Cluj, str Craciunului, nr.72");
```
```
insert into utilizatori
	(id, nume_utilizator, email_utilizator, adresa_livrare)
values
	(5, "ION ANDREI", "ionandrei25@gmail.com", "Timisoara, str Scolii bl 32b sc A ap5 ");
```
```
insert into utilizatori
	(id, nume_utilizator, email_utilizator, adresa_livrare)
values
	(6, "DUMITRU SABIN", "dumitrusabin.2@yahoo.com", "Iasi, str Mihai Viteazu, nr 45");
```


```
insert into comenzi (id, id_client, data_comanda)
values (1, 3, "2024-03-21");
```
```
insert into comenzi (id, id_client, data_comanda)
values (2, 5, "2024-03-22");
```
```
insert into comenzi (id, id_client, data_comanda)
values (3, 1, "2024-03-22");
```
```
insert into comenzi (id, id_client, data_comanda)
values (4, 6, "2024-03-26");
```
```
insert into comenzi (id, id_client, data_comanda)
values (5, 2, "2024-03-27");
```
```
insert into comenzi (id, id_client, data_comanda)
values (6, 4, "2024-03-27");
```


```
insert into detalii_comenzi (id, id_comanda, id_produs, cantitate, pret_total)
values (1, 1, 3, 1, 73 );
```
```
insert into detalii_comenzi (id, id_comanda, id_produs, cantitate, pret_total)
values (2, 2, 4, 2, 164 );
```
```
insert into detalii_comenzi (id, id_comanda, id_produs, cantitate, pret_total)
values (3, 3, 5, 1, 480 );
```
```
insert into detalii_comenzi (id, id_comanda, id_produs, cantitate, pret_total)
values (4, 4, 1, 1, 420 );
```
```
insert into detalii_comenzi (id, id_comanda, id_produs, cantitate, pret_total)
values (5, 5, 2, 2, 346 );
```
```
insert into detalii_comenzi (id, id_comanda, id_produs, cantitate, pret_total)
values (6, 6, 7, 1, 859 );
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (1, 1, 23, 1, 22);
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (2, 2, 43, 2, 41);
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (3, 3, 74, 1, 73);
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (4, 4, 22, 2, 20);
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (5, 5, 18, 1, 17);
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (6, 6, 80, 0, 80);
```
```
insert into gestiune_produse (id, id_produs, cantitate_intrari, cantitate_iesiri, stoc_depozit)
values (7, 7, 37, 1, 36);
```


```
update produse set pret_vanzare=450 where id=1;
update detalii_comenzi set pret_total=450 where id=4;
```
`delete from detalii_comenzi where id=3;`<br>

### DQL (Data Query Language)

`select *from produse;`<br>
`select email_utilizator, adresa_livrare from utilizatori;` <br>
`select nume_produs from produse where pret_vanzare < 100;`<br>
`select * from produse where pret_vanzare > 100 and pret_vanzare < 200;`<br>
`select * from produse where not pret_vanzare > 450 or stoc_disponibil < 50 and categorie_produs like "Jucarii%";`<br>
`select count(*) from  utilizatori;`<br>
`select max(data_comanda) from comenzi;`<br>
`select avg(pret_total) from detalii_comenzi;`<br>
`select sum(pret_total) from detalii_comenzi;`<br>

```
select  id_comanda,
	avg(pret_total) as "Pret mediu",
        min(pret_total) as "Pret minim",
        max(pret_total) as "Pret maxim"
        from detalii_comenzi
        group by id_comanda;
```
``` 
select nume_produs, pret_vanzare from produse
where pret_vanzare > (select avg(pret_vanzare) from produse);
```
```
select nume_produs from produse
inner join detalii_comenzi
on produse.id=detalii_comenzi.id_produs;
```

## Concluzie:
Am invatat crearea si manipularea unei baze de date, folosind informatiile predare la curs.
