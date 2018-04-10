move(estado(centro,na_caixa,centro,centro,possui_vara,nao_possui),
      pegar_banana,
      estado(centro,na_caixa,centro,centro,possui_vara,possui)).

move(estado(P,no_chao,P,P,possui_vara,nao_possui),
      subir_caixa,
      estado(P,na_caixa,P,P,possui_vara,nao_possui)).

move(estado(P1,no_chao,P1,P1,possui_vara,nao_possui),
      empurrar_caixa(P1,P2),
      estado(P2,no_chao,P2,P1,possui_vara,nao_possui)).


move(estado(P1,no_chao,B,P3,nao_possui_vara,nao_possui),
      caminhar(P1,P2),
      estado(P2,no_chao,B,P3,possui_vara,nao_possui)).


move(estado(P1,no_chao,B,P1,possui_vara,nao_possui),
      caminhar_com_vara(P1,P2),
      estado(P2,no_chao,B,P2,possui_vara,nao_possui)).


move(estado(P1,no_chao,B,P1,nao_possui_vara,nao_possui),
      pegar_vara,
      estado(P1,no_chao,B,P1,possui_vara,nao_possui)).


consegue(estado(_,_,_,_,_,possui)):-!.
consegue(Estado1):-
    move(Estado1,_,Estado2),
    consegue(Estado2).






