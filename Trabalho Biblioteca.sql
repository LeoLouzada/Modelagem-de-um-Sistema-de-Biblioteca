create database Biblioteca;

use Biblioteca;

create table Livro(
	id_livro int auto_increment primary key,
    titulo varchar(255) not null,
    autor varchar(255),
    ano_publicacao int,
    isbn varchar(13)
);

create table Membro(
	id_membro int auto_increment primary key,
    nome varchar(255) not null,
    endereco varchar(255),
    telefone varchar(15),
    data_adesao date
);

create table Emprestimo(
	id_emprestimo int auto_increment primary key,
    id_livro int,
    id_membro int,
    data_emprestimo date not null,
    data_devolucao date,
    foreign key(id_livro) references Livro(id_livro),
    foreign key(id_membro) references Membro(id_membro)
);

