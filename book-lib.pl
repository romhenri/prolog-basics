% livro(Título, Autor, Ano, Gênero)
livro('Dom Casmurro', 'Machado de Assis', 1899, romance).
livro('O Alienista', 'Machado de Assis', 1882, conto).
livro('Grande Sertão: Veredas', 'João Guimarães Rosa', 1956, romance).
livro('Capitães da Areia', 'Jorge Amado', 1937, romance).
livro('A Hora da Estrela', 'Clarice Lispector', 1977, drama).
livro('Ensaio sobre a Cegueira', 'José Saramago', 1995, ficcao).

livros_por_autor(Autor) :-
    livro(Titulo, Autor, _, _),
    write('- '), write(Titulo), nl,
    fail.
livros_por_autor(_).

livros_apos_ano(Ano) :-
    livro(Titulo, _, AnoLivro, _),
    AnoLivro > Ano,
    write('- '), write(Titulo), nl,
    fail.
livros_apos_ano(_).

livros_por_genero(Genero) :-
    livro(Titulo, _, _, Genero),
    write('- '), write(Titulo), nl,
    fail.
livros_por_genero(_).

% Consultas
consultar_por_autor :-
    write('Autor: '), read(Autor),
    write('Livros de '), write(Autor), write(':'), nl,
    livros_por_autor(Autor).

consultar_por_ano :-
    write('Listar livros após o ano: '), read(Ano),
    livros_apos_ano(Ano).

consultar_por_genero :-
    write('Gênero: '), read(Genero),
    livros_por_genero(Genero).
