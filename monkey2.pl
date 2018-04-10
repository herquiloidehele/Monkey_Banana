

%accao para pegar a banana
movimento(estado(centro,em_cima_caixa,centro,nao_possui_banana),
	  pegar_banana,
	  estado(centro,em_cima_caixa,centro,possui_banana)).

%accao de subir na caixa
movimento(estado(P,no_chao,P,H),
	  subir_caixa,
	  estado(P,em_cima_caixa,P,H)).

%Accao de empurrar a caixa
movimento(estado(P1,no_chao,P1,H),
	  empurrar_caixa(P1,centro),
	  estado(centro,no_chao,centro,H)).

%accao de caminhar
movimento(estado(P1,no_chao,B,H),
	  caminhar(P1,P2),
	  estado(P2,no_chao,B,H)).

%% movimento(estado(P1, no_chao), ir_centro, estado()).

%% movimento(estado(P1, em_cima_caixa, P1, nao_possui_vara, nao_possui_banana), 
%% 	  descer_caixa, 
%% 	  estado(P1, no_chao, P1, nao_possui_vara, nao_possui_banana)).

%% movimento(estado(P1, no_chao,B, nao_possui_banana),
%% 	  pegar_vara, 
%% 	 estado(P1, no_chao,B, nao_possui_banana)).



conseguir(estado(_,_,_,possui_banana)).
conseguir(Estado1) :- movimento(Estado1,_, Estado2) , conseguir(Estado2).

