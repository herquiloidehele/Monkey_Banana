
%% Acccao pra o macaco pegar a banana
movimento(estado(no_centro,em_cima_cadeira,no_centro,no_centro,possui_vara,nao_possui_banana),
      pegar_banana,
      estado(no_centro,em_cima_cadeira,no_centro,no_centro,possui_vara,possui_banana)).

%% Accao para Subir na cadeira
movimento(estado(P,no_chao,P,P,possui_vara,nao_possui_banana),
      subir_cadeira,
      estado(P,em_cima_cadeira,P,P,possui_vara,nao_possui_banana)).

%% Accao para empurrar na cadeira
movimento(estado(P1,no_chao,P1,P1,possui_vara,nao_possui_banana),
      empurrar_cadeira(P1,P2),
      estado(P2,no_chao,P2,P2,possui_vara,nao_possui_banana)).

%% Accao para pegar a vara
movimento(estado(P1,no_chao,B,P1,nao_possui_vara,nao_possui_banana),
      pegar_vara,
      estado(P1,no_chao,B,P1,possui_vara,nao_possui_banana)).

%% Accao para caminhar com a vara
movimento(estado(P1,no_chao,B,P1,possui_vara,nao_possui_banana),
      caminhar_com_vara(P1,P2),
      estado(P2,no_chao,B,P2,possui_vara,nao_possui_banana)).

%% Accao para caminhar sem a vara
movimento(estado(P1,no_chao,B,P3,nao_possui_vara,nao_possui_banana),
      caminhar(P1,P2),
      estado(P2,no_chao,B,P3,nao_possui_vara,nao_possui_banana)).


consegue(estado(_,_,_,_,_,possui_banana)):-!.
consegue(Estado1):-
    movimento(Estado1,_,Estado2),
    consegue(Estado2).






