SET TERM ^ ;

CREATE TABLE TAB_CEST (
    CEST       VARCHAR(7),
    NCM        VARCHAR(8),
    DESCRICAO  VARCHAR(512),
    CLENGTH    INTEGER
)^

-- CLENGTH = Largura do cod NCM
CREATE INDEX TAB_CEST_IDX1 ON TAB_CEST (CEST)^
CREATE INDEX TAB_CEST_IDX2 ON TAB_CEST (NCM)^
CREATE INDEX TAB_CEST_IDX4 ON TAB_CEST (CLENGTH)^

commit work^

INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100100', '38151210', 'Catalisadores em colmeia cer�mica ou met�lica para convers�o catal�tica de gases de escape de ve�culos e outros catalizadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100100', '38151290', 'Catalisadores em colmeia cer�mica ou met�lica para convers�o catal�tica de gases de escape de ve�culos e outros catalizadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100200', '3917', 'Tubos e seus acess�rios (por exemplo, juntas, cotovelos, flanges, uni�es), de pl�sticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100300', '39181000', 'Protetores de ca�amba ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100400', '39233000', 'Reservat�rios de �leo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100500', '39263000', 'Frisos, decalques, molduras e acabamentos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100600', '40103', 'Correias de transmiss�o de borracha vulcanizada, de mat�rias t�xteis, mesmo impregnadas, revestidas ou recobertas, de pl�stico, ou estratificadas com pl�stico ou refor�adas com metal ou com outras mat', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100600', '59100000', 'Correias de transmiss�o de borracha vulcanizada, de mat�rias t�xteis, mesmo impregnadas, revestidas ou recobertas, de pl�stico, ou estratificadas com pl�stico ou refor�adas com metal ou com outras mat', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100700', '40169300', 'Juntas, gaxetas e outros elementos com fun��o semelhante de veda��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100700', '4823909', 'Juntas, gaxetas e outros elementos com fun��o semelhante de veda��o ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100800', '40161010', 'Partes de ve�culos autom�veis, tratores e m�quinas autopropulsadas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100900', '40169990', 'Tapetes, revestimentos, mesmo confeccionados, batentes, buchas e coxins ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100900', '57050000', 'Tapetes, revestimentos, mesmo confeccionados, batentes, buchas e coxins ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101000', '59039000', 'Tecidos impregnados, revestidos, recobertos ou estratificados, com pl�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101100', '59090000', 'Mangueiras e tubos semelhantes, de mat�rias t�xteis, mesmo com refor�o ou acess�rios de outras mat�rias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101200', '63061', 'Encerados e toldos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101300', '65061000', 'Capacetes e artefatos de uso semelhante, de prote��o, para uso em motocicletas, inclu�dos ciclomotores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101400', '6813', 'Guarni��es de fric��o (por exemplo, placas, rolos, tiras, segmentos, discos, an�is, pastilhas), n�o montadas, para freios, embreagens ou qualquer outro mecanismo de fric��o, � base de amianto, de outr', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101500', '70071100', 'Vidros de dimens�es e formatos que permitam aplica��o automotiva ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101500', '70072100', 'Vidros de dimens�es e formatos que permitam aplica��o automotiva ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101600', '70091000', 'Espelhos retrovisores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101700', '70140000', 'Lentes de far�is, lanternas e outros utens�lios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101800', '73110000', 'Cilindro de a�o para GNV (g�s natural veicular) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101900', '73110000', 'Recipientes para gases comprimidos ou liquefeitos, de ferro fundido, ferro ou a�o, exceto o descrito no item 18.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102000', '7320', 'Molas e folhas de molas, de ferro ou a�o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102100', '7325', 'Obras moldadas, de ferro fundido, ferro ou a�o, exceto as do c�digo 7325.91.00 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102200', '780600', 'Peso de chumbo para balanceamento de roda ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102300', '80070090', 'Peso para balanceamento de roda e outros utens�lios de estanho ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102400', '830120', 'Fechaduras e partes de fechaduras ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102400', '830160', 'Fechaduras e partes de fechaduras ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102500', '830170', 'Chaves apresentadas isoladamente ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102600', '83021000', 'Dobradi�as, guarni��es, ferragens e artigos semelhantes de metais comuns ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102600', '83023000', 'Dobradi�as, guarni��es, ferragens e artigos semelhantes de metais comuns ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102700', '831000', 'Tri�ngulo de seguran�a ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102800', '84073', 'Motores de pist�o alternativo dos tipos utilizados para propuls�o de ve�culos do Cap�tulo 87 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102900', '840820', 'Motores dos tipos utilizados para propuls�o de ve�culos automotores ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103000', '84099', 'Partes reconhec�veis como exclusiva ou principalmente destinadas aos motores das posi��es 8407 ou 8408 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103100', '84122', 'Motores hidr�ulicos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103200', '841330', 'Bombas para combust�veis, lubrificantes ou l�quidos de arrefecimento, pr�prias para motores de igni��o por centelha ou por compress�o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103300', '84141000', 'Bombas de v�cuo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103400', '8414801', 'Compressores e turbocompressores de ar ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103400', '8414802', 'Compressores e turbocompressores de ar ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '84139190', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '84149010', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '8414903', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '84149039', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103600', '841520', 'M�quinas e aparelhos de ar condicionado ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103700', '84212300', 'Aparelhos para filtrar �leos minerais nos motores de igni��o por centelha ou por compress�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103800', '84212990', 'Filtros a v�cuo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103900', '84219', 'Partes dos aparelhos para filtrar ou depurar l�quidos ou gases ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104000', '84241000', 'Extintores, mesmo carregados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104100', '84213100', 'Filtros de entrada de ar para motores de igni��o por centelha ou por compress�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104200', '84213920', 'Depuradores por convers�o catal�tica de gases de escape ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104300', '84254200', 'Macacos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104400', '84311010', 'Partes para macacos do item 43.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104500', '8431492', 'Partes reconhec�veis como exclusiva ou principalmente destinadas �s m�quinas agr�colas ou rodovi�rias ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104500', '84339090', 'Partes reconhec�veis como exclusiva ou principalmente destinadas �s m�quinas agr�colas ou rodovi�rias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104600', '84811000', 'V�lvulas redutoras de press�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104700', '84812', 'V�lvulas para transmiss�o �leo-hidr�ulicas ou pneum�ticas ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104800', '84818092', 'V�lvulas solen�ides ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104900', '8482', 'Rolamentos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105000', '8483', '�rvores de transmiss�o (inclu�das as �rvores de "cames"e virabrequins) e manivelas^ mancais e "bronzes"^ engrenagens e rodas de fric��o^ eixos de esferas ou de roletes^ redutores, multiplicadores, cai', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105100', '8484', 'Juntas metalopl�sticas^ jogos ou sortidos de juntas de composi��es diferentes, apresentados em bolsas, envelopes ou embalagens semelhantes^ juntas de veda��o mec�nicas (selos mec�nicos) ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105200', '850520', 'Acoplamentos, embreagens, variadores de velocidade e freios, eletromagn�ticos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105300', '85071000', 'Acumuladores el�tricos de chumbo, do tipo utilizado para o arranque dos motores de pist�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105400', '8511', 'Aparelhos e dispositivos el�tricos de igni��o ou de arranque para motores de igni��o por centelha ou por compress�o (por exemplo, magnetos, d�namos-magnetos, bobinas de igni��o, velas de igni��o ou de', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105500', '851220', 'Aparelhos el�tricos de ilumina��o ou de sinaliza��o (exceto os da posi��o 8539), limpadores de para-brisas, degeladores e desemba�adores (desembaciadores) el�tricos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105500', '851240', 'Aparelhos el�tricos de ilumina��o ou de sinaliza��o (exceto os da posi��o 8539), limpadores de para-brisas, degeladores e desemba�adores (desembaciadores) el�tricos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105500', '85129000', 'Aparelhos el�tricos de ilumina��o ou de sinaliza��o (exceto os da posi��o 8539), limpadores de para-brisas, degeladores e desemba�adores (desembaciadores) el�tricos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105600', '85171213', 'Telefones m�veis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105700', '8518', 'Alto-falantes, amplificadores el�tricos de audiofrequ�ncia e partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105800', '85185000', 'Aparelhos el�tricos de amplifica��o de som para ve�culos automotores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105900', '851981', 'Aparelhos de reprodu��o de som ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106000', '8525501', 'Aparelhos transmissores (emissores) de radiotelefonia ou radiotelegrafia (r�dio receptor/transmissor) ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106000', '85256010', 'Aparelhos transmissores (emissores) de radiotelefonia ou radiotelegrafia (r�dio receptor/transmissor) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106100', '85272', 'Aparelhos receptores de radiodifus�o que s� funcionam com fonte externa de energia, exceto os classificados na posi��o 8527.21.90 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106200', '85272190', 'Outros aparelhos receptores de radiodifus�o que funcionem com fonte externa de energia^ outros aparelhos videof�nicos de grava��o ou de reprodu��o, mesmo incorporando um receptor de sinais videof�nico', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106200', '85219090', 'Outros aparelhos receptores de radiodifus�o que funcionem com fonte externa de energia^ outros aparelhos videof�nicos de grava��o ou de reprodu��o, mesmo incorporando um receptor de sinais videof�nico', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106300', '85291090', 'Antenas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106400', '85340000', 'Circuitos impressos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106500', '853530', 'Interruptores e seccionadores e comutadores ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106500', '853650', 'Interruptores e seccionadores e comutadores ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106600', '85361000', 'Fus�veis e corta-circuitos de fus�veis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106700', '85362000', 'Disjuntores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106800', '85364', 'Rel�s ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106900', '8538', 'Partes reconhec�veis como exclusivas ou principalmente destinados aos aparelhos dos itens 65.0, 66.0, 67.0 e 68.0 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107000', '85365090', 'Interruptores, seccionadores e comutadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107100', '853910', 'Far�is e projetores, em unidades seladas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107200', '85392', 'L�mpadas e tubos de incandesc�ncia, exceto de raios ultravioleta ou infravermelhos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107300', '85442000', 'Cabos coaxiais e outros condutores el�tricos coaxiais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107400', '85443000', 'Jogos de fios para velas de igni��o e outros jogos de fios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107500', '8707', 'Carro�arias para os ve�culos autom�veis das posi��es 8701 a 8705, inclu�das as cabinas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107600', '8708', 'Partes e acess�rios dos ve�culos autom�veis das posi��es 8701 a 8705 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107700', '87141', 'Parte e acess�rios de motocicletas (inclu�dos os ciclomotores) ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107800', '87169090', 'Engates para reboques e semi-reboques ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107900', '902610', 'Medidores de n�vel^ Medidores de vaz�o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108000', '902620', 'Aparelhos para medida ou controle da press�o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108100', '9029', 'Contadores, indicadores de velocidade e tac�metros, suas partes e acess�rios ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108200', '90303321', 'Amper�metros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108300', '90318040', 'Aparelhos digitais, de uso em ve�culos autom�veis, para medida e indica��o de m�ltiplas grandezas tais como: velocidade m�dia, consumos instant�neo e m�dio e autonomia (computador de bordo) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108400', '9032892', 'Controladores eletr�nicos ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108500', '91040000', 'Rel�gios para pain�is de instrumentos e rel�gios semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108600', '94012000', 'Assentos e partes de assentos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108600', '94019090', 'Assentos e partes de assentos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108700', '96138000', 'Acendedores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108800', '4009', 'Tubos de borracha vulcanizada n�o endurecida, mesmo providos de seus acess�rios ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108900', '45049000', 'Juntas de veda��o de corti�a natural e de amianto ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108900', '68129910', 'Juntas de veda��o de corti�a natural e de amianto ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109000', '48234000', 'Papel-diagrama para tac�grafo, em disco ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109100', '39191000', 'Fitas, tiras, adesivos, auto-colantes, de pl�stico, refletores, mesmo em rolos^ placas met�licas com pel�cula de pl�stico refletora, pr�prias para coloca��o em carrocerias, para-choques de ve�culos de', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109100', '39199000', 'Fitas, tiras, adesivos, auto-colantes, de pl�stico, refletores, mesmo em rolos^ placas met�licas com pel�cula de pl�stico refletora, pr�prias para coloca��o em carrocerias, para-choques de ve�culos de', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109100', '87082999', 'Fitas, tiras, adesivos, auto-colantes, de pl�stico, refletores, mesmo em rolos^ placas met�licas com pel�cula de pl�stico refletora, pr�prias para coloca��o em carrocerias, para-choques de ve�culos de', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109200', '84123110', 'Cilindros pneum�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109300', '84131900', 'Bomba el�trica de lavador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109300', '84135090', 'Bomba el�trica de lavador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109300', '84138100', 'Bomba el�trica de lavador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109400', '84136019', 'Bomba de assist�ncia de dire��o hidr�ulica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109400', '84137010', 'Bomba de assist�ncia de dire��o hidr�ulica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109500', '84145910', 'Motoventiladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109500', '84145990', 'Motoventiladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109600', '84213990', 'Filtros de p�len do ar-condicionado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109700', '85011019', '"M�quina" de vidro el�trico de porta ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109800', '85013110', 'Motor de limpador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109900', '85045000', 'Bobinas de reat�ncia e de auto-indu��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110000', '850720', 'Baterias de chumbo e de n�quel-c�dmio ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110000', '850730', 'Baterias de chumbo e de n�quel-c�dmio ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110100', '85123000', 'Aparelhos de sinaliza��o ac�stica (buzina) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110200', '9032898', 'Instrumentos para regula��o de grandezas n�o el�tricas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110200', '9032899', 'Instrumentos para regula��o de grandezas n�o el�tricas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110300', '90271000', 'Analisadores de gases ou de fuma�a (sonda lambda) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110400', '40081100', 'Perfilados de borracha vulcanizada n�o endurecida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110500', '56012219', 'Artefatos de pasta de fibra de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110600', '57032000', 'Tapetes/carpetes - nail�n ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110700', '57033000', 'Tapetes de mat�rias t�xteis sint�ticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110800', '59119000', 'Forra��o interior capacete ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110900', '69039099', 'Outros para-brisas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111000', '70072900', 'Moldura com espelho ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111100', '73145000', 'Corrente de transmiss�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111200', '73151100', 'Corrente transmiss�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111300', '73151210', 'Outras correntes de transmiss�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111400', '84189900', 'Condensador tubular met�lico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111500', '841950', 'Trocadores de calor ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111600', '84249090', 'Partes de aparelhos mec�nicos de pulverizar ou dispersar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111700', '84254910', 'Macacos manuais para ve�culos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111800', '84314100', 'Ca�ambas, p�s, ganchos e tenazes para m�quinas rodovi�rias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111900', '85016100', 'Geradores de corrente alternada de pot�ncia n�o superior a 75 kva ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112000', '85311090', 'Aparelhos el�tricos para alarme de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112100', '90141000', 'B�ssolas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112200', '90251990', 'Indicadores de temperatura ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112300', '90259010', 'Partes de indicadores de temperatura ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112400', '902690', 'Partes de aparelhos de medida ou controle ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112500', '90321010', 'Termostatos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112600', '90321090', 'Instrumentos e aparelhos para regula��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112700', '90322000', 'Pressostatos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112800', '871690', 'Pe�as para reboques e semi-reboques ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112900', '00000000', 'Outras pe�as, partes e acess�rios para ve�culos automotores n�o relacionados nos demais itens deste anexo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200100', '2205', 'Aperitivos, amargos, bitter e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200100', '22089000', 'Aperitivos, amargos, bitter e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200200', '22089000', 'Batida e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200300', '22089000', 'Bebida ice ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200400', '220720', '2208.40.00 ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200500', '2205', 'Catuaba e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200500', '22060090', 'Catuaba e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200500', '22089000', 'Catuaba e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200600', '22082000', 'Conhaque, brandy e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200700', '22060090', 'Cooler ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200700', '22089000', 'Cooler ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200800', '22085000', 'Gim (gin) e genebra ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200900', '2205', 'Jurubeba e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200900', '22060090', 'Jurubeba e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0200900', '22089000', 'Jurubeba e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201000', '22087000', 'Licores e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201100', '22082000', 'Pisco ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201200', '22084000', 'Rum ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201300', '22060090', 'Saque ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201400', '22089000', 'Steinhaeger ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201500', '22089000', 'Tequila ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201600', '220830', 'U�sque ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201700', '2205', 'Vermute e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201800', '22086000', 'Vodka ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201900', '22089000', 'Derivados de vodka ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202000', '22089000', 'Arak ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202100', '22082000', 'Aguardente v�nica / grappa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202200', '22060010', 'Sidra e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202300', '2205', 'Sangrias e coquet�is ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202300', '22060090', 'Sangrias e coquet�is ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202300', '22089000', 'Sangrias e coquet�is ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202400', '2204', 'Vinhos e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2204', 'Outras bebidas alco�licas n�o especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2205', 'Outras bebidas alco�licas n�o especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2206', 'Outras bebidas alco�licas n�o especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2207', 'Outras bebidas alco�licas n�o especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2208', 'Outras bebidas alco�licas n�o especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300100', '2201', '�gua mineral, gasosa ou n�o, ou pot�vel, naturais, em garrafa de vidro, retorn�vel ou n�o, com capacidade de at� 500 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300200', '2201', '�gua mineral, gasosa ou n�o, ou pot�vel, naturais, em embalagem com capacidade igual ou superior a 5.000 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300300', '2201', '�gua mineral, gasosa ou n�o, ou pot�vel, naturais, em embalagem de vidro, n�o retorn�vel, com capacidade de at� 300 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300400', '2201', '�gua mineral, gasosa ou n�o, ou pot�vel, naturais, em garrafa pl�stica de 1.500 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300500', '2201', '�gua mineral, gasosa ou n�o, ou pot�vel, naturais, em copos pl�sticos e embalagem pl�stica com capacidade de at� 500 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300600', '2201', '2202 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300700', '2202', 'Refrigerante em garrafa com capacidade igual ou superior a 600 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300800', '2202', 'Demais refrigerantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300900', '21069010', 'Xarope ou extrato concentrado destinados ao preparo de refrigerante em m�quina "pr�-mix"ou "post-mix" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301000', '22029000', 'Bebidas energ�ticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301100', '210690', 'Bebidas hidroeletrol�ticas (isot�nicas) ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301200', '22030000', 'Cerveja ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301300', '22029000', 'Cerveja sem �lcool ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301400', '22030000', 'Chope ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0400100', '2402', 'Charutos, cigarrilhas e cigarros, de tabaco ou dos seus suced�neos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0400200', '24031', 'Tabaco para fumar, mesmo contendo suced�neos de tabaco em qualquer propor��o ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0500100', '2523', 'Cimento ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600100', '220710', '�lcool et�lico n�o desnaturado, com um teor alco�lico em volume igual ou superior a 80% vol (�lcool et�lico anidro combust�vel e �lcool et�lico hidratado combust�vel) ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600200', '2710125', 'Gasolinas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600300', '2710191', 'Querosenes ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600400', '2710192', '�leos combust�veis ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600500', '2710193', '�leos lubrificantes ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600600', '2710199', 'Outros �leos de petr�leo ou de minerais betuminosos (exceto �leos brutos) e prepara��es n�o especificadas nem compreendidas noutras posi��es, que contenham, como constituintes b�sicos, 70% ou mais, em', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600700', '27109', 'Res�duos de �leos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600800', '2711', 'G�s de petr�leo e outros hidrocarbonetos gasosos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600900', '2713', 'Coque de petr�leo e outros res�duos de �leo de petr�leo ou de minerais betuminosos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0601000', '38260000', 'Biodiesel e suas misturas, que n�o contenham ou que contenham menos de 70%, em peso, de �leos de petr�leo ou de �leos minerais betuminosos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0601100', '3403', 'Prepara��es lubrificantes, exceto as contendo, como constituintes de base, 70% ou mais, em peso, de �leos de petr�leo ou de minerais betuminosos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0601200', '27102000', '�leos de petr�leo ou de minerais betuminosos (exceto �leos brutos) e prepara��es n�o especificadas nem compreendidas noutras posi��es, que contenham, como constituintes b�sicos, 70% ou mais, em peso, ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0700100', '27160000', 'Energia el�trica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800100', '40169990', 'Ferramentas de borracha vulcanizada n�o endurecida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800200', '44170010', 'Ferramentas, arma��es e cabos de ferramentas, de madeira ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800200', '44170090', 'Ferramentas, arma��es e cabos de ferramentas, de madeira ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800300', '6804', 'M�s e artefatos semelhantes, sem arma��o, para moer, desfibrar, triturar, amolar, polir, retificar ou cortar^ pedras para amolar ou para polir, manualmente, e suas partes, de pedras naturais, de abras', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800400', '8201', 'P�s, alvi�es, picaretas, enxadas, sachos, forcados e forquilhas, ancinhos e raspadeiras^ machados, pod�es e ferramentas semelhantes com gume^ tesouras de podarde todos os tipos^ foices e foicinhas, fa', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800500', '82022000', 'Folhas de serras de fita ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800600', '82029100', 'L�minas de serras m�quinas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800700', '8202', 'Serras manuais e outras folhas de serras (inclu�das as fresas-serras e as folhas n�o dentadas para serrar), exceto as classificadas nas posi��es 8202.20.00 e 8202.91.00 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800800', '8203', 'Limas, grosas, alicates (mesmo cortantes), tenazes, pin�as, cisalhas para metais, corta-tubos, corta-pinos, saca-bocados e ferramentas semelhantes, manuais, exceto as pin�as para sobrancelhas classifi', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800900', '8204', 'Chaves de porcas, manuais (inclu�das as chaves dinamom�tricas)^ chaves de caixa intercambi�veis, mesmo com cabos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801000', '8205', 'Ferramentas manuais (inclu�dos os diamantes de vidraceiro) n�o especificadas nem compreendidas em outras posi��es, lamparinas ou l�mpadas de soldar (ma�aricos) e semelhantes^ tornos de apertar, sargen', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801100', '8206', 'Ferramentas de pelo menos duas das posi��es 8202 a 8205, acondicionadas em sortidos para venda a retalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801200', '820740', 'Ferramentas de roscar interior ou exteriormente^ de mandrilar ou de brochar^ e de fresar ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801200', '820760', 'Ferramentas de roscar interior ou exteriormente^ de mandrilar ou de brochar^ e de fresar ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801200', '820770', 'Ferramentas de roscar interior ou exteriormente^ de mandrilar ou de brochar^ e de fresar ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801300', '8207', 'Outras ferramentas intercambi�veis para ferramentas manuais, mesmo mec�nicas, ou para m�quinas-ferramentas (por exemplo, de embutir, estampar, puncionar, furar, tornear, aparafusar), inclu�das as fiei', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801400', '8208', 'Facas e l�minas cortantes, para m�quinas ou para aparelhos mec�nicos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801500', '82090011', 'Plaquetas ou pastilhas intercambi�veis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801600', '8209', 'Outras plaquetas, varetas, pontas e objetos semelhantes para ferramentas, n�o montados, de ceramais ("cermets"), exceto as classificadas na posi��o 8209.00.11 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801700', '8211', 'Facas (exceto as da posi��o 8208) de l�mina cortante ou serrilhada, inclu�das as podadeiras de l�mina m�vel, e suas l�minas, exceto as de uso dom�stico ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801800', '8213', 'Tesouras e suas l�minas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801900', '8467', 'Ferramentas pneum�ticas, hidr�ulicas ou com motor (el�trico ou n�o el�trico) incorporado, de uso manual ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802000', '9015', 'Instrumentos e aparelhos de geod�sia, topografia, agrimensura, nivelamento, fotogrametria, hidrografia, oceanografia, hidrologia, meteorologia ou de geof�sica, exceto bussolas^ tel�metros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '90172000', 'Instrumentos de desenho, de tra�ado ou de c�lculo^ metros, micr�metros, paqu�metros, calibres e semelhantes^ partes e acess�rios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '901730', 'Instrumentos de desenho, de tra�ado ou de c�lculo^ metros, micr�metros, paqu�metros, calibres e semelhantes^ partes e acess�rios ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '901780', 'Instrumentos de desenho, de tra�ado ou de c�lculo^ metros, micr�metros, paqu�metros, calibres e semelhantes^ partes e acess�rios ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '90179090', 'Instrumentos de desenho, de tra�ado ou de c�lculo^ metros, micr�metros, paqu�metros, calibres e semelhantes^ partes e acess�rios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802200', '90251190', 'Term�metros, suas partes e acess�rios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802200', '90259010', 'Term�metros, suas partes e acess�rios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802300', '902519', 'Pir�metros, suas partes e acess�rios ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802300', '90259090', 'Pir�metros, suas partes e acess�rios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900100', '8539', 'L�mpadas el�tricas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900200', '8540', 'L�mpadas eletr�nicas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900300', '85041000', 'Reatores para l�mpadas ou tubos de descargas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900400', '853650', '�Starter� ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900500', '85437099', 'L�mpadas de LED (Diodos Emissores de Luz) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000100', '2522', 'Cal ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000200', '3816001', 'Argamassas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000200', '38245000', 'Argamassas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000300', '32149000', 'Outras argamassas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000400', '391000', 'Silicones em formas prim�rias, para uso na constru��o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000500', '3916', 'Revestimentos de PVC e outros pl�sticos^ forro, sancas e afins de PVC, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000600', '3917', 'Tubos, e seus acess�rios (por exemplo, juntas, cotovelos, flanges, uni�es), de pl�sticos, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000700', '3918', 'Revestimento de pavimento de PVC e outros pl�sticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000800', '3919', 'Chapas, folhas, tiras, fitas, pel�culas e outras formas planas, auto-adesivas, de pl�sticos, mesmo em rolos, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000900', '3919', 'Veda rosca, lona pl�stica para uso na constru��o, fitas isolantes e afins ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000900', '3920', 'Veda rosca, lona pl�stica para uso na constru��o, fitas isolantes e afins ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000900', '3921', 'Veda rosca, lona pl�stica para uso na constru��o, fitas isolantes e afins ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001000', '3921', 'Telha de pl�stico, mesmo refor�ada com fibra de vidro ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001100', '3921', 'Cumeeira de pl�stico, mesmo refor�ada com fibra de vidro ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001200', '3921', 'Chapas, laminados pl�sticos em bobina, para uso na constru��o, exceto os descritos nos itens 10.0 e 11.0 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001300', '3922', 'Banheiras, boxes para chuveiros, pias, lavat�rios, bid�s, sanit�rios e seus assentos e tampas, caixas de descarga e artigos semelhantes para usos sanit�rios ou higi�nicos, de pl�sticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001400', '3924', 'Artefatos de higiene/toucador de pl�stico, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001500', '39251000', 'Caixa d��gua, inclusive sua tampa, de pl�stico, mesmo refor�adas com fibra de vidro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001600', '392590', 'Outras telhas, cumeeira e caixa d��gua, inclusive sua tampa, de pl�stico, mesmo refor�adas com fibra de vidro ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001700', '39251000', 'Artefatos para apetrechamento de constru��es, de pl�sticos, n�o especificados nem compreendidos em outras posi��es, incluindo persianas, sancas, molduras, apliques e rosetas, caixilhos de polietileno ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001700', '392590', 'Artefatos para apetrechamento de constru��es, de pl�sticos, n�o especificados nem compreendidos em outras posi��es, incluindo persianas, sancas, molduras, apliques e rosetas, caixilhos de polietileno ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001800', '39252000', 'Portas, janelas e seus caixilhos, alizares e soleiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001900', '39253000', 'Postigos, estores (inclu�das as venezianas) e artefatos semelhantes e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002000', '392690', 'Outras obras de pl�stico, para uso na constru��o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002100', '4814', 'Papel de parede e revestimentos de parede semelhantes^ papel para vitrais ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002200', '68101900', 'Telhas de concreto ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002300', '6811', 'Telha, cumeeira e caixa d��gua, inclusive sua tampa, de fibrocimento, cimento-celulose ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002400', '6811', 'Caixas d''�gua, tanques e reservat�rios e suas tampas, telhas, calhas, cumeeiras e afins, de fibrocimento, cimento-celulose ou semelhantes, contendo ou n�o amianto, exceto os descritos no item 23.0 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002500', '69010000', 'Tijolos, placas (lajes), ladrilhos e outras pe�as cer�micas de farinhas siliciosas f�sseis ("kieselghur", tripolita, diatomita, por exemplo) ou de terras siliciosas semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002600', '6902', 'Tijolos, placas (lajes), ladrilhos e pe�as cer�micas semelhantes, para uso na constru��o, refrat�rios, que n�o sejam de farinhas siliciosas f�sseis nem de terras siliciosas semelhantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002700', '6904', 'Tijolos para constru��o, tijoleiras, tapa-vigas e produtos semelhantes, de cer�mica ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002800', '6905', 'Telhas, elementos de chamin�s, condutores de fuma�a, ornamentos arquitet�nicos, de cer�mica, e outros produtos cer�micos para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002900', '69060000', 'Tubos, calhas ou algerozes e acess�rios para canaliza��es, de cer�mica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003000', '6907', 'Ladrilhos e placas de cer�mica, exclusivamente para pavimenta��o ou revestimento ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003000', '6908', 'Ladrilhos e placas de cer�mica, exclusivamente para pavimenta��o ou revestimento ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003001', '6907', 'Cubos, pastilhas e artigos semelhantes de cer�mica, mesmo com suporte. ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003001', '6908', 'Cubos, pastilhas e artigos semelhantes de cer�mica, mesmo com suporte. ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003100', '6910', 'Pias, lavat�rios, colunas para lavat�rios, banheiras, bid�s, sanit�rios, caixas de descarga, mict�rios e aparelhos fixos semelhantes para usos sanit�rios, de cer�mica ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003200', '69120000', 'Artefatos de higiene/toucador de cer�mica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003300', '7003', 'Vidro vazado ou laminado, em chapas, folhas ou perfis, mesmo com camada absorvente, refletora ou n�o, mas sem qualquer outro trabalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003400', '7004', 'Vidro estirado ou soprado, em folhas, mesmo com camada absorvente, refletora ou n�o, mas sem qualquer outro trabalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003500', '7005', 'Vidro flotado e vidro desbastado ou polido em uma ou em ambas as faces, em chapas ou em folhas, mesmo com camada absorvente, refletora ou n�o, mas sem qualquer outro trabalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003600', '70071900', 'Vidros temperados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003700', '70072900', 'Vidros laminados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003800', '7008', 'Vidros isolantes de paredes m�ltiplas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003900', '7016', 'Blocos, placas, tijolos, ladrilhos, telhas e outros artefatos, de vidro prensado ou moldado, mesmo armado, para uso na constru��o^ cubos, pastilhas e outros artigos semelhantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004000', '72142000', 'Barras pr�prias para constru��es, exceto vergalh�es ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004100', '73089010', 'Outras barras pr�prias para constru��es, exceto vergalh�es ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004200', '72142000', 'Vergalh�es ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004300', '7213', 'Outros vergalh�es ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004300', '73089010', 'Outros vergalh�es ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004400', '72171090', 'Fios de ferro ou a�o n�o ligados, n�o revestidos, mesmo polidos^ cordas, cabos, tran�as (entran�ados), lingas e artefatos semelhantes, de ferro ou a�o, n�o isolados para usos el�tricos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004400', '7312', 'Fios de ferro ou a�o n�o ligados, n�o revestidos, mesmo polidos^ cordas, cabos, tran�as (entran�ados), lingas e artefatos semelhantes, de ferro ou a�o, n�o isolados para usos el�tricos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004500', '721720', 'Outros fios de ferro ou a�o, n�o ligados, galvanizados ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004600', '7307', 'Acess�rios para tubos (inclusive uni�es, cotovelos, luvas ou mangas), de ferro fundido, ferro ou a�o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004700', '73083000', 'Portas e janelas, e seus caixilhos, alizares e soleiras de ferro fundido, ferro ou a�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004800', '73084000', 'Material para andaimes, para arma��es (cofragens) e para escoramentos, (inclusive arma��es prontas, para estruturas de concreto armado ou argamassa armada), eletrocalhas e perfilados de ferro fundido,', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004800', '730890', 'Material para andaimes, para arma��es (cofragens) e para escoramentos, (inclusive arma��es prontas, para estruturas de concreto armado ou argamassa armada), eletrocalhas e perfilados de ferro fundido,', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004900', '73084000', 'Treli�as de a�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005000', '73089090', 'Telhas met�licas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005100', '7310', 'Caixas diversas (tais como caixa de correio, de entrada de �gua, de energia, de instala��o) de ferro, ferro fundido ou a�o^ pr�prias para a constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005200', '73130000', 'Arame farpado, de ferro ou a�o arames ou tiras, retorcidos, mesmo farpados, de ferro ou a�o, dos tipos utilizados em cercas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005300', '7314', 'Telas met�licas, grades e redes, de fios de ferro ou a�o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005400', '73151100', 'Correntes de rolos, de ferro fundido, ferro ou a�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005500', '73151290', 'Outras correntes de elos articulados, de ferro fundido, ferro ou a�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005600', '73158200', 'Correntes de elos soldados, de ferro fundido, de ferro ou a�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005700', '731700', 'Tachas, pregos, percevejos, esc�pulas, grampos ondulados ou biselados e artefatos semelhantes, de ferro fundido, ferro ou a�o, mesmo com a cabe�a de outra mat�ria, exceto cobre ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005800', '7318', 'Parafusos, pinos ou pernos, roscados, porcas, tira-fundos, ganchos roscados, rebites, chavetas, cavilhas, contrapinos, arruelas (inclu�das as de press�o) e artefatos semelhantes, de ferro fundido, fer', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005900', '7323', 'Palha de ferro ou a�o^ esponjas, esfreg�es, luvas e artefatos semelhantes para limpeza, polimento e usos semelhantes, de ferro ou a�o, exceto os classificados na posi��o 7323.10.00 de uso dom�stico ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006000', '7324', 'Artefatos de higiene ou de toucador, e suas partes, de ferro fundido, ferro ou a�o, inclu�das as pias, banheiras, lavat�rios, cubas, mict�rios, tanques e afins de ferro fundido, ferro ou a�o, para uso', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006100', '7325', 'Outras obras moldadas, de ferro fundido, ferro ou a�o, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006200', '7326', 'Abra�adeiras ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006300', '7407', 'Barras de cobre ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006400', '74111010', 'Tubos de cobre e suas ligas, para instala��es de �gua quente e g�s, para uso na constru��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006500', '7412', 'Acess�rios para tubos (por exemplo, uni�es, cotovelos, luvas ou mangas) de cobre e suas ligas, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006600', '7415', 'Tachas, pregos, percevejos, esc�pulas e artefatos semelhantes, de cobre, ou de ferro ou a�o com cabe�a de cobre, parafusos, pinos ou pernos, roscados, porcas, ganchos roscados, rebites, chavetas, cavi', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006700', '74182000', 'Artefatos de higiene/toucador de cobre, para uso na constru��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006800', '76071990', 'Manta de subcobertura aluminizada ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006900', '7608', 'Tubos de alum�nio e suas ligas, para refrigera��o e ar condicionado, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007000', '76090000', 'Acess�rios para tubos (por exemplo, uni�es, cotovelos, luvas ou mangas), de alum�nio, para uso na constru��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007100', '7610', 'Constru��es e suas partes (por exemplo, pontes e elementos de pontes, torres, p�rticos ou pilones, pilares, colunas, arma��es, estruturas para telhados, portas e janelas, e seus caixilhos, alizares e ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007200', '76152000', 'Artefatos de higiene/toucador de alum�nio, para uso na constru��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007300', '7616', 'Outras obras de alum�nio, pr�prias para constru��es, inclu�das as persianas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007400', '83024100', 'Outras guarni��es, ferragens e artigos semelhantes de metais comuns, para constru��es, inclusive puxadores. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007500', '8301', 'Fechaduras e ferrolhos (de chave, de segredo ou el�tricos), de metais comuns, inclu�das as suas partes fechos e arma��es com fecho, com fechadura, de metais comuns chaves para estes artigos, de metais', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007600', '83021000', 'Dobradi�as de metais comuns, de qualquer tipo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007700', '8307', 'Tubos flex�veis de metais comuns, mesmo com acess�rios, para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007800', '8311', 'Fios, varetas, tubos, chapas, eletrodos e artefatos semelhantes, de metais comuns ou de carbonetos met�licos, revestidos exterior ou interiormente de decapantes ou de fundentes, para soldagem (soldadu', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007900', '8481', 'Torneiras, v�lvulas (inclu�das as redutoras de press�o e as termost�ticas) e dispositivos semelhantes, para canaliza��es, caldeiras, reservat�rios, cubas e outros recipientes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '28289011', '�gua sanit�ria, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '28289019', '�gua sanit�ria, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '32064100', '�gua sanit�ria, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '38089419', '�gua sanit�ria, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100200', '34012090', 'Sab�es em p�, flocos, palhetas, gr�nulos ou outras formas semelhantes, para lavar roupas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100300', '34012090', 'Sab�es l�quidos para lavar roupas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100400', '34022000', 'Detergentes em p�, flocos, palhetas, gr�nulos ou outras formas semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100500', '34022000', 'Detergentes l�quidos, exceto para lavar roupa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100600', '34022000', 'Detergente l�quido para lavar roupa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100700', '3402', 'Outros agentes org�nicos de superf�cie (exceto sab�es)^ prepara��es tensoativas, prepara��es para lavagem (inclu�das as prepara��es auxiliares para lavagem) e prepara��es para limpeza (inclusive multi', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100800', '38099190', 'Amaciante/suavizante ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '39241000', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '39249000', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '68053010', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '68053090', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1101000', '2207', '�lcool et�lico para limpeza ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1101100', '73231000', 'Palhas de ferro ou a�o^ esponjas, esfreg�es, luvas e artefatos semelhantes para limpeza, polimento ou uso semelhantes^ todos de uso dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200100', '8504', 'Transformadores, bobinas de reat�ncia e de auto indu��o, inclusive os transformadores de pot�ncia superior a 16 KVA, classificados nas posi��es 8504.33.00 e 8504.34.00^ exceto os demais transformadore', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200200', '8516', 'Aquecedores el�tricos de �gua, inclu�dos os de imers�o, chuveiros ou duchas el�tricos, torneiras el�tricas, resist�ncias de aquecimento, inclusive as de duchas e chuveiros el�tricos e suas partes^ exc', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200300', '8535', 'Aparelhos para interrup��o, seccionamento, prote��o, deriva��o, liga��o ou conex�o de circuitos el�tricos (por exemplo, interruptores, comutadores, corta-circuitos, para-raios, limitadores de tens�o, ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200400', '8536', 'Aparelhos para interrup��o, seccionamento, prote��o, deriva��o, liga��o ou conex�o de circuitos el�tricos (por exemplo, interruptores, comutadores, rel�s, corta-circuitos, eliminadores de onda, plugue', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200500', '8538', 'Partes reconhec�veis como exclusiva ou principalmente destinadas aos aparelhos das posi��es 8535 e 8536 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200600', '74130000', 'Cabos, tran�as e semelhantes, de cobre, n�o isolados para usos el�tricos, exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200700', '8544', 'Fios, cabos (inclu�dos os cabos coaxiais) e outros condutores, isolados ou n�o, para usos el�tricos (inclu�dos os de cobre ou alum�nio, envernizados ou oxidados anodicamente), mesmo com pe�as de conex', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200700', '7605', 'Fios, cabos (inclu�dos os cabos coaxiais) e outros condutores, isolados ou n�o, para usos el�tricos (inclu�dos os de cobre ou alum�nio, envernizados ou oxidados anodicamente), mesmo com pe�as de conex', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200700', '7614', 'Fios, cabos (inclu�dos os cabos coaxiais) e outros condutores, isolados ou n�o, para usos el�tricos (inclu�dos os de cobre ou alum�nio, envernizados ou oxidados anodicamente), mesmo com pe�as de conex', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200800', '8546', 'Isoladores de qualquer mat�ria, para usos el�tricos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200900', '8547', 'Pe�as isolantes inteiramente de mat�rias isolantes, ou com simples pe�as met�licas de montagem (suportes roscados, por exemplo) incorporadas na massa, para m�quinas, aparelhos e instala��es el�tricas^', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300100', '3003', 'Medicamentos de refer�ncia � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300100', '3004', 'Medicamentos de refer�ncia � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300101', '3003', 'Medicamentos de refer�ncia � negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300101', '3004', 'Medicamentos de refer�ncia � negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300102', '3003', 'Medicamentos de refer�ncia � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300102', '3004', 'Medicamentos de refer�ncia � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300200', '3003', 'Medicamentos gen�rico � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300200', '3004', 'Medicamentos gen�rico � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300201', '3003', 'Medicamentos gen�rico � negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300201', '3004', 'Medicamentos gen�rico � negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300202', '3003', 'Medicamentos gen�rico � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300202', '3004', 'Medicamentos gen�rico � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300300', '3003', 'Medicamentos similar � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300300', '3004', 'Medicamentos similar � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300301', '3003', 'Medicamentos similar � negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300301', '3004', 'Medicamentos similar � negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300302', '3003', 'Medicamentos similar � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300302', '3004', 'Medicamentos similar � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300400', '3003', 'Outros tipos de medicamentos � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300400', '3004', 'Outros tipos de medicamentos � positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300401', '3003', 'Outros tipos de medicamentos - negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300401', '3004', 'Outros tipos de medicamentos - negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300402', '3003', 'Outros tipos de medicamentos � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300402', '3004', 'Outros tipos de medicamentos � neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300500', '300660', 'Prepara��es qu�micas contraceptivas � base de horm�nios, de outros produtos da posi��o 29.37 ou de espermicidas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300600', '2936', 'Provitaminas e vitaminas, naturais ou reproduzidas por s�ntese (inclu�dos os concentrados naturais), bem como os seus derivados utilizados principalmente como vitaminas, misturados ou n�o entre si, me', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300700', '300630', 'Prepara��es opacificantes (contrastantes) para exames radiogr�ficos e reagentes de diagn�stico concebidos para serem administrados ao paciente ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300800', '3002', 'Antissoro, outras fra��es do sangue, produtos imunol�gicos modificados, mesmo obtidos por via biotecnol�gica^ vacinas para medicina humana^ e produtos semelhantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300900', '3005', 'Algod�o, atadura, esparadrapo, haste flex�vel ou n�o, com uma ou ambas extremidades de algod�o, gazes, pensos, sinapismos, e outros, impregnados ou recobertos de subst�ncias farmac�uticas ou acondicio', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301000', '40151100', 'Luvas cir�rgicas e luvas de procedimento ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301000', '40151900', 'Luvas cir�rgicas e luvas de procedimento ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301100', '40141000', 'Preservativo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301200', '901831', 'Seringas, mesmo com agulhas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301300', '9018321', 'Agulhas para seringas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301400', '39269090', 'Contraceptivos (dispositivos intra-uterinos - DIU) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301400', '90189099', 'Contraceptivos (dispositivos intra-uterinos - DIU) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1400100', '4823209', 'Filtros descart�veis para coar caf� ou ch� ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1400200', '48236', 'Bandejas, travessas, pratos, x�caras ou ch�venas, ta�as, copos e artigos semelhantes, de papel ou cart�o ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1400300', '48131000', 'Papel para cigarro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500100', '3919', 'Lonas pl�sticas, exceto as para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500100', '3920', 'Lonas pl�sticas, exceto as para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500100', '3921', 'Lonas pl�sticas, exceto as para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500200', '3924', 'Artefatos de higiene/toucador de pl�stico, exceto os para uso na constru��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500300', '39241000', 'Servi�os de mesa e outros utens�lios de mesa ou de cozinha, de pl�stico, inclusive os descart�veis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600100', '4011', 'Pneus novos, dos tipos utilizados em autom�veis de passageiros (inclu�dos os ve�culos de uso misto - camionetas e os autom�veis de corrida) ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600200', '4011', 'Pneus novos, dos tipos utilizados em caminh�es (inclusive para os fora-de-estrada), �nibus, avi�es, m�quinas de terraplenagem, de constru��o e conserva��o de estradas, m�quinas e tratores agr�colas, p', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600300', '4011', 'Pneus novos para motocicletas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600400', '4011', 'Outros tipos de pneus novos, exceto para bicicletas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600500', '40115000', 'Pneus novos de borracha dos tipos utilizados em bicicletas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600600', '40121', 'Pneus recauchutados ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600700', '401290', 'Protetores de borracha, exceto para bicicletas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600701', '401290', 'Protetores de borracha para bicicletas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600800', '4013', 'C�maras de ar de borracha, exceto para bicicletas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600900', '40132000', 'C�maras de ar de borracha dos tipos utilizados em bicicletas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700100', '17049010', 'Chocolate branco, em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700200', '18063110', 'Chocolates contendo cacau, em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700200', '18063120', 'Chocolates contendo cacau, em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700300', '18063210', 'Chocolate em barras, tabletes ou blocos ou no estado l�quido, em pasta, em p�, gr�nulos ou formas semelhantes, em recipientes ou embalagens imediatas de conte�do inferior ou igual a 2 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700300', '18063220', 'Chocolate em barras, tabletes ou blocos ou no estado l�quido, em pasta, em p�, gr�nulos ou formas semelhantes, em recipientes ou embalagens imediatas de conte�do inferior ou igual a 2 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700400', '18069000', 'Chocolates e outras prepara��es aliment�cias contendo cacau, em embalagens de conte�do inferior ou igual a 1 kg, exclu�dos os achocolatados em p� ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700500', '18069000', 'Achocolatados em p�, em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700600', '18069000', 'Caixas de bombons contendo cacau, em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700700', '17049090', 'Bombons, inclusive � base de chocolate branco sem cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700800', '18069000', 'Bombons, balas, caramelos, confeitos, pastilhas e outros produtos de confeitaria, contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700900', '210120', 'Bebidas prontas � base de mate ou ch� ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700900', '22029000', 'Bebidas prontas � base de mate ou ch� ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701000', '22021000', 'Refrescos e outras bebidas n�o alco�licas, exceto os refrigerantes e as demais bebidas de que trata o Anexo IV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701100', '22029000', 'Bebidas prontas � base de caf� ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701200', '2009', 'Sucos de frutas ou de produtos hort�colas^ mistura de sucos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701300', '20098', '�gua de coco ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701400', '22029000', 'N�ctares de frutas e outras bebidas n�o alco�licas prontas para beber, exceto isot�nicos e energ�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701500', '22029000', 'Bebidas alimentares prontas � base de soja, leite ou cacau, inclusive os produtos denominados bebidas l�cteas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701600', '22021000', 'Refrescos e outras bebidas prontas para beber � base de ch� e mate ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701700', '04021', 'Leite em p�, blocos ou gr�nulos, exceto creme de leite ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701700', '04022', 'Leite em p�, blocos ou gr�nulos, exceto creme de leite ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701700', '04029', 'Leite em p�, blocos ou gr�nulos, exceto creme de leite ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701800', '19011020', 'Farinha l�ctea ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701900', '19011010', 'Leite modificado para alimenta��o de crian�as. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702000', '19011090', 'Prepara��es para alimenta��o infantil � base de farinhas, grumos, s�molas ou amidos e outros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702000', '19011030', 'Prepara��es para alimenta��o infantil � base de farinhas, grumos, s�molas ou amidos e outros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702100', '04011010', 'Leite �longa vida� (UHT - �Ultra High Temperature�), em recipiente de conte�do inferior ou igual a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702100', '04012010', 'Leite �longa vida� (UHT - �Ultra High Temperature�), em recipiente de conte�do inferior ou igual a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702101', '04011010', 'Leite �longa vida� (UHT - �Ultra High Temperature�), em recipiente de conte�do superior a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702101', '04012010', 'Leite �longa vida� (UHT - �Ultra High Temperature�), em recipiente de conte�do superior a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702200', '04014010', 'Leite em recipiente de conte�do inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702200', '04015010', 'Leite em recipiente de conte�do inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702201', '04014010', 'Leite em recipiente de conte�do superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702201', '04015010', 'Leite em recipiente de conte�do superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702300', '04011090', 'Leite do tipo pasteurizado em recipiente de conte�do inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702300', '04012090', 'Leite do tipo pasteurizado em recipiente de conte�do inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702301', '04011090', 'Leite do tipo pasteurizado em recipiente de conte�do superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702301', '04012090', 'Leite do tipo pasteurizado em recipiente de conte�do superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '0401402', 'Creme de leite, em recipiente de conte�do inferior ou igual a 1 kg ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '04022130', 'Creme de leite, em recipiente de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '04022930', 'Creme de leite, em recipiente de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '04029', 'Creme de leite, em recipiente de conte�do inferior ou igual a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '0401402', 'Creme de leite, em recipiente de conte�do superior a 1 kg ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '04022130', 'Creme de leite, em recipiente de conte�do superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '04022930', 'Creme de leite, em recipiente de conte�do superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '04029', 'Creme de leite, em recipiente de conte�do superior a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040110', 'Outros cremes de leite, em recipiente de conte�do inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040120', 'Outros cremes de leite, em recipiente de conte�do inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040150', 'Outros cremes de leite, em recipiente de conte�do inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040210', 'Outros cremes de leite, em recipiente de conte�do inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '04022920', 'Outros cremes de leite, em recipiente de conte�do inferior ou igual a 1kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702500', '04029', 'Leite condensado, em recipiente de conte�do inferior ou igual a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702501', '04029', 'Leite condensado, em recipiente de conte�do superior a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702600', '0403', 'Iogurte e leite fermentado em recipiente de conte�do inferior ou igual a 2 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702601', '0403', 'Iogurte e leite fermentado em recipiente de conte�do superior a 2 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702700', '04039000', 'Coalhada ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702800', '0406', 'Requeij�o e similares, em recipiente de conte�do inferior ou igual a 1 kg, exceto as embalagens individuais de conte�do inferior ou igual a 10 g ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702801', '0406', 'Requeij�o e similares, em recipiente de conte�do superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702900', '0406', 'Queijos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703000', '04051000', 'Manteiga, em embalagem de conte�do inferior ou igual a 1 kg, exceto as embalagens individuais de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703001', '04051000', 'Manteiga, em embalagem de conte�do superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703100', '15171000', 'Margarina em recipiente de conte�do inferior ou igual a 500 g, exceto as embalagens individuais de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703200', '15171000', 'Margarina, em recipiente de conte�do superior a 500 g e inferior a 1 kg, creme vegetal em recipiente de conte�do inferior a 1 kg, exceto as embalagens individuais de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703201', '15171000', 'Margarina e creme vegetal, em recipiente de conte�do de 1 kg. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703202', '151790', 'Outras margarinas e cremes vegetais em recipiente de conte�do inferior a 1 kg, exceto as embalagens individuais de conte�do inferior ou igual a 10 g ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703300', '15162000', 'Gorduras e �leos vegetais e respectivas fra��es, parcial ou totalmente hidrogenados, interesterificados, reesterificados ou elaidinizados, mesmo refinados, mas n�o preparados de outro modo, em recipie', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703301', '15162000', 'Gorduras e �leos vegetais e respectivas fra��es, parcial ou totalmente hidrogenados, interesterificados, reesterificados ou elaidinizados, mesmo refinados, mas n�o preparados de outro modo, em recipie', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703400', '19019020', 'Doces de leite ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703500', '19041000', 'Produtos � base de cereais, obtidos por expans�o ou torrefa��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703500', '19049000', 'Produtos � base de cereais, obtidos por expans�o ou torrefa��o ', 8)^

COMMIT WORK^

INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703600', '19059090', 'Salgadinhos diversos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703700', '20052000', 'Batata frita, inhame e mandioca fritos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703700', '20059', 'Batata frita, inhame e mandioca fritos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703800', '20081', 'Amendoim e castanhas tipo aperitivo, em embalagem de conte�do inferior ou igual a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703801', '20081', 'Amendoim e castanhas tipo aperitivo, em embalagem de conte�do superior a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703900', '21032010', 'Catchup em embalagens imediatas de conte�do inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704000', '21039021', 'Condimentos e temperos compostos, incluindo molho de pimenta e outros molhos, em embalagens imediatas de conte�do inferior ou igual a 1 kg, exceto as embalagens contendo envelopes individualizados (sa', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704000', '21039091', 'Condimentos e temperos compostos, incluindo molho de pimenta e outros molhos, em embalagens imediatas de conte�do inferior ou igual a 1 kg, exceto as embalagens contendo envelopes individualizados (sa', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704100', '21031010', 'Molhos de soja preparados em embalagens imediatas de conte�do inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (saches) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704200', '21033010', 'Farinha de mostarda em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704300', '21033021', 'Mostarda preparada em embalagens imediatas de conte�do inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704400', '21039011', 'Maionese em embalagens imediatas de conte�do inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704500', '2002', 'Tomates preparados ou conservados, exceto em vinagre ou em �cido ac�tico, em embalagens de conte�do inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704600', '21032010', 'Molhos de tomate em embalagens imediatas de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704700', '17049090', 'Barra de cereais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704700', '19042000', 'Barra de cereais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704700', '19049000', 'Barra de cereais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704800', '18063120', 'Barra de cereais contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704800', '18063220', 'Barra de cereais contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704800', '18069000', 'Barra de cereais contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704900', '11010010', 'Farinha de trigo, em embalagem inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704901', '11010010', 'Farinha de trigo, em embalagem superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705000', '11010020', 'Mistura de farinha de trigo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705100', '19012000', 'Misturas e prepara��es para bolos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705100', '19019090', 'Misturas e prepara��es para bolos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705200', '19023000', 'Massas aliment�cias tipo instant�nea ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705300', '1902', 'Massas aliment�cias, cozidas ou recheadas (de carne ou de outras subst�ncias) ou preparadas de outro modo, exceto as massas aliment�cias tipo instant�nea ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705301', '19024000', 'Cuscuz ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705400', '19021', 'Massas aliment�cias n�o cozidas, nem recheadas, nem preparadas de outro modo', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705500', '190520', 'P�es industrializados, inclusive de especiarias, exceto panetones e bolo de forma ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705600', '19052090', 'Bolo de forma, inclusive de especiarias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705700', '19052010', 'Panetones ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705800', '190531', 'Biscoitos e bolachas derivados de farinha de trigo^ exceto dos tipos "cream cracker", "�gua e sal", "maisena", "maria" e outros de consumo popular, n�o adicionados de cacau, nem recheados, cobertos ou', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705900', '190531', 'Biscoitos e bolachas n�o derivados de farinha de trigo^ exceto dos tipos "cream cracker", "�gua e sal", "maisena" e "maria" e outros de consumo popular, n�o adicionados de cacau, nem recheados, cobert', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706000', '190531', 'Biscoitos e bolachas dos tipos "cream cracker", "�gua e sal", "maisena" e "maria" e outros de consumo popular, adicionados de edulcorantes e n�o adicionados de cacau, nem recheados, cobertos ou amante', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706100', '19059020', 'Biscoitos e bolachas dos tipos "cream cracker", "�gua e sal", "maisena" e "maria" e outros de consumo popular, n�o adicionados de cacau, nem recheados, cobertos ou amanteigados, independentemente de s', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706200', '190532', '�Waffles� e �wafers� - sem cobertura ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706300', '190532', '�Waffles� e �wafers�- com cobertura ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706400', '190540', 'Torradas, p�o torrado e produtos semelhantes torrados ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706500', '19059010', 'Outros p�es de forma ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706600', '19059020', 'Outras bolachas, exceto casquinhas para sorvete ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706700', '19059090', 'Outros p�es e bolos industrializados e produtos de panifica��o n�o especificados anteriormente^ exceto casquinhas para sorvete e p�o franc�s de at� 200 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706800', '19051000', 'P�o denominado knackebrot ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706900', '19059090', 'P�o franc�s de at� 200 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707000', '190590', 'Demais p�es industrializados ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707100', '15079011', '�leo de soja refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707200', '1508', '�leo de amendoim refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707300', '1509', 'Azeites de oliva, em recipientes com capacidade inferior ou igual a 2 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707301', '1509', 'Azeites de oliva, em recipientes com capacidade superior a 2 litros e inferior ou igual a 5 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707302', '1509', 'Azeites de oliva, em recipientes com capacidade superior a 5 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707400', '15100000', 'Outros �leos e respectivas fra��es, obtidos exclusivamente a partir de azeitonas, mesmo refinados, mas n�o quimicamente modificados, e misturas desses �leos ou fra��es com �leos ou fra��es da posi��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707500', '15121911', '�leo de girassol ou de algod�o refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707500', '15122910', '�leo de girassol ou de algod�o refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707600', '15141', '�leo de canola, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707700', '15151900', '�leo de linha�a refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707800', '15152910', '�leo de milho refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707900', '15122990', 'Outros �leos refinados, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708000', '15179010', 'Misturas de �leos refinados, para consumo humano, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conte�do inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1511', 'Outros �leos vegetais comest�veis n�o especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1513', 'Outros �leos vegetais comest�veis n�o especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1514', 'Outros �leos vegetais comest�veis n�o especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1515', 'Outros �leos vegetais comest�veis n�o especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1516', 'Outros �leos vegetais comest�veis n�o especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1518', 'Outros �leos vegetais comest�veis n�o especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708200', '16010000', 'Enchidos (embutidos) e produtos semelhantes, de carne, miudezas ou sangue^ exceto salsicha, lingui�a e mortadela ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708300', '16010000', 'Salsicha e lingui�a ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708400', '16010000', 'Mortadela ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708500', '1602', 'Outras prepara��es e conservas de carne, miudezas ou de sangue ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708600', '1604', 'Prepara��es e conservas de peixes^ caviar e seus suced�neos preparados a partir de ovas de peixe^ exceto sardinha em conserva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708700', '1604', 'Sardinha em conserva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708800', '1605', 'Crust�ceos, moluscos e outros invertebrados aqu�ticos, preparados ou em conservas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0201', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0202', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0204', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0206', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '02102000', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '02109900', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '1502', 'Carne de gado bovino, ovino e bufalino e produtos comest�veis resultantes da matan�a desse gado submetidos � salga, secagem ou desidrata��o ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709000', '0204', 'Carnes de animais das esp�cies caprina, frescas, refrigeradas ou congeladas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0203', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0206', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0207', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0209', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '02101', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '02109900', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '1501', 'Carnes e demais produtos comest�veis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de su�nos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709200', '0710', 'Produtos hort�colas, cozidos em �gua ou vapor, congelados, em embalagens de conte�do inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709201', '0710', 'Produtos hort�colas, cozidos em �gua ou vapor, congelados, em embalagens de conte�do superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709300', '0811', 'Frutas, n�o cozidas ou cozidas em �gua ou vapor, congeladas, mesmo adicionadas de a��car ou de outros edulcorantes, em embalagens de conte�do inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709301', '0811', 'Frutas, n�o cozidas ou cozidas em �gua ou vapor, congeladas, mesmo adicionadas de a��car ou de outros edulcorantes, em embalagens de conte�do superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709400', '2001', 'Produtos hort�colas, frutas e outras partes comest�veis de plantas, preparados ou conservados em vinagre ou em �cido ac�tico, em embalagens de conte�do inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709401', '2001', 'Produtos hort�colas, frutas e outras partes comest�veis de plantas, preparados ou conservados em vinagre ou em �cido ac�tico, em embalagens de conte�do superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709500', '2004', 'Outros produtos hort�colas preparados ou conservados, exceto em vinagre ou em �cido ac�tico, congelados, com exce��o dos produtos da posi��o 20.06, em embalagens de conte�do inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709501', '2004', 'Outros produtos hort�colas preparados ou conservados, exceto em vinagre ou em �cido ac�tico, congelados, com exce��o dos produtos da posi��o 20.06, em embalagens de conte�do superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709600', '2005', 'Outros produtos hort�colas preparados ou conservados, exceto em vinagre ou em �cido ac�tico, n�o congelados, com exce��o dos produtos da posi��o 20.06, exclu�dos batata, inhame e mandioca fritos, em e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709601', '2005', 'Outros produtos hort�colas preparados ou conservados, exceto em vinagre ou em �cido ac�tico, n�o congelados, com exce��o dos produtos da posi��o 20.06, exclu�dos batata, inhame e mandioca fritos, em e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709700', '20060000', 'Produtos hort�colas, frutas, cascas de frutas e outras partes de plantas, conservados com a��car (passados por calda, glaceados ou cristalizados), em embalagens de conte�do inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709701', '20060000', 'Produtos hort�colas, frutas, cascas de frutas e outras partes de plantas, conservados com a��car (passados por calda, glaceados ou cristalizados), em embalagens de conte�do superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709800', '2007', 'Doces, gel�ias, �marmelades�, pur�s e pastas de frutas, obtidos por cozimento, com ou sem adi��o de a��car ou de outros edulcorantes, em embalagens de conte�do inferior ou igual a 1 kg, exceto as emba', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709801', '2007', 'Doces, gel�ias, �marmelades�, pur�s e pastas de frutas, obtidos por cozimento, com ou sem adi��o de a��car ou de outros edulcorantes, em embalagens de conte�do superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709900', '2008', 'Frutas e outras partes comest�veis de plantas, preparadas ou conservadas de outro modo, com ou sem adi��o de a��car ou de outros edulcorantes ou de �lcool, n�o especificadas nem compreendidas em outra', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709901', '2008', 'Frutas e outras partes comest�veis de plantas, preparadas ou conservadas de outro modo, com ou sem adi��o de a��car ou de outros edulcorantes ou de �lcool, n�o especificadas nem compreendidas em outra', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710000', '0901', 'Caf� torrado e mo�do, em embalagens de conte�do inferior ou igual a 2 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710001', '0901', 'Caf� torrado e mo�do, em embalagens de conte�do superior a 2 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710100', '0902', 'Ch�, mesmo aromatizado ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710100', '12119090', 'Ch�, mesmo aromatizado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710100', '21069090', 'Ch�, mesmo aromatizado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710200', '090300', 'Mate ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710300', '17011', 'A��car refinado, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710300', '17019900', 'A��car refinado, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710301', '17011', 'A��car refinado, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710301', '17019900', 'A��car refinado, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710302', '17011', 'A��car refinado, em embalagens de conte�do superior a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710302', '17019900', 'A��car refinado, em embalagens de conte�do superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710400', '17019100', 'A��car refinado adicionado de aromatizante ou de corante em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou i', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710401', '17019100', 'A��car refinado adicionado de aromatizante ou de corante em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710402', '17019100', 'A��car refinado adicionado de aromatizante ou de corante em embalagens de conte�do superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710500', '17011', 'A��car cristal, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710500', '17019900', 'A��car cristal, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710501', '17011', 'A��car cristal, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710501', '17019900', 'A��car cristal, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710502', '17011', 'A��car cristal, em embalagens de conte�do superior a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710502', '17019900', 'A��car cristal, em embalagens de conte�do superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710600', '17019100', 'A��car cristal adicionado de aromatizante ou de corante, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou i', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710601', '17019100', 'A��car cristal adicionado de aromatizante ou de corante, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710602', '170191', 'A��car cristal adicionado de aromatizante ou de corante, em embalagens de conte�do superior a 5 kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710700', '17011', 'Outros tipos de a��car, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710700', '17019900', 'Outros tipos de a��car, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710701', '17011', 'Outros tipos de a��car, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710701', '17019900', 'Outros tipos de a��car, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710702', '17011', 'Outros tipos de a��car, em embalagens de conte�do superior a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710702', '17019900', 'Outros tipos de a��car, em embalagens de conte�do superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710800', '17019100', 'Outros tipos de a��car adicionado de aromatizante ou de corante, em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do infer', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710801', '17019100', 'Outros tipos de a��car adicionado de aromatizante ou de corante, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710802', '17019100', 'Outros tipos de a��car adicionado de aromatizante ou de corante, em embalagens de conte�do superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710900', '1702', 'Outros a��cares em embalagens de conte�do inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sach�s) de conte�do inferior ou igual a 10 g ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710901', '1702', 'Outros a��cares, em embalagens de conte�do superior a 2 kg e inferior ou igual a 5 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710902', '1702', 'Outros a��cares, em embalagens de conte�do superior a 5 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711000', '20081900', 'Milho para pipoca (micro-ondas) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711100', '21011', 'Extratos, ess�ncias e concentrados de caf� e prepara��es � base destes extratos, ess�ncias ou concentrados ou � base de caf�, em embalagens de conte�do inferior ou igual a 500 g, exceto as prepara��es', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711200', '210120', 'Extratos, ess�ncias e concentrados de ch� ou de mate e prepara��es � base destes extratos, ess�ncias ou concentrados ou � base de ch� ou de mate, em embalagens de conte�do inferior ou igual a 500 g, e', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711300', '19019090', 'Prepara��es em p� para cappuccino e similares, em embalagens de conte�do inferior ou igual a 500 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711300', '21011190', 'Prepara��es em p� para cappuccino e similares, em embalagens de conte�do inferior ou igual a 500 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711300', '21011200', 'Prepara��es em p� para cappuccino e similares, em embalagens de conte�do inferior ou igual a 500 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800100', '69111010', 'Artigos para servi�o de mesa ou de cozinha, de porcelana, inclusive os descart�veis � estojos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800200', '69111090', 'Artigos para servi�o de mesa ou de cozinha, de porcelana, inclusive os descart�veis � avulsos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800300', '69120000', 'Artigos para servi�o de mesa ou de cozinha, de cer�mica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800400', '69120000', 'Velas para filtros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900100', '32131000', 'Tinta guache ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900200', '39162000', 'Espiral - perfil para encaderna��o, de pl�stico e outros materiais classificados nas posi��es 3901 a 3914 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900300', '39261000', 'Artigos de escrit�rio e artigos escolares de pl�stico e outros materiais classificados nas posi��es 3901 a 3914, exceto estojos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900400', '42021', 'Maletas e pastas para documentos e de estudante, e artefatos semelhantes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900400', '42029', 'Maletas e pastas para documentos e de estudante, e artefatos semelhantes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900500', '39269090', 'Prancheta de pl�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900600', '48022090', 'Bobina para fax ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900600', '48119090', 'Bobina para fax ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900700', '4802549', 'Papel seda ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900800', '48025499', 'Bobina branca para m�quina de calcular ou PDV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900800', '48025799', 'Bobina branca para m�quina de calcular ou PDV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900800', '48162000', 'Bobina branca para m�quina de calcular ou PDV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900900', '4802569', 'Cartolina escolar e papel cart�o, brancos e coloridos^ recados auto adesivos (LP note)^ pap�is de presente, todos cortados em tamanho pronto para uso escolar e dom�stico ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900900', '4802579', 'Cartolina escolar e papel cart�o, brancos e coloridos^ recados auto adesivos (LP note)^ pap�is de presente, todos cortados em tamanho pronto para uso escolar e dom�stico ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900900', '4802589', 'Cartolina escolar e papel cart�o, brancos e coloridos^ recados auto adesivos (LP note)^ pap�is de presente, todos cortados em tamanho pronto para uso escolar e dom�stico ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37031010', 'Papel fotogr�fico, exceto: (i) os pap�is fotogr�ficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37031029', 'Papel fotogr�fico, exceto: (i) os pap�is fotogr�ficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37032000', 'Papel fotogr�fico, exceto: (i) os pap�is fotogr�ficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37039010', 'Papel fotogr�fico, exceto: (i) os pap�is fotogr�ficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37040000', 'Papel fotogr�fico, exceto: (i) os pap�is fotogr�ficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '48022000', 'Papel fotogr�fico, exceto: (i) os pap�is fotogr�ficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901100', '48101390', 'Papel alma�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901200', '48161000', 'Papel hectogr�fico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901300', '39202019', 'Papel celofane e tipo celofane ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901400', '48062000', 'Papel imperme�vel ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901500', '48081000', 'Papel crepon ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901600', '48102290', 'Papel fantasia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901700', '4809', 'Papel-carbono, papel autocopiativo (exceto os vendidos em rolos de di�metro igual ou superior a 60 cm e os vendidos em folhas de formato igual ou superior a 60 cm de altura e igual ou superior a 90 cm', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901700', '4816', 'Papel-carbono, papel autocopiativo (exceto os vendidos em rolos de di�metro igual ou superior a 60 cm e os vendidos em folhas de formato igual ou superior a 60 cm de altura e igual ou superior a 90 cm', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901800', '4817', 'Envelopes, aerogramas, bilhetes-postais n�o ilustrados e cart�es para correspond�ncia, de papel ou cart�o, caixas, sacos e semelhantes, de papel ou cart�o, contendo um sortido de artigos para correspo', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901900', '48201000', 'Livros de registro e de contabilidade, blocos de notas,de encomendas, de recibos, de apontamentos, de papel para cartas, agendas e artigos semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902000', '48202000', 'Cadernos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902100', '48203000', 'Classificadores, capas para encaderna��o (exceto as capas para livros) e capas de processos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902200', '48204000', 'Formul�rios em blocos tipo "manifold", mesmo com folhas intercaladas de papel-carbono ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902300', '48205000', '�lbuns para amostras ou para cole��es ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902400', '48209000', 'Pastas para documentos, outros artigos escolares, de escrit�rio ou de papelaria, de papel ou cart�o e capas para livros, de papel ou cart�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902500', '49090000', 'Cart�es postais impressos ou ilustrados, cart�es impressos com votos ou mensagens pessoais, mesmo ilustrados, com ou sem envelopes, guarni��es ou aplica��es (conhecidos como cart�es de express�o socia', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902600', '96081000', 'Canetas esferogr�ficas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902700', '96082000', 'Canetas e marcadores, com ponta de feltro ou com outras pontas porosas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902800', '96083000', 'Canetas tinteiro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902900', '9608', 'Outras canetas^ sortidos de canetas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1903000', '480256', 'Papel cortado "cutsize" (tipo A3, A4, of�cio I e II, carta e outros) ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000100', '12119090', 'Henna (embalagens de conte�do inferior ou igual a 200 g) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000101', '12119090', 'Henna (embalagens de conte�do superior a 200 g) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000200', '27121000', 'Vaselina ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000300', '28142000', 'Amon�aco em solu��o aquosa (am�nia) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000400', '28470000', 'Per�xido de hidrog�nio, em embalagens de conte�do inferior ou igual a 500 ml ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000500', '30067000', 'Lubrifica��o �ntima ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000600', '3301', '�leos essenciais (desterpenados ou n�o), inclu�dos os chamados "concretos" ou "absolutos"^ resin�ides^ oleorresinas de extra��o^ solu��es concentradas de �leos essenciais em gorduras, em �leos fixos, ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000700', '33030010', 'Perfumes (extratos) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000800', '33030020', '�guas-de-col�nia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000900', '33041000', 'Produtos de maquilagem para os l�bios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001000', '33042010', 'Sombra, delineador, l�pis para sobrancelhas e r�mel ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001100', '33042090', 'Outros produtos de maquilagem para os olhos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001200', '33043000', 'Prepara��es para manicuros e pedicuros, incluindo removedores de esmalte � base de acetona ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001300', '33049100', 'P�s, inclu�dos os compactos, para maquilagem ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001400', '33049910', 'Cremes de beleza, cremes nutritivos e lo��es t�nicas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001500', '33049990', 'Outros produtos de beleza ou de maquilagem preparados e prepara��es para conserva��o ou cuidados da pele, exceto as prepara��es solares e antisolares. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001600', '33049990', 'Prepara��es solares e antisolares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001700', '33051000', 'Xampus para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001800', '33052000', 'Prepara��es para ondula��o ou alisamento, permanentes, dos cabelos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001900', '33053000', 'Laqu�s para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002000', '33059000', 'Outras prepara��es capilares, incluindo m�scaras e finalizadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002100', '33059000', 'Condicionadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002200', '33059000', 'Tintura para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002300', '33061000', 'Dentifr�cios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002400', '33062000', 'Fios utilizados para limpar os espa�os interdentais (fios dentais) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002500', '33069000', 'Outras prepara��es para higiene bucal ou dent�ria ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002600', '33071000', 'Prepara��es para barbear (antes, durante ou ap�s) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002700', '33072010', 'Desodorantes (desodorizantes) corporais l�quidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002800', '33072010', 'Antiperspirantes l�quidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002900', '33072090', 'Outros desodorantes (desodorizantes) corporais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003000', '33072090', 'Outros antiperspirantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003100', '33073000', 'Sais perfumados e outras prepara��es para banhos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003200', '33079000', 'Outros produtos de perfumaria ou de toucador preparados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003300', '33079000', 'Solu��es para lentes de contato ou para olhos artificiais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003400', '34011190', 'Sab�es de toucador em barras, peda�os ou figuras moldados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003500', '34011900', 'Outros sab�es, produtos e prepara��es, em barras, peda�os ou figuras moldados, inclusive len�os umedecidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003600', '34012010', 'Sab�es de toucador sob outras formas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003700', '34013000', 'Produtos e prepara��es org�nicos tensoativos para lavagem da pele, na forma de l�quido ou de creme, acondicionados para venda a retalho, mesmo contendo sab�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003800', '40149010', 'Bolsa para gelo ou para �gua quente ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003900', '40149090', 'Chupetas e bicos para mamadeiras e para chupetas, de borracha ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003901', '39269040', 'Chupetas e bicos para mamadeiras e para chupetas, de silicone ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004000', '42021', 'Malas e maletas de toucador ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004100', '48181000', 'Papel higi�nico - folha simples ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004200', '48181000', 'Papel higi�nico - folha dupla e tripla ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004300', '48182000', 'Len�os (inclu�dos os de maquilagem) e toalhas de m�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004400', '48182000', 'Papel toalha de uso institucional do tipo comercializado em rolos igual ou superior a 80 metros e do tipo comercializado em folhas intercaladas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004500', '48183000', 'Toalhas e guardanapos de mesa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004600', '48189090', 'Toalhas de cozinha (papel toalha de uso dom�stico) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004700', '96190000', 'Fraldas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004800', '96190000', 'Tamp�es higi�nicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004900', '96190000', 'Absorventes higi�nicos externos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005000', '56012190', 'Hastes flex�veis (uso n�o medicinal) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005100', '56039290', 'Suti� descart�vel, assemelhados e papel para depila��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005200', '82032090', 'Pin�as para sobrancelhas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005300', '82141000', 'Esp�tulas (artigos de cutelaria) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005400', '82142000', 'Utens�lios e sortidos de utens�lios de manicuros ou de pedicuros (inclu�das as limas para unhas) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005500', '90251110', 'Term�metros, inclusive o digital ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005500', '90251990', 'Term�metros, inclusive o digital ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005600', '96032', 'Escovas e pinc�is de barba, escovas para cabelos, para c�lios ou para unhas e outras escovas de toucador de pessoas, inclu�das as que sejam partes de aparelhos, exceto escovas de dentes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005700', '96032100', 'Escovas de dentes, inclu�das as escovas para dentaduras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005800', '96033000', 'Pinc�is para aplica��o de produtos cosm�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005900', '96050000', 'Sortidos de viagem, para toucador de pessoas para costura ou para limpeza de cal�ado ou de roupas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006000', '9615', 'Pentes, travessas para cabelo e artigos semelhantes^ grampos (alfinetes) para cabelo^ pin�as (pinceguiches), onduladores, bobes (rolos) e artefatos semelhantes para penteados, e suas partes, exceto os', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006100', '96162000', 'Borlas ou esponjas para p�s ou para aplica��o de outros cosm�ticos ou de produtos de toucador ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '39233000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '39249000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '39241000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '40149090', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '70102000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006300', '82121020', 'Aparelhos e l�minas de barbear ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006300', '82122010', 'Aparelhos e l�minas de barbear ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100100', '73211100', 'Fog�es de cozinha de uso dom�stico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100100', '73218100', 'Fog�es de cozinha de uso dom�stico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100100', '73219000', 'Fog�es de cozinha de uso dom�stico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100200', '84181000', 'Combina��es de refrigeradores e congeladores ("freezers"), munidos de portas exteriores separadas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100300', '84182100', 'Refrigeradores do tipo dom�stico, de compress�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100400', '84182900', 'Outros refrigeradores do tipo dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100500', '84183000', 'Congeladores ("freezers") horizontais tipo arca, de capacidade n�o superior a 800 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100600', '84184000', 'Congeladores ("freezers") verticais tipo arm�rio, de capacidade n�o superior a 900 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100700', '841850', 'Outros m�veis (arcas, arm�rios, vitrines, balc�es e m�veis semelhantes) para a conserva��o e exposi��o de produtos, que incorporem um equipamento para a produ��o de frio ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100800', '8418699', 'Mini adega e similares ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100900', '84186999', 'M�quinas para produ��o de gelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101000', '84189900', 'Partes dos refrigeradores, congeladores, mini adegas e similares, m�quinas para produ��o de gelo e bebedouros descritos nos itens 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0 e 13.0. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101100', '842112', 'Secadoras de roupa de uso dom�stico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101200', '84211990', 'Outras secadoras de roupas e centr�fugas de uso dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101300', '84186931', 'Bebedouros refrigerados para �gua ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101400', '84219', 'Partes das secadoras de roupas e centr�fugas de uso dom�stico e dos aparelhos para filtrar ou depurar �gua, descritos nos itens 11.0 e 12.0 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101500', '84221100', 'M�quinas de lavar lou�a do tipo dom�stico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101500', '84229010', 'M�quinas de lavar lou�a do tipo dom�stico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101600', '844331', 'M�quinas que executem pelo menos duas das seguintes fun��es: impress�o, c�pia ou transmiss�o de telec�pia (fax), capazes de ser conectadas a uma m�quina ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101700', '844332', 'Outras impressoras, m�quinas copiadoras e telecopiadores (fax), mesmo combinados entre si, capazes de ser conectados a uma m�quina autom�tica para processamento de dados ou a uma rede ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101800', '844399', 'Partes e acess�rios de m�quinas e aparelhos de impress�o por meio de blocos, cilindros e outros elementos de impress�o da posi��o 8442^ e de outras impressoras, m�quinas copiadoras e telecopiadores (f', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101900', '84501100', 'M�quinas de lavar roupa, mesmo com dispositivos de secagem, de uso dom�stico, de capacidade n�o superior a 10 kg, em peso de roupa seca, inteiramente autom�ticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102000', '84501200', 'Outras m�quinas de lavar roupa, mesmo com dispositivos de secagem, de uso dom�stico, com secador centr�fugo incorporado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102100', '84501900', 'Outras m�quinas de lavar roupa, mesmo com dispositivos de secagem, de uso dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102200', '845020', 'M�quinas de lavar roupa, mesmo com dispositivos de secagem, de uso dom�stico, de capacidade superior a 10 kg, em peso de roupa seca ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102300', '845090', 'Partes de m�quinas de lavar roupa, mesmo com dispositivos de secagem, de uso dom�stico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102400', '84512100', 'M�quinas de secar de uso dom�stico de capacidade n�o superior a 10 kg, em peso de roupa seca ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102500', '84512990', 'Outras m�quinas de secar de uso dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102600', '845190', 'Partes de m�quinas de secar de uso dom�stico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102700', '84521000', 'M�quinas de costura de uso dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102800', '847130', 'M�quinas autom�ticas para processamento de dados, port�teis, de peso n�o superior a 10 kg, contendo pelo menos uma unidade central de processamento, um teclado e uma tela ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102900', '84714', 'Outras m�quinas autom�ticas para processamento de dados ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103000', '84715010', 'Unidades de processamento, de pequena capacidade, exceto as das subposi��es 8471.41 ou 8471.49, podendo conter, no mesmo corpo, um ou dois dos seguintes tipos de unidades: unidade de mem�ria, unidade ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103100', '8471605', 'Unidades de entrada, exceto as classificadas na posi��o 8471.60.54 ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103200', '84716090', 'Outras unidades de entrada ou de sa�da, podendo conter, no mesmo corpo, unidades de mem�ria ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103300', '847170', 'Unidades de mem�ria ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103400', '847190', 'Outras m�quinas autom�ticas para processamento de dados e suas unidades^ leitores magn�ticos ou �pticos, m�quinas para registrar dados em suporte sob forma codificada, e m�quinas para processamento de', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103500', '847330', 'Partes e acess�rios das m�quinas da posi��o 84.71 ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103600', '85043', 'Outros transformadores, exceto os classificados nas posi��es 8504.33.00 e 8504.34.00 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103700', '85044010', 'Carregadores de acumuladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103800', '85044040', 'Equipamentos de alimenta��o ininterrupta de energia (UPS ou "no break") ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103900', '85078000', 'Outros acumuladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104000', '8508', 'Aspiradores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104100', '8509', 'Aparelhos eletromec�nicos de motor el�trico incorporado, de uso dom�stico e suas partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104200', '85098010', 'Enceradeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104300', '85161000', 'Chaleiras el�tricas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104400', '85164000', 'Ferros el�tricos de passar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104500', '85165000', 'Fornos de microondas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104600', '85166000', 'Outros fornos^ fogareiros (inclu�das as chapas de coc��o), grelhas e assadeiras, exceto os port�teis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104700', '85166000', 'Outros fornos^ fogareiros (inclu�das as chapas de coc��o), grelhas e assadeiras, port�teis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104800', '85167100', 'Outros aparelhos eletrot�rmicos de uso dom�stico � Cafeteiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104900', '85167200', 'Outros aparelhos eletrot�rmicos de uso dom�stico - Torradeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105000', '851679', 'Outros aparelhos eletrot�rmicos de uso dom�stico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105100', '85169000', 'Partes das chaleiras, ferros, fornos e outros aparelhos eletrot�rmicos da posi��o 85.16, descritos nos itens 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0 e 50.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105200', '85171100', 'Aparelhos telef�nicos por fio com unidade auscultador- microfone sem fio ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105300', '851712', 'Telefones para redes celulares e para outras redes sem fio, exceto os de uso automotivo ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105400', '8517189', 'Outros aparelhos telef�nicos ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105500', '8517625', 'Aparelhos para transmiss�o ou recep��o de voz, imagem ou outros dados em rede com fio, exceto os classificados nas posi��es 8517.62.51, 8517.62.52 e 8517.62.53 ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105600', '8518', 'Microfones e seus suportes^ altofalantes, mesmo montados nos seus recept�culos, fones de ouvido (auscultadores), mesmo combinados com microfone e conj untos ou sortidos constitu�dos por um microfone e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105700', '8519', 'Aparelhos de radiodifus�o suscet�veis de funcionarem sem fonte externa de energia. Aparelhos de grava��o de som^ aparelhos de reprodu��o de som^ aparelhos de grava��o e de reprodu��o de som^ partes e ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105700', '8522', 'Aparelhos de radiodifus�o suscet�veis de funcionarem sem fonte externa de energia. Aparelhos de grava��o de som^ aparelhos de reprodu��o de som^ aparelhos de grava��o e de reprodu��o de som^ partes e ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105700', '85271', 'Aparelhos de radiodifus�o suscet�veis de funcionarem sem fonte externa de energia. Aparelhos de grava��o de som^ aparelhos de reprodu��o de som^ aparelhos de grava��o e de reprodu��o de som^ partes e ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105800', '85198190', 'Outros aparelhos de grava��o de som^ aparelhos de reprodu��o de som^ aparelhos de grava��o e de reprodu��o de som^ partes e acess�rios^ exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105900', '85219010', 'Gravador-reprodutor e editor de imagem e som, em discos, por meio magn�tico, �ptico ou optomagn�tico, exceto de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106000', '85219090', 'Outros aparelhos videof�nicos de grava��o ou reprodu��o, mesmo incorporando um receptor de sinais videof�nicos, exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106100', '85235110', 'Cart�es de mem�ria ("memory cards") ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106200', '85235200', 'Cart�es inteligentes ("smart cards") ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106300', '8525802', 'C�meras fotogr�ficas digitais e c�meras de v�deo e suas partes ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106400', '85279', 'Outros aparelhos receptores para radiodifus�o, mesmo combinados num inv�lucro, com um aparelho de grava��o ou de reprodu��o de som, ou com um rel�gio, inclusive caixa ac�stica para Home Theaters class', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106500', '85284929', 'Monitores e projetores que n�o incorporem aparelhos receptores de televis�o, policrom�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106500', '85285920', 'Monitores e projetores que n�o incorporem aparelhos receptores de televis�o, policrom�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106500', '852869', 'Monitores e projetores que n�o incorporem aparelhos receptores de televis�o, policrom�ticos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106600', '85285120', 'Outros monitores dos tipos utilizados exclusiva ou principalmente com uma m�quina autom�tica para processamento de dados da posi��o 84.71, policrom�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106700', '85287', 'Aparelhos receptores de televis�o, mesmo que incorporem um aparelho receptor de radiodifus�o ou um aparelho de grava��o ou reprodu��o de som ou de imagens - Televisores de CRT (tubo de raios cat�dicos', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106800', '85287', 'Aparelhos receptores de televis�o, mesmo que incorporem um aparelho receptor de radiodifus�o ou um aparelho de grava��o ou reprodu��o de som ou de imagens - Televisores de LCD (Display de Cristal L�qu', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106900', '85287', 'Aparelhos receptores de televis�o, mesmo que incorporem um aparelho receptor de radiodifus�o ou um aparelho de grava��o ou reprodu��o de som ou de imagens - Televisores de Plasma ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107000', '85287', 'Outros aparelhos receptores de televis�o n�o dotados de monitores ou display de v�deo ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107100', '85287', 'Outros aparelhos receptores de televis�o n�o relacionados em outros itens deste anexo ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107200', '900610', 'C�meras fotogr�ficas dos tipos utilizadas para prepara��o de clich�s ou cilindros de impress�o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107300', '90064000', 'C�meras fotogr�ficas para filmes de revela��o e copiagem instant�neas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107400', '90189050', 'Aparelhos de diatermia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107500', '90191000', 'Aparelhos de massagem ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107600', '90328911', 'Reguladores de voltagem eletr�nicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107700', '95045000', 'Consoles e m�quinas de jogos de v�deo, exceto os classificados na subposi��o 9504.30 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107800', '8517621', 'Multiplexadores e concentradores ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107900', '85176222', 'Centrais autom�ticas privadas, de capacidade inferior ou igual a 25 ramais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108000', '85176239', 'Outros aparelhos para comuta��o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108100', '8517624', 'Roteadores digitais, em redes com ou sem fio ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108200', '85176262', 'Aparelhos emissores com receptor incorporado de sistema troncalizado ("trunking"), de tecnologia celular ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108300', '8517629', 'Outros aparelhos de recep��o, convers�o e transmiss�o ou regenera��o de voz, imagens ou outros dados, incluindo os aparelhos de comuta��o e roteamento ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108400', '85177021', 'Antenas pr�prias para telefones celulares port�teis, exceto as telesc�picas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108500', '821490', 'Aparelhos ou m�quinas de barbear, m�quinas de cortar o cabelo ou de tosquiar e aparelhos de depilar, e suas partes ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108500', '8510', 'Aparelhos ou m�quinas de barbear, m�quinas de cortar o cabelo ou de tosquiar e aparelhos de depilar, e suas partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108600', '84145', 'Ventiladores, exceto os de uso agr�cola ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108700', '84145990', 'Ventiladores de uso agr�cola ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108800', '84146000', 'Coifas com dimens�o horizontal m�xima n�o superior a 120 cm ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108900', '84149020', 'Partes de ventiladores ou coifas aspirantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109000', '841510', 'M�quinas e aparelhos de ar condicionado contendo um ventilador motorizado e dispositivos pr�prios para modificar a temperatura e a umidade, inclu�dos as m�quinas e aparelhos em que a umidade n�o seja ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109000', '84158', 'M�quinas e aparelhos de ar condicionado contendo um ventilador motorizado e dispositivos pr�prios para modificar a temperatura e a umidade, inclu�dos as m�quinas e aparelhos em que a umidade n�o seja ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109100', '84151011', 'Aparelhos de ar-condicionado tipo Split System (sistema com elementos separados) com unidade externa e interna ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109200', '84151019', 'Aparelhos de ar-condicionado com capacidade inferior ou igual a 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109300', '84151090', 'Aparelhos de ar-condicionado com capacidade acima de 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109400', '84159010', 'Unidades evaporadoras (internas) de aparelho de ar-condicionado do tipo Split System (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109500', '84159020', 'Unidades condensadoras (externas) de aparelho de ar-condicionado do tipo Split System (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109600', '84212100', 'Aparelhos el�tricos para filtrar ou depurar �gua (purificadores de �gua refrigerados) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109700', '84243010', 'Lavadora de alta press�o e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109700', '84243090', 'Lavadora de alta press�o e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109700', '84249090', 'Lavadora de alta press�o e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109800', '84672100', 'Furadeiras el�tricas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109900', '85162', 'Aparelhos el�tricos para aquecimento de ambientes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110000', '85163100', 'Secadores de cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110100', '85163200', 'Outros aparelhos para arranjos do cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110200', '8518', 'Microfones e seus suportes^ alto-falantes, mesmo montados nos seus recept�culos, fones de ouvido (auscultadores), mesmo combinados com microfone e conjuntos ou sortidos constitu�dos por um microfone e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110300', '8527', 'Aparelhos receptores para radiodifus�o, mesmo combinados num mesmo inv�lucro, com um aparelho de grava��o ou de reprodu��o de som, ou com um rel�gio, exceto os classificados na posi��o 8527.2 que seja', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110400', '85219090', 'Outros aparelhos videof�nicos de grava��o ou de reprodu��o, mesmo incorporando um receptor de sinais videof�nicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110500', '84796000', 'Climatizadores de ar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110600', '84159090', 'Outras partes para m�quinas e aparelhos de arcondicionado que contenham um ventilador motorizado e dispositivos pr�prios para modificar a temperatura e a umidade, incluindo as m�quinas e aparelhos em ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110700', '85258019', 'C�meras de televis�o e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110800', '84231000', 'Balan�as de uso dom�stico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110900', '8540', 'Tubos e v�lvulas, eletr�nicos, de c�todo quente, c�todo frio ou fotoc�todo (por exemplo, tubos e v�lvulas, de v�cuo, de vapor ou de g�s, ampolas retificadoras de vapor de merc�rio, tubos cat�dicos, tu', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111000', '8517', 'Aparelhos el�tricos para telefonia^ outros aparelhos para transmiss�o ou recep��o de voz, imagens ou outros dados, inclu�dos os aparelhos para comunica��o em redes por fio ou redes sem fio (tal como u', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111100', '8517', 'Interfones, seus acess�rios, tomadas e "plugs" ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111200', '8529', 'Partes reconhec�veis como exclusiva ou principalmente destinadas aos aparelhos das posi��es 8525 a 8528^ exceto as de uso automotivo ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111300', '8531', 'Aparelhos el�tricos de sinaliza��o ac�stica ou visual (por exemplo, campainhas, sirenes, quadros indicadores, aparelhos de alarme para prote��o contra roubo ou inc�ndio)^ exceto os de uso automotivo e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111400', '853110', 'Aparelhos el�tricos de alarme, para prote��o contra roubo ou inc�ndio e aparelhos semelhantes, exceto os de uso automotivo ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111500', '85318000', 'Outros aparelhos de sinaliza��o ac�stica ou visual, exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111600', '853400', 'Circuitos impressos, exceto os de uso automotivo ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111700', '85414011', 'Diodos emissores de luz (LED), exceto diodos "laser" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111700', '85414021', 'Diodos emissores de luz (LED), exceto diodos "laser" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111700', '85414022', 'Diodos emissores de luz (LED), exceto diodos "laser" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111800', '85437092', 'Eletrificadores de cercas eletr�nicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111900', '90303', 'Aparelhos e instrumentos para medida ou controle da tens�o, intensidade, resist�ncia ou da pot�ncia, sem dispositivo registrador^ exceto os de uso automotivo ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2112000', '903089', 'Analisadores l�gicos de circuitos digitais, de espectro de frequ�ncia, frequenc�metros, fas�metros, e outros instrumentos e aparelhos de controle de grandezas el�tricas e detec��o ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2112100', '910700', 'Interruptores hor�rios e outros aparelhos que permitam acionar um mecanismo em tempo determinado, munidos de maquinismo de aparelhos de relojoaria ou de motor s�ncrono ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2112200', '9405', 'Aparelhos de ilumina��o (inclu�dos os projetores) e suas partes, n�o especificados nem compreendidos em outras posi��es^ an�ncios, cartazes ou tabuletas e placas indicadoras luminosos, e artigos semel', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2200100', '2309', 'Ra��o tipo �pet� para animais dom�sticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300100', '210500', 'Sorvetes de qualquer esp�cie ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300200', '1806', 'Preparados para fabrica��o de sorvete em m�quina ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300200', '1901', 'Preparados para fabrica��o de sorvete em m�quina ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300200', '2106', 'Preparados para fabrica��o de sorvete em m�quina ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400100', '3208', 'Tintas, vernizes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400100', '3209', 'Tintas, vernizes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400100', '3210', 'Tintas, vernizes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400200', '2821', 'Xadrez e p�s assemelhados, exceto pigmentos � base de di�xido de tit�nio classificados na posi��o 3206.11.19 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400200', '32041700', 'Xadrez e p�s assemelhados, exceto pigmentos � base de di�xido de tit�nio classificados na posi��o 3206.11.19 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400200', '3206', 'Xadrez e p�s assemelhados, exceto pigmentos � base de di�xido de tit�nio classificados na posi��o 3206.11.19 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500100', '87021000', 'Ve�culos autom�veis para transporte de 10 pessoas ou mais, incluindo o motorista, com motor de pist�o, de igni��o por compress�o (diesel ou semidiesel), com volume interno de habit�culo, destinado a p', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500200', '87029090', 'Outros ve�culos autom�veis para transporte de 10 pessoas ou mais, incluindo o motorista, com volume interno de habit�culo, destinado a passageiros e motorista, superior a 6 m�, mas inferior a 9 m ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500300', '87032100', 'Autom�veis com motor explos�o, de cilindrada n�o superior a 1000 cm� ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500400', '87032210', 'Autom�veis com motor explos�o, de cilindrada superior a 1000 cm�, mas n�o superior a 1500 cm�, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, inclu�do o condutor, exceto carro', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500500', '87032290', 'Outros autom�veis com motor explos�o, de cilindrada superior a 1000 cm�, mas n�o superior a 1500 cm�, exceto carro celular ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500600', '87032310', 'Autom�veis com motor explos�o, de cilindrada superior a 1500 cm�, mas n�o superior a 3000 cm�, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, inclu�do o condutor, exceto carro', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500700', '87032390', 'Outros autom�veis com motor explos�o, de cilindrada superior a 1500 cm�, mas n�o superior a 3000 cm�, exceto carro celular, carro funer�rio e autom�veis de corrida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500800', '87032410', 'Autom�veis com motor explos�o, de cilindrada superior a 3000 cm�, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, inclu�do o condutor, exceto carro celular, carro funer�rio e a', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500900', '87032490', 'Outros autom�veis com motor explos�o, de cilindrada superior a 3000 cm�, exceto carro celular, carro funer�rio e autom�veis de corrida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501000', '87033210', 'Autom�veis com motor diesel ou semidiesel, de cilindrada superior a 1500 cm�, mas n�o superior a 2500 cm�, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, inclu�do o condutor, ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501100', '87033290', 'Outros autom�veis com motor diesel ou semidiesel, de cilindrada superior a 1500 cm�, mas n�o superior a 2500 cm�, exceto ambul�ncia, carro celular e carro funer�rio ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501200', '87033310', 'Autom�veis com motor diesel ou semidiesel, de cilindrada superior a 2500 cm�, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, inclu�do o condutor, exceto carro celular e carro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501300', '87033390', 'Outros autom�veis com motor diesel ou semidiesel, de cilindrada superior a 2500 cm�, exceto carro celular e carro funer�rio ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501400', '87042110', 'Ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, chassis com motor diesel ou semidiesel e cabina, exceto caminh�o de peso em carga m�xima superio', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501500', '87042120', 'Ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, com motor diesel ou semidiesel, com caixa basculante, exceto caminh�o de peso em carga m�xima su', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501600', '87042130', 'Ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, frigor�ficos ou isot�rmicos, com motor diesel ou semidiesel, exceto caminh�o de peso em carga m�', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501700', '87042190', 'Outros ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, com motor diesel ou semidiesel, exceto carro-forte para transporte de valores e caminh�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501800', '87043110', 'Ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, com motor a explos�o, chassis e cabina, exceto caminh�o de peso em carga m�xima superior a 3,9 t', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501900', '87043120', 'Ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5, exceto caminh�o de peso em carga toneladas, com motor explos�o, caixa basculante ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2502000', '87043130', 'Ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, frigor�ficos ou isot�rmicos com motor explos�o, exceto caminh�o de peso em carga m�xima superior', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2502100', '87043190', 'Outros ve�culos autom�veis para transporte de mercadorias, de peso em carga m�xima n�o superior a 5 toneladas, com motor a explos�o, exceto carro-forte para transporte de valores e caminh�o de peso em', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2600100', '8711', 'Motocicletas (inclu�dos os ciclomotores) e outros ciclos equipados com motor auxiliar, mesmo com carro lateral^ carros laterais ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700100', '7009', 'Espelhos de vidro, mesmo emoldurados, exceto os de uso automotivo ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700200', '7013', 'Objetos de vidro para servi�o de mesa ou de cozinha ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700300', '70133700', 'Outros copos, exceto de vitrocer�mica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700400', '70134290', 'Objetos para servi�o de mesa (exceto copos) ou de cozinha, exceto de vitrocer�mica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800100', '33030010', 'Perfumes (extratos) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800200', '33030020', '�guas-de-col�nia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800300', '33041000', 'Produtos de maquiagem para os l�bios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800400', '33042010', 'Sombra, delineador, l�pis para sobrancelhas e r�mel ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800500', '33042090', 'Outros produtos de maquiagem para os olhos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800600', '33043000', 'Prepara��es para manicuros e pedicuros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800700', '33049100', 'P�s para maquiagem, incluindo os compactos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800800', '33049910', 'Cremes de beleza, cremes nutritivos e lo��es t�nicas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800900', '33049990', 'Outros produtos de beleza ou de maquiagem preparados e prepara��es para conserva��o ou cuidados da pele, exceto as prepara��es antisolares e os bronzeadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801000', '33049990', 'Prepara��es antisolares e os bronzeadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801100', '33051000', 'Xampus para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801200', '33052000', 'Prepara��es para ondula��o ou alisamento, permanentes, dos cabelos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801300', '33059000', 'Outras prepara��es capilares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801400', '33059000', 'Tintura para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801500', '33071000', 'Prepara��es para barbear (antes, durante ou ap�s) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801600', '33072010', 'Desodorantes corporais e antiperspirantes, l�quidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801700', '33072090', 'Outros desodorantes corporais e antiperspirantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801800', '33079000', 'Outros produtos de perfumaria ou de toucador preparados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801900', '33079000', 'Outras prepara��es cosm�ticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802000', '34011190', 'Sab�es de toucador, em barras, peda�os ou figuras moldadas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802100', '34011900', 'Outros sab�es, produtos e prepara��es org�nicos tensoativos, inclusive papel, pastas (ouates), feltros e falsos tecidos, impregnados, revestidos ou recobertos de sab�o ou de detergentes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802200', '34012010', 'Sab�es de toucador sob outras formas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802300', '34013000', 'Produtos e prepara��es org�nicos tensoativos para lavagem da pele, em forma de l�quido ou de creme, acondicionados para venda a retalho, mesmo contendo sab�o ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802400', '48182000', 'Len�os de papel, incluindo os de desmaquiar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802500', '82141000', 'Apontadores de l�pis para maquiagem ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802600', '82142000', 'Utens�lios e sortidos de utens�lios de manicuros ou de pedicuros (incluindo as limas para unhas) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802700', '96032900', 'Escovas e pinc�is de barba, escovas para cabelos, para c�lios ou para unhas e outras escovas de toucador de pessoas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802800', '96033000', 'Pinc�is para aplica��o de produtos cosm�ticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802900', '96161000', 'Vaporizadores de toucador, suas arma��es e cabe�as de arma��es ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803000', '96162000', 'Borlas ou esponjas para p�s ou para aplica��o de outros cosm�ticos ou de produtos de toucador ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803100', '42021', 'Malas e maletas de toucador ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803200', '9615', 'Pentes, travessas para cabelo e artigos semelhantes^ grampos (alfinetes) para cabelo^ pin�as (�pinceguiches�), onduladores, bobs (rolos) e artefatos semelhantes para penteados, e suas partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803300', '39241000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803300', '39249000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803300', '40149090', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803400', '40149090', 'Chupetas e bicos para mamadeiras e para chupetas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803500', '33', 'Outros produtos cosm�ticos e de higiene pessoal n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803500', '34', 'Outros produtos cosm�ticos e de higiene pessoal n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '44', 'Outros artigos destinados a cuidados pessoais n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '64', 'Outros artigos destinados a cuidados pessoais n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '65', 'Outros artigos destinados a cuidados pessoais n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '82', 'Outros artigos destinados a cuidados pessoais n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '90', 'Outros artigos destinados a cuidados pessoais n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '96', 'Outros artigos destinados a cuidados pessoais n�o relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '39', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '42', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '48', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '71', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '83', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '90', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '91', 'Acess�rios (por exemplo, bijuterias, rel�gios, �culos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cart�es, porta-documentos, porta-celulares e embalagens presente�veis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803800', '61', 'Vestu�rio e seus acess�rios^ cal�ados, polainas e artefatos semelhantes, e suas partes ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803800', '62', 'Vestu�rio e seus acess�rios^ cal�ados, polainas e artefatos semelhantes, e suas partes ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803800', '64', 'Vestu�rio e seus acess�rios^ cal�ados, polainas e artefatos semelhantes, e suas partes ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '42', 'Outros artigos de vestu�rio em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '52', 'Outros artigos de vestu�rio em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '55', 'Outros artigos de vestu�rio em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '58', 'Outros artigos de vestu�rio em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '63', 'Outros artigos de vestu�rio em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '65', 'Outros artigos de vestu�rio em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '39', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '40', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '56', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '63', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '66', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '69', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '70', 'Artigos de casa ', 2)^

COMMIT WORK^

INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '73', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '82', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '83', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '84', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '91', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '94', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804000', '96', 'Artigos de casa ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804100', '13', 'Produtos das ind�strias alimentares e bebidas ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804100', '15', 'Produtos das ind�strias alimentares e bebidas ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804100', '23', 'Produtos das ind�strias alimentares e bebidas ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804200', '33', 'Produtos destinados � higiene bucal ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '22', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '27', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '28', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '29', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '33', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '34', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '35', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '38', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '39', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '63', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '68', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '73', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '84', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '85', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '96', 'Produtos de limpeza e conserva��o dom�stica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804400', '000000', 'Outros produtos comercializados pelo sistema de marketing direto porta-a-porta a consumidor final n�o relacionados em outros itens deste anexo ', 6)^

COMMIT WORK^

alter table icm0000 add FCP_PERC Numeric(6,2)^

commit WORK^

update icm0000 set icms_subs=17 where ICM_DESTINO in ('AC','AL','AM','AP','BA','CE','DF','ES','GO','MA','MT','MS','PA','PB','PE','PI','RN','RS','RO','RR','SC','SE','TO')^
update icm0000 set icms_subs=18 where ICM_DESTINO in ('MG','PR','SP','RJ')^
update icm0000 set FCP_PERC=0 where ICM_DESTINO <> 'RJ'^
update icm0000 set FCP_PERC=1 where ICM_DESTINO = 'RJ'^

COMMIT WORK^

alter table nf_it01 add NF_VALOR_BCICMS_DESTINO NUMERIC(15,2)^
alter table nf_it01 add NF_PERC_FCP NUMERIC(6,2)^
alter table nf_it01 add NF_ALIQ_ICMS_INTERNA_DESTINO NUMERIC(6,2)^
alter table nf_it01 add NF_ALIQ_ICMS_INTERESTADUAL NUMERIC(6,2)^
alter table nf_it01 add NF_PERC_PARTILHA_DESTINO NUMERIC(6,2)^
alter table nf_it01 add NF_VALOR_FCP NUMERIC(15,2)^
alter table nf_it01 add NF_VALOR_PARTILHA_DESTINO NUMERIC(15,2)^
alter table nf_it01 add NF_VALOR_PARTILHA_ORIGEM NUMERIC(15,2)^

alter table nf0001 add NF_VALOR_TOTAL_FCP NUMERIC(15,2)^
alter table nf0001 add NF_VALOR_TOTAL_PARTILHA_DEST NUMERIC(15,2)^
alter table nf0001 add NF_VALOR_TOTAL_PARTILHA_ORIG NUMERIC(15,2)^

COMMIT WORK^

Create table PARTILHA_ICM_FCP
( ANO INTEGER,
  PPARTILHA NUMERIC(6,2) )^

CREATE INDEX PARTILHA_ICM_FCP_IDX1 ON PARTILHA_ICM_FCP(ANO)^

COMMIT WORK^

INSERT INTO PARTILHA_ICM_FCP VALUES(2016, 40)^
INSERT INTO PARTILHA_ICM_FCP VALUES(2017, 60)^
INSERT INTO PARTILHA_ICM_FCP VALUES(2018, 80)^
INSERT INTO PARTILHA_ICM_FCP VALUES(2019,100)^

COMMIT WORK^

CREATE OR ALTER VIEW VW_CABECALHO_NFE(
    EMP_CODIGO,
    PED_EXP_UF,
    PED_EXP_LOCAL_EXP,
    PED_EXP_LOCAL_RECINTO,
    CLI_CONSFINAL,
    NF_TIPO,
    NF_STATUS_NFE,
    NF_ENVIADO_NFE_EMAIL,
    NF_EMAIL_ENVIO_NFE,
    NF_REGISTRO,
    CCT_CODIGO,
    NF_TIPO_PEDIDO,
    NF_CHAVE_NFE,
    NF_CHAVE_NFE_REFERENCIADA,
    NF_LOTE_NFE,
    NF_PROTOCOLO_NFE,
    NF_PROTOCOLO_NFE_CANCEL,
    NF_DATA_EMISSAO,
    NF_SAIDA,
    NF_NUM_NOTA_FISCAL,
    NF_NUM_NFE,
    OPE_CODIGO,
    NF_CFOP,
    NF_PERCENTUAL_MVA,
    NOP_DESCRICAO,
    PED_NUM_PEDIDO,
    PED_DATA_EMISSAO,
    NF_COD_CLI_FORN,
    RAZAO,
    FANTASIA,
    CNPJ_CPF,
    INC_ESTADUAL,
    ENDERECO,
    BAIRRO,
    CID_COD_IBGE,
    CIDADE,
    AUF_COD_IBGE,
    AUF_CODIGO,
    CEP,
    FONE,
    EMAIL,
    CONSFINAL,
    AUF_INSCRICAO_SUB,
    NF_BASE_ICMS,
    NF_VALOR_ICMS,
    NF_BASE_ICMS_SUBST,
    NF_VALOR_ICMS_SUBST,
    NF_VALOR_PRODUTOS,
    NF_VALOR_SERVICOS,
    NF_VALOR_FRETE,
    NF_VALOR_SEGURO,
    NF_OUTROS,
    NF_VALOR_IPI,
    NF_BASE_IPI,
    NF_VALOR_NOTA_FISCAL,
    TR_CODIGO,
    TR_RAZAO,
    NF_TIPO_FRETE,
    NF_PLACA_VEICULO,
    TR_UF,
    TR_INSC_EST,
    TR_CNPJ_CNPF,
    TR_ENDERECO,
    TR_CIDADE,
    TR_FONE,
    NF_QUANTIDADE,
    NF_ESPECIE,
    NF_MARCA,
    NF_NUMERO,
    NF_PESO_BRUTO,
    NF_PESO_LIQUIDO,
    NF_MENSAGEM_01,
    NF_MENSAGEM_02,
    PED_OBSERVACAO_NOTA,
    NFC_INF_COMPLEMENTARES,
    MSG_NFE_OPER_FISCAL,
    MSG_NFE_FATURAMENTO,
    TP_DESCRICAO,
    NF_POR_CONTA,
    NF_VALOR_PRODUTOS_ST,
    NOP_IMPORTACAO,
    FATURAS,
    NF_VL_DESCTO,
    NF_PROTOCOLO_AUTORIZACAO,
    NF_DATA_AUTORIZACAO,
    NF_HORA_AUTORIZACAO,
    NF_ALIQCREDSIMPLES,
    NF_VLCREDSIMPLES,
    NF_ENTRADA_SAIDA,
    NF_STATUS_NFSE,
    SRV_REGISTRO,
    NF_NFSE_VLR_IR,
    NF_NFSE_VLR_CSLL,
    NF_NFSE_VLR_INSS,
    NF_NFSE_VLR_COFINS,
    NF_NFSE_VLR_PIS,
    NF_NFSE_VLR_DEDUCOES,
    NF_NFSE_VLR_ISS,
    NF_NFSE_VLR_BASE_CALCULO,
    NF_NFSE_DESCRICAO,
    NF_NFSE_ALIQUOTA_ISS,
    NF_EXPORT_UF_EMBARQUE,
    NF_EXPORT_LOCAL_EMBARQUE,
    NF_DESP_ACES,
    NF_VALORTOT_PIS,
    NF_VALORTOT_COFINS,
    NF_COMPLEMENTAR,
    NFE_STATUS_PRODUCAO,
    NF_CC_STATUS,
    NF_CC_DATA,
    NF_CC_SEQUENCIA,
    NF_CC_USUARIO,
    NF_CC_DESCRICAO,
    NF_SERIE,
    NF_CANCELADA,
    NF_INTERNO,
    NF_VALOR_TOTAL_FCP,
    NF_VALOR_TOTAL_PARTILHA_DEST,
    NF_VALOR_TOTAL_PARTILHA_ORIG
    )
AS
SELECT
            /*INFORMAÇÕES CABEÇALHO NOTA*/
            T1.EMP_CODIGO,
            t2.ped_exp_uf,
            t2.ped_exp_local_exp,
            t2.ped_exp_local_recinto,
            t4.cli_consfinal,
            /*O TIPO E PARA SER CLIENTE OU FORNECEDOR NO SISTEMA AS NOTAS DE FORNECEDORES SÃO CADASTRADOS COMO CLIENTE*/
            T1.NF_ENTR_SAID AS NF_TIPO,
            T1.NF_STATUS_NFE,
            T1.NF_ENVIADO_NFE_EMAIL,
            T1.NF_EMAIL_ENVIO_NFE,
            T1.NF_REGISTRO,
            /*SISTEMA NAO TRABALHA COM CONTA ANALISE*/
            CASE
                WHEN (1=1) THEN
                    'C'
            END AS CCT_CODIGO,
            /*O TIPO DO PEDIDO E PARA SER CLIENTE OU FORNECEDOR NO SISTEMA AS NOTAS DE FORNECEDORES SÃO CADASTRADOS COMO CLIENTE*/
            CASE
                WHEN (1=1) THEN
                    'C'
            END AS NF_TIPO_PEDIDO,
            T1.NF_CHAVE_NFE,
            T1.nf_chave_nfe_referenciada,
            T1.NF_LOTE_NFE,
            T1.NF_PROTOCOLO_NFE,
            T1.NF_PROTOCOLO_NFE_CANC,
            T1.NF_EMISSAO,
            cast(T1.NF_SAIDA||' '||t1.nf_horasaida as timestamp),
            T1.NF_NOTANUMBER,
            T1.NF_NUM_NFE,
            t1.ope_codigo,
            T1.OPE_NATUREZA,
            CASE
                WHEN (1=1) THEN
                    0
            END AS NF_PERCENTUAL_MVA,
            T3.OPE_DESCRINATUREZA,
            T2.PED_CODIGO,
            T2.PED_DTENTRADA,
            T2.CLI_CODIGO,
            /*INFORMAÇÕES DESTINATARIO*/
            T4.CLI_RAZAO AS RAZAO,
            T4.CLI_FANTASIA AS FANTASIA,
            T4.CLI_CGC AS CNPJ_CPF,
            T4.CLI_INSC AS INC_ESTADUAL,
            T4.CLI_ENDERE AS ENDERECO,
            T4.CLI_BAIRRO AS BAIRRO,
            T6.CID_COD_IBGE AS CID_COD_IBGE,
            T6.CID_CIDADE AS CIDADE,
            (SELECT
            T55.ICM_COD_IBGE
            FROM
            ICM0000 T55 WHERE T55.ICM_DESTINO = T4.CLI_UF)  AS AUF_COD_IBGE,
            T4.CLI_UF AS AUF,
            T4.CLI_CEP AS CEP,
            T4.CLI_FONE AS FONE,
            T4.CLI_EMAIL AS EMAIL,
            T4.CLI_CONSFINAL AS CONSFINAL,
            T7.ICM_IE_SUBTRIB AS AUF_INSCRICAO_SUB,
            /*IMPOSTOS E TOTAIS*/
            T1.NF_BASEICMS AS NF_BASE_ICMS,
            T1.NF_VL_ICMS AS NF_VALOR_ICMS,
            T1.NF_VLBASESUBTRIB AS NF_BASE_ICMS_SUBST,
            T1.NF_VL_SUBTRIB AS NF_VALOR_ICMS_SUBST,
            T1.NF_TOT_PROD AS NF_VALOR_PRODUTOS,
            /*SISTEMA NAO POSSUI SERVIÇOS*/
            CASE
                WHEN (1=1) THEN
                    0
            END AS NF_VALOR_SERVICOS,
            T1.NF_VLFRETE AS NF_VALOR_FRETE,
            T1.NF_VLSEGURO AS NF_VALOR_SEGURO,
            T1.NF_DESP_ACES AS NF_DESPESAS_ACESS,
            T1.NF_VL_IPI AS NF_VALOR_IPI,
            T1.nf_base_ipi AS NF_BASE_IPI,
            T1.NF_TOT_NOTA AS NF_VALOR_NOTA_FISCAL,
            /*TRANSPORTADOR/VOLUMES*/
            T5.TRP_CODIGO AS TR_CODIGO,
            T5.TRP_RAZAO AS TR_RAZAO,
            T2.PED_FRETE,
            T1.NF_PLACAVE AS NF_PLACA_VEICULO,
            T5.TRP_UF AS TR_UF,
            T5.TRP_INSC AS TR_INSC_EST,
            T5.TRP_CGC AS TR_CNPJ_CNPF,
            T5.TRP_ENDERE AS TR_ENDERECO,
            T5.TRP_CIDADE AS TR_CIDADE,
            t5.TRP_FONE as TR_FONE,
            T1.NF_QTDE AS NF_QUANTIDADE,
            T1.NF_ESPECIE,
            T1.NF_MARCA,
            T1.NF_NUMERO,
            T1.NF_PESOBRU AS NF_PESO_BRUTO,
            T1.NF_PESOLIQ AS NF_PESO_LIQUIDO,
            /*DADOS ADICIONAIS*/
            COALESCE(T1.NF_OBS_OPER,'') || '' ||
            COALESCE(T1.NF_OBS_OPER_AVISO2,'')
            AS NF_MENSAGEM_01,
            T1.NF_OBS_OPER AS NF_MENSAGEM_02,
            case
                when (1 = 1 ) then
                ''
            end as PED_OBSERVACAO_NOTA,
            /*msg pedido*/
            COALESCE(T1.NF_OBS_OPER,'') || ' ' ||
            COALESCE(T1.NF_OBS_OPER_AVISO2,'')
            AS NFC_INF_COMPLEMENTARES,
            COALESCE(T1.NF_OBS_OPER,'') || ' ' ||
            COALESCE(T1.NF_OBSG6,'') || ' ' ||
            COALESCE(T1.NF_OBS_OPER_AVISO2,'') AS MSG_NFE_OPER_FISCAL,
            T1.nf_observacao  AS MSG_NFE_FATURAMENTO,
            CASE
                WHEN (1=1) THEN
                    ''
            END AS TP_DESCRICAO,
            CASE
                WHEN (T2.PED_FRETE = 'F') THEN
                    '02'
                ELSE
                    '01'
            END AS NF_POR_CONTA,
            CASE
                WHEN (1=1) THEN
                    0
            END AS NF_VALOR_PRODUTOS_ST,
            CASE
                WHEN (1=1) THEN
                    'N'
            END AS NOP_IMPORTACAO,
            CASE
                WHEN (1=1) THEN
                    ''--(select TORETURN from PCD_RETORNA_FATURA(t1.NF_NOTANUMBER))
            END AS FATURAS,
            t1.NF_VL_DESCTO,
            t1.nf_protocolo_autorizacao,
            t1.nf_data_autorizacao,
            t1.nf_hora_autorizacao,
            T1.NF_ALIQCREDSIMPLES,
            T1.NF_VLCREDSIMPLES,
            T1.nf_entr_said,
            t1.NF_STATUS_NFSE,
            t1.SRV_REGISTRO,
            t1.NF_NFSE_VLR_IR,
            t1.NF_NFSE_VLR_CSLL,
            t1.NF_NFSE_VLR_INSS,
            t1.NF_NFSE_VLR_COFINS,
            t1.NF_NFSE_VLR_PIS,
            t1.NF_NFSE_VLR_DEDUCOES,
            t1.NF_NFSE_VLR_ISS,
            t1.NF_NFSE_VLR_BASE_CALCULO,
            t1.NF_NFSE_DESCRICAO,
            t1.NF_NFSE_ALIQUOTA_ISS,
            t1.nf_export_uf_embarque,
            t1.nf_export_local_embarque,
            t1.nf_desp_aces,
            t1.NF_VALORTOT_PIS,
            t1.NF_VALORTOT_COFINS,
            t1.NF_COMPLEMENTAR,
            t1.NFE_STATUS_PRODUCAO,
            t1.NF_CC_STATUS,
            t1.NF_CC_DATA,
            t1.NF_CC_SEQUENCIA,
            t1.NF_CC_USUARIO,
            t1.NF_CC_DESCRICAO,
            T1.NF_SERIE,
            t1.NF_CANCELADA,
            t1.NF_INTERNO,
            t1.NF_VALOR_TOTAL_FCP,
            t1.NF_VALOR_TOTAL_PARTILHA_DEST,
            t1.NF_VALOR_TOTAL_PARTILHA_ORIG
        FROM
            NF0001 T1
            join ped0000 t2 on (t2.ped_codigo = t1.ped_codigo and t2.emp_codigo = t1.emp_codigo and t1.nf_interno <> 'S')
            JOIN ope0000 T3 ON (T3.ope_codigo = T1.ope_codigo AND T3.OPE_ESCRITA = 'S')
            JOIN CLI0000 T4 ON (T4.CLI_CODIGO = T1.CLI_CODIGO)
            LEFT JOIN CID0000 T6 ON (T6.CID_CODIGO = T4.CID_CODIGO)
            LEFT JOIN ICM0000 T7 ON (T7.ICM_UF_DESTINO = T4.CLI_UF)
            LEFT JOIN TRP0000 T5 ON (T5.trp_codigo = T2.trp_codigo)^

COMMIT WORK^

DELETE FROM NFE_MENSAGENS^

COMMIT WORK ^

INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (476, 1, 'S', 805, 'Rejei��o: A SEFAZ do destinat�rio n�o permite contribuinte Isento de Inscri��o Estadual')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (477, 1, 'S', 508, 'Rejei��o: CST incomp�tivel na opera��o com N�o Contribuinte')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (478, 1, 'S', 529, 'Rejei��o: CST incomp�tivel na opera��o com contribuinte Isento de Inscri��o Estadual ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (479, 1, 'S', 600, 'Rejei��o: CSOSN incomp�tivel na opera��o com N�o Contribuinte')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (480, 1, 'S', 663, 'Rejei��o: Al�quota do ICMS com valor superior a 4% na opera��o de sa�da interestadual com produtos importados')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (481, 1, 'S', 693, 'Rejei��o: Al�quota de ICMS superior a definida para a opera��o interestadual')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (482, 1, 'S', 806, 'Rejei��o: Opera��o com ICMS-ST sem informa��o do CEST')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (483, 1, 'S', 806, 'Rejei��o: NFC-e com grupo de ICMS para UF do destinat�rio')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (484, 1, 'S', 694, 'Rejei��o: N�o informado o grupo ICMS para a UF de destino')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (485, 1, 'S', 695, 'Rejei��o: Informado indevidamente o grupo de ICMS para UF de destino ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (486, 1, 'S', 697, 'Rejei��o: Al�quota interestadual do ICMS com origem diferente do previsto ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (487, 1, 'S', 698, 'Rejei��o: Al�quota interestadual do ICMS imcomp�tivel com as UF envolvidas na opera��o')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (488, 1, 'S', 699, 'Rejei��o: Percentual do ICMS interestadual para a UF de destino difere do previsto para o ano da Data de Emiss�o')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (489, 1, 'S', 793, 'Rejei��o: Valor do ICMS relativo ao Fundo de Combate a Probreza na UF de destino difere do calculado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (245, 1, 'N', 102, 'INUTILIZA��O DE NUMERO HOMOLOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (246, 1, 'N', 103, 'LOTE RECEBIDO COM SUCESSO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (247, 1, 'N', 104, 'LOTE PROCESSADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (248, 1, 'N', 105, 'LOTE EM PROCESSAMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (331, 1, 'S', 276, 'REJEI��O: C�DIGO MUNIC�PIO DO LOCAL DE RETIRADA: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (332, 1, 'S', 277, 'REJEI��O: C�DIGO MUNIC�PIO DO LOCAL DE RETIRADA: DIFERE DA UF DO LOCAL DE RETIRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (333, 1, 'S', 278, 'REJEI��O: C�DIGO MUNIC�PIO DO LOCAL DE ENTRADA: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (334, 1, 'S', 279, 'REJEI��O: C�DIGO MUNIC�PIO DO LOCAL DE ENTREGA: DIFERE DA UF DO LOCAL DE ENTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (335, 1, 'S', 280, 'REJEI��O:CERTIFICADO TRANSMISSOR INV�LIDO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (336, 1, 'S', 281, 'REJEI��O: CERTIFICADO TRANSMISSOR DATA VALIDADE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (337, 1, 'S', 282, 'REJEI��O: CERTIFICADO TRANSMISSOR SEM CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (338, 1, 'S', 283, 'REJEI��O: CERTIFICADO TRANSMISSOR - ERRO CADEIA DE CERTIFICA��O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (339, 1, 'S', 284, 'REJEI��O: CERTIFICADO TRANSMISSOR REVOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (340, 1, 'S', 285, 'REJEI��O: CERTIFICADO TRANSMISSOR DIFERE ICP BRASIL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (341, 1, 'S', 286, 'REJEI��O: CERTIFICADO TRANSMISSOR ERRO NO ACESSO A LCR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (342, 1, 'S', 287, 'REJEI��O: C�DIGO MUNIC�PIO DO FG - ISSQN: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (343, 1, 'S', 288, 'REJEI��O: C�DIGO MUNIC�PIO DO FG - TRANSPORTE: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (344, 1, 'S', 289, 'REJEI��O: C�DIGO DA UF INFORMADA DIVERGE DA UF SOLICITADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (345, 1, 'S', 290, 'REJEI��O: CERTIFICADO ASSINATURA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (346, 1, 'S', 291, 'REJEI��O: CERTIFICADO ASSINATURA DATA VALIDADE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (347, 1, 'S', 292, 'REJEI��O: CERTIFICADO ASSINATURA SEM CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (348, 1, 'S', 293, 'REJEI��O: CERTIFICADO ASSINATURA - ERRO CADEIA DE CERTIFICA��O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (349, 1, 'S', 294, 'REJEI��O: CERTIFICADO ASSINATURA REVOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (350, 1, 'S', 295, 'REJEI��O: CERTIFICADO ASSINATURA DIFERE ICP-BRASIL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (351, 1, 'S', 296, 'REJEI��O: CERTIFICADO ASSINATURA ERRO NO ACESSO A LCR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (352, 1, 'S', 297, 'REJEI��O: ASSINATURA DIFERE DO CALCULADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (353, 1, 'S', 298, 'REJEI��O: ASSINATURA DIFERE DO PADRAO DO PROJETO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (354, 1, 'S', 299, 'REJEI��O: XML DA AREA DE CABE�ALHO COM CODIFICA��O DIFERENTE DE UTF-8')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (355, 1, 'S', 401, 'REJEI��O: CPF DO REMETENTE INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (356, 1, 'S', 402, 'REJEI��O: XML DA �REA DE DADOS COM CODIFICA��O DIFERENTE DE UTF-8')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (357, 1, 'S', 403, 'REJEI��O: O GRUPO DE INFORMA��ES DA NF-E AVULSA � DE USO EXCLUSIVO DO FISCO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (358, 1, 'S', 404, 'REJEI��O: USO DE PREFIXO DE NAMESPACE N�O PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (359, 1, 'S', 405, 'REJEI��O: C�DIGO DO PAIS DO EMITENTE: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (360, 1, 'S', 406, 'REJEI��O: C�DIGO DO PAIS DO DESTINATARIO: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (361, 1, 'S', 407, 'REJEI��O: O CPF S� PODE SER INFORMADO NO CAMPO EMITENTE PARA A NF-E AVULSA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (362, 1, 'S', 999, 'REJEI��O: ERRO N�O CATALOGADO (INFORMAR A MENSAGEM DE ERRO CAPTURADO NO TRATAMENTO DA EXE��O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (363, 1, 'S', 301, 'USO DENEGADO: IRREGULARIDADE FISCAL DO EMITENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (364, 1, 'N', 302, 'USO DENEGADO: IRREGULARIDADE FISCAL DO DESTINAT�RIO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (290, 1, 'S', 235, 'REJEI��O: INSCRI��O SUFRAMA INV�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (291, 1, 'S', 236, 'REJEI��O: CHAVE DE ACESSO COM DIGITO VERIFICADOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (292, 1, 'S', 237, 'REJEI��O: CPF DO DESTINAT�RIO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (293, 1, 'S', 238, 'REJEI��O: CABE�ALHO - VERS�O SO ARQUIVO XML SUPERIOR A VERS�O VIGENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (294, 1, 'S', 239, 'REJEI��O: CABE�ALHO - VERSAO DO ARQUIVO XML N�O SUPORTA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (295, 1, 'S', 240, 'REJEI��O: CANCELAMENTO/INUTILIZA��O - IRREGULARIDADE FISCAL DO EMITENTE ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (296, 1, 'S', 241, 'REJEI��O:  UM N�MERO DA FAIXA JA FOI  UTILIZADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (297, 1, 'S', 242, 'REJEI��O: CABE�ALHO - FALHA NO SCHEMA XML')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (298, 1, 'S', 243, 'REJEI��O: XML MAL FORMADO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (299, 1, 'S', 244, 'REJEI��O: CNPJ DO CERTIFICADO DIGITAL DIFERE DO CNPJ DA MATRIZ E DO CNPJ DO EMITENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (300, 1, 'S', 245, 'REJEI��O: CNPJ EMITENTE N�O CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (301, 1, 'S', 246, 'REJEI��O: CNPJ DESTINATARIO N�O CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (302, 1, 'S', 247, 'REJEI��O:  SIGLA DA UF DO EMITENTE DIVERGE DA UF AUTORIZADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (303, 1, 'S', 248, 'REJEI��O: UF DO RECEBIMENTO DIVERGE DA UF AUTORIZADA ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (304, 1, 'S', 249, 'REJEI��O: UF DA CHAVE DE ACESSO DIVERGE DA UF AUTORIZADORA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (305, 1, 'S', 250, 'REJEI��O: UF DIVERGE DA UF AUTORIZADORA ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (243, 1, 'N', 100, 'AUTORIZADO O USO DA NFE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (244, 1, 'N', 101, 'CANCELAMENTO DE NF-E HOMOLOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (4, 1, 'S', 409, 'REJEI��O: CAMPO CUF INEXISTENTE NO ELEMENTO NFECABECMSG DO SOAP HEADER')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (5, 1, 'S', 410, 'REJEI��O: UF INFORMADA NO CAMPO CUF N�O � ATENDIDA PELO WEB SERVICE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (6, 1, 'S', 411, 'REJEI��O: CAMPO VERS�ODADOS INEXISTENTE NO ELEMENTO NFECABECMSG DO SOAP HEADER')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (7, 1, 'S', 420, 'REJEI��O: CANCELAMENTO PARA NF-E J� CANCELADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (8, 1, 'S', 450, 'REJEI��O: MODELO DA NF-E DIFERENTE DE 55')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (9, 1, 'S', 451, 'REJEI��O: PROCESSO DE EMISS�O INFORMADO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (10, 1, 'S', 452, 'REJEI��O: TIPO AUTORIZADOR DO RECIBO DIVERGE DO ORG�O AUTORIZADOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (11, 1, 'S', 453, 'REJEI��O: ANO DE UTILIZA��O N�O PODE SER SUPERIOR AO ANO ATUAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (12, 1, 'S', 454, 'REJEI��O: ANO DE UTILIZA��O N�O PODE SER INFERIOR A 2006')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (13, 1, 'S', 478, 'REJEI��O: LOCAL DA ENTREGA N�O INFORMADO PARA FATURAMENTO DIRETO DE VE�CULOS NOVOS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (14, 1, 'S', 502, 'REJEI��O: ERRO NA CHAVE DE ACESSO - CAMPO ID N�O CORRESPONDE � CONCATENA��O DOS CAMPOS CORRESPONDENTES')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (15, 1, 'S', 503, 'REJEI��O: S�RIE UTILIZADA FORA DA FAIXA PERMITIDA NO SCAN ( 900-999)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (16, 1, 'S', 504, 'REJEI��O: DATA DE ENTRADA/SA�DA POSTERIOR AO PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (17, 1, 'S', 505, 'REJEI��O: DATA DE ENTRADA/SA�DA ANTERIOR AO PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (18, 1, 'S', 506, 'REJEI��O: DATA DE SA�DA MENOR QUE A DATA DE EMISS�O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (19, 1, 'S', 507, 'REJEI��O: O CNPJ DO DESTINAT�RIO/REMENTENTE N�O DEVE SER INFORMADO EM OPERA��O COM O EXTERIOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (20, 1, 'S', 508, 'REJEI��O: O CNPJ COM O CONTE�DO NULO S� � V�LIDO EM OPERA��O COM O EXTERIOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (22, 1, 'S', 509, 'REJEI��O: INFORMADO C�DIGO DE MUNIC�PIO DIFERENTE DE "9999999" PARA OPERA��O COM O EXTERIOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (23, 1, 'S', 510, 'REJEI��O: OPERA��O COM EXTERIOR E C�DIGO PA�S DESTINAT�RIO � 1058 (BRASIL) OU N�O INFORMADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (24, 1, 'S', 511, 'REJEI��O: N�O � DE OPERA��O COM EXTERIOR E C�DIGO PA�S DESTINAT�RIO DIFERE DE 1058 (BRASIL)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (25, 1, 'S', 512, 'REJEI��O: CNPJ DO LOCAL DE RETIRADA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (26, 1, 'S', 513, 'REJEI��O: C�DIGO MUNIC�PIO DO LOCAL DE RETIRADA DEVE SER 9999999 PARA UF RETIRADA = EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (27, 1, 'S', 514, 'REJEI��O: CNPJ DO LOCAL DE ENTREGA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (28, 1, 'S', 515, 'REJEI��O: C�DIGO MUNIC�PIO DO LOCAL DE ENTREGA DEVE SER 9999999 PARA UF ENTREGA = EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (29, 1, 'S', 516, 'REJEI��O: FALHA NO SCHEMA XML - INEXISTE A TAG RAIZ ESPERDA PARA A MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (30, 1, 'S', 518, 'REJEI��O: CFOP DE ENTREGA PARA NF-E DE SA�DA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (31, 1, 'S', 519, 'REJEI��O: CFOP DE SA�DA PARA NF-E DE ENTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (32, 1, 'S', 520, 'REJEI��O: CFOP DE OPERA��O COM EXTERIOR E UF DESTINAT�RIO DIFERE DE EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (33, 1, 'S', 521, 'REJEI��O: CFOP N�O � DE OPERA��O COM EXTERIOR E UF DESTINAT�RIO � EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (34, 1, 'S', 522, 'REJEI��O: CFOP DE OPERA��O ESTADUAL E UF EMITENTE DIFERE UF DESTINAT�RIO PARA REMETENTE CONTRIBUINTE DO ICMS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (35, 1, 'S', 523, 'REJEI��O: CFOP N�O � DE OPERA��O ESTADUAL E UF EMITENTE IGUAL A UF DESTINAT�RIO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (36, 1, 'S', 524, 'REJEI��O: CFOP DE OPERA��O COM EXTERIOR E N�O INFORMADO NCM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (37, 1, 'S', 525, 'REJEI��O: CFOP DE IMPORTA��O E N�O INFORMADO DADOS DA DI')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (38, 1, 'S', 526, 'REJEI��O: CFOP DE EXPORTA��O E N�O INFORMADO LOCAL DE EMBARQUE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (39, 1, 'S', 527, 'REJEI��O: OPERA��O DE EXPORTA��O COM INFORMA��O DE ICMS INCOMPAT�VEL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (40, 1, 'S', 528, 'REJEI��O: VALOR DO ICMS DIFERE DO PRODUTO BC E AL�QUOTA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (41, 1, 'S', 529, 'REJEI��O: NCM DE INFORMA��O OBRIGAT�RIA PARA PRODUTO TRIBUTADO PELO IPI')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (42, 1, 'S', 530, 'REJEI��O: OPERA��O COM TRIBUTA��O DE ISSQN SEM INFORMAR A INSCRI��O MUNICIPAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (43, 1, 'S', 531, 'REJEI��O: TOTAL DA BC ICMS DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (44, 1, 'S', 532, 'REJEI��O: TOTAL DO ICMS DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (45, 1, 'S', 533, 'REJEI��O: TOTAL DA BC ICMS-ST DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (46, 1, 'S', 534, 'REJEI��O: TOTAL DO ICMS-ST DIFERE DO SOMAT�RIO DOS �TENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (47, 1, 'S', 535, 'REJEI��O: TOTAL DO FRETE DIFERE DO SOMAT�RIO DOS �TENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (48, 1, 'S', 536, 'REJEI��O: TOTAL DO SEGURO DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (49, 1, 'S', 537, 'REJEI��O: TOTAL DO DESCONTO DIFERE DO SOMAT�RIO DOS �TENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (50, 1, 'S', 538, 'REJEI��O: TOTAL DO IPI DIFERE DO SOMAT�RIO DOS �TENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (51, 1, 'S', 539, 'REJEI��O: DUPLICIDADE DE NF-E, COM DIFEREN�A NA CHAVE DE ACESSO (99999999999999999999999999999999999999999)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (52, 1, 'S', 540, 'REJEI��O: CPF DO LOCAL DE RETIRADA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (53, 1, 'S', 541, 'REJEI��O: CPF DO LOCAL DE ENTREGA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (54, 1, 'S', 542, 'REJEI��O: CNPJ DO TRANSPORTADOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (55, 1, 'S', 543, 'REJEI��O: CPF DO TRANSPORTADOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (56, 1, 'S', 544, 'REJEI��O: IE DO TRANSPORTADOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (57, 1, 'S', 545, 'REJEI��O: FALHA NO SCHEMA XML - VERS�O INFORMADA NA VERS�O DADOS DO SOAPHEADER DIVERGE DA VERS�O DA MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (58, 1, '5', 546, 'REJEI��O: ERRO NA CHAVE DE ACESSO - CAMPO ID - FALTA A LITERAL NFE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (59, 1, 'S', 547, 'REJEI��O: D�GITO VERIFICADOR DA CHAVE DE ACESSO DA NF-E REFERENCIADA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (60, 1, 'S', 548, 'REJEI��O: CNPJ DA NF REFERENCIADA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (61, 1, 'S', 549, 'REJEI��O: CNPJ DA NF REFERENCIADA DE PRODUTOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (62, 1, 'S', 550, 'REJEI��O: CPF DA NF REFERENCIADA DE PRODUTOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (63, 1, 'S', 551, 'REJEI��O: IE DA NF REFERENCIADA DE PRODUTOR INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (64, 1, 'S', 552, 'REJEI��O: D�GITO VERIFICADOR DA CHAVE DE ACESSO DO CT-E REFERENCIADO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (65, 1, '5', 553, 'REJEI��O: TIPO AUTORIZADOR DO RECIBO DIVERGE DO ORG�O AUTORIZADOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (66, 1, 'S', 554, 'REJEI��O: S�RIE DIFERE DA FAIXA 0-899')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (67, 1, 'S', 555, 'REJEI��O: TIPO AUTORIZADOR DO PROTOCOLO DIVERGE DO �RG�O AUTORIZADOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (68, 1, '5', 556, 'REJEI��O: JUSTIFICATIVA DE ENTRADA EM CONTING�NCIA N�O DEVE SER INFORMADA PARA TIPO DE EMISS�O NORMAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (69, 1, 'S', 557, 'REJEI��O: A JUSTIFICATIVA DE ENTRADA EM CONTING�NCIA DEVE SER INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (70, 1, 'S', 558, 'REJEI��O: DATA DE ENTRADA EM CONTING�NCIA POSTERIOR A DATA DE EMISS�O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (71, 1, 'S', 559, 'REJEI��O: UF DO TRANSPORTADOR N�O INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (72, 1, 'S', 560, 'REJEI��O: CNPJ BASE DO EMITENTE DIFERE DO CNPJ BASE DA PRIMEIRA NF-E DO LOTE RECEBIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (73, 1, 'S', 561, 'REJEI��O: M�S DE EMISS�O INFORMADO NA CHAVE DE ACESSO DIFERE DO M�S DE EMISS�O DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (74, 1, '5', 562, 'REJEI��O: C�DIGO NUM�RICO INFORMADO NA CHAVE DE ACESSO DIFERE DO C�DIGO NUM�RICO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (75, 1, 'S', 563, 'REJEI��O: J� EXISTE PEDIDO DE INUTILIZA��O COM A MESMA FAIXA DE INUTILIZA��O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (76, 1, 'S', 564, 'REJEI��O: TOTAL DO PRODUTO / SERVI�O DIFERE DO SOMAT�RIO DOS �TENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (77, 1, '5', 565, 'REJEI��O: FALHA NO SCHEMA XML - INEXISTE A TAG RAIZ ESPERADA PARA O LOTE DE NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (78, 1, 'S', 567, 'REJEI��O: FALHA NO SCHEMA XML - VERS�O INFORMADA NA VERS�ODADOS DO SOAPHEADER DIVERGE DA VERS�O DO LOTE DE NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (79, 1, 'S', 568, 'REJEI��O: FALHA NO SCHEMA XML - INEXISTE ATRIBUTO VERS�O NA TAG RAIZ DO LOTE DE NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (80, 1, 'S', 517, 'REJEI��O: FALHA NO SCHEMA XML - INEXISTE ATRIBUTO VERS�O NA TAG RAIZ DA MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (263, 1, 'S', 208, 'REJEI��O: CNPJ DO DESTINAT�RIO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (264, 1, 'S', 209, 'REJEI��O: IE DO EMITENTE INV�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (265, 1, 'S', 210, 'REJEI��O: IE DO DESTINAT�RIO INV�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (266, 1, 'S', 211, 'REJEI��O: IE DO SUBSTITUTO INV�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (267, 1, 'S', 212, 'REJEI��O: DATA DE EMISS�O NF-E POSTERIOR A DATA DE RECEBIMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (268, 1, 'S', 213, 'REJEI��O: CNPJ BASE DO EMITENTE DIFERE DO CNPJ BASE DO CERTIFICADO DIGITAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (269, 1, 'S', 214, 'REJEI��O: TAMANHO DA MENSAGEM EXEDEU O LIMITE ESTABELECIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (270, 1, 'S', 215, 'REJEI��O: FALHA NO SCHEMA XML')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (271, 1, 'S', 216, 'REJEI��O: CHAVE DE ACESSO DIFERE DA CADASTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (272, 1, 'S', 217, 'REJEI��O: NF-E N�O CONSTA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (273, 1, 'S', 218, 'REJEI��O: NF-E J� ESTA CANCELADA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (274, 1, 'S', 219, 'REJEI��O: CIRCULA��O DA NF-E VERIFICADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (275, 1, 'S', 220, 'Rejei��o: Prazo de Cancelamento Superior ao Previsto na Legisla��o ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (276, 1, 'S', 221, 'REJEI��O: CONFIRMANDO O RECEBIMENTO DA NF-E E PELO DESTINAT�RIO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (277, 1, 'S', 222, 'REJEI��O: PROTOCOLO DE AUTORIZA��O DE USO DIFERE DO CADASTRO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (278, 1, 'S', 223, 'REJEI��O: CNPJ DO TRANSMISSOR DO LOTE DIFERE DO CNPJ DO TRANSMISSOR DA CONDULTA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (279, 1, 'S', 224, 'REJEI��O: A FAIXA INICIAL � MAIOR QUE A FAIXA FINAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (280, 1, 'S', 225, 'REJEI��O: FALHA NO SCHEMA XML DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (281, 1, 'S', 226, 'REJEI��O: CODIGO DA UF DO EMITENTE DIVERGE DA UF AUTORIZADORA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (365, 1, 'S', 572, 'REJEI��O: ERRO ATRIBUTO ID DO EVENTO N�O CORRESPONDE A CONCATENA��O DOS CAMPOS ( "ID" + TPEVENTO + CHNFE + NSEQEVENTO )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (366, 1, 'S', 573, 'REJEI��O: DUPLICIDADE DE EVENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (367, 1, 'S', 574, 'REJEI��O: O AUTOR DO EVENTO DIVERGE DO EMISSOR DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (368, 1, 'S', 575, 'REJEI��O: O AUTOR DO EVENTO DIVERGE DO DESTINAT�RIO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (369, 1, 'S', 576, 'REJEI��O: O AUTOR DO EVENTO N�O � UM ORG�O AUTORIZADO A GERAR O EVENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (370, 1, 'S', 577, 'REJEI��O: A DATA DO EVENTO N�O PODE SER MENOR QUE A DATA DE EMISS�O DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (371, 1, 'S', 578, 'REJEI��O: A DATA DO EVENTO N�O PIODE SER MAIOR QUE A DATA DO PROCESSAMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (372, 1, 'S', 579, 'REJEI��O: A DATA DO EVENTO N�O PODE SER MENOR QUE A DATA DE AUTORIZA��O PARA NF-E N�O EMITIDA EM CONTINGENCIA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (373, 1, 'S', 580, 'REJEI��O: O EVENTO EXIGE UMA NF-E AUTORIZADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (374, 1, 'S', 587, 'REJEI��O: USAR SOMENTE O NAMESPACE PADR�O DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (375, 1, 'S', 588, 'REJEI��O: N�O � PERMITIDA A PRESEN�A DE CARACTERES DE EDI��O NO IN�CIO/FIM DA MENSAGEM OU ENTRE AS TAGS DA MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (376, 1, 'S', 594, 'REJEI��O: O N�MERO DE SEQUENCIA DO EVENTO INFORMADO � MAIOR QUE O PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (377, 1, 'S', 595, 'REJEI��O: A VERS�O DO LEIAUTE DA NF-E UTILIZADA N�O � MAIS V�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (378, 1, 'S', 596, 'REJEI��O: AMBIENTE DE HOMOLOGA��O INDISPON�VEL PARA RECEP��O DE NF-E DA VERS�O 1.10.')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (379, 1, 'S', 597, 'Rejei��o: CFOP de Importa��o e n�o informado dados de IPI ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (380, 1, 'S', 598, 'REJEI��O: NF-E EMITIDA EM AMBIENTE DE HOMOLOGA��O COM RAZ�O SOCIAL DO DESTINAT�RIO DIFERENTE DA NF-E EMITIDA EM AMBIENTE DE HOMOLOGA��O - SEM VALOR FISCAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (381, 1, 'S', 599, 'Rejei��o: CFOP de Importa��o e n�o informado dados de II ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (399, 1, 'S', 618, 'Rejei��o: Chave de Acesso inv�lida (modelo diferente de 55 e 65)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (386, 1, 'S', 605, 'REJEI��O: TOTAL DO VSERV DIFERE DO SOMAT�RIO DO VPROD DOS ITENS SUJEITOS AO ISSQN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (382, 1, 'S', 601, 'REJEI��O: TOTAL DO II DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (383, 1, 'S', 602, 'REJEI��O: TOTAL DO PIS DIFERE DO SOMATORIO DOS ITENS SUJEITOS AO ICMS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (384, 1, 'S', 603, 'REJEI��O: TOTAL DO COFINS DIFERE DO SOMAT�RIO DOS ITENS SUJEITO A ICMS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (385, 1, 'S', 604, 'REJEI��O: TOTAL DO VOUTRO DIFERE DO SOMATORIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (400, 1, 'S', 619, 'REJEI��O: CHAVE DE ACESSO INVALIDA ( NUMERO NF = 0 )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (387, 1, 'S', 606, 'REJEI��O: TOTAL DO VBC DO ISS DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (388, 1, 'S', 607, 'REJEI��O: TOTAL DO ISS DIFERE DO SOMAT�RIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (389, 1, 'S', 608, 'REJEI��O: TOTAL DO PIS DIFERE DO SOMAT�RIO DOS ITENS SUJEITOS AO ISSQN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (390, 1, 'S', 609, 'REJEI��O: TOTAL DE COFINS DIFERE DO SOMAT�RIO DOS ITENS SUJEITOS AO ISSQN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (391, 1, 'S', 610, 'REJEI��O: TOTAL DA NF DIFERE DO SOMAT�RIO DOS VALORES COMPOE O VALOR TOTAL DA NF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (392, 1, 'S', 611, 'REJEI��O: CEAN INVALIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (393, 1, 'S', 612, 'REJEI��O: CEANTRIB INVALIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (394, 1, 'S', 613, 'REJEI��O: CHAVE DE ACESSO DIFERE DA EXISTENTE EM BD ( 9999999999999999999999999999 )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (395, 1, 'S', 614, 'REJEI��O: CHAVE DE ACESSO INVALIDA ( CODIGO UF INVALIDO )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (396, 1, 'S', 615, 'REJEI��O: CHAVE DE ACESSO INVALIDA ( ANO< 05 OU ANO MAIOR QUE ANO CORRENTE )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (397, 1, 'S', 616, 'REJEI��O: CHAVE DE ACESSO INVALIDA ( MES <  1 OU MES > 12 )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (398, 1, 'S', 617, 'REJEI��O: CHAVE DE ACESSO INVALIDA ( CNPJ ZERADO OU DIGITO INVALIDO )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (401, 1, 'S', 621, 'REJEI��O: CPF EMITENTE N�O CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (402, 1, 'S', 622, 'REJEI��O: IE EMITENTE N�O VINVULADA AO CPF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (403, 1, 'S', 623, 'REJEI��O: CPF DESTINATARIO N�O CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (404, 1, 'S', 624, 'REJEI��O: IE DESTINAT�RIO N�O VINVULADO AO CPF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (405, 1, 'S', 625, 'REJEI��O: INSCRI��O SUFRAMA DEVE SER INFORMADA NA VENDA COM ISEN��O PARA ZFM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (406, 1, 'S', 626, 'REJEI��O: O CFOP DE OPERA��O ISENTA PARA ZFM DEVE SER 6109 OU 6110')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (446, 1, 'N', 137, 'Nenhum documento localizado para o Destinat�rio ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (407, 1, 'S', 627, 'REJEI��O: O VALOR DO ICMS DESONERADO DEVE SER INFORMADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (408, 1, 'S', 628, 'REJEI��O: TOTAL DA NF SUPERIOR AO VALOR LIMITE ESTABELECIDO PELA SEFAZ ( LIMITE )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (409, 1, 'S', 629, 'REJEI��O: VALOR DO PRODUTO DIFERE DO PRODUTO VALOR UNITARIO DE COMERCIALIZA��O E QUANTIDADE COMERCIAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (410, 1, 'S', 630, 'REJEI��O: VALOR DO PRODUTO DIFERE DO PRODUTO VALOR UNITARIO DE TRIBUTA��O E QUANTIDADE TRIBUTAVEL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (411, 1, 'S', 635, 'REJEI��O: NF-E COM MESMO NUMERO E SERIE JA TRANSMITIDA E AGUARDANDO PROCESSAMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (249, 1, 'N', 106, 'LOTE N�O LOCALIZADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (250, 1, 'N', 107, 'SERVI�O EM OPERA��O')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (251, 1, 'N', 108, 'SERVI�O PARALIZADO MOMENTANEAMENTE(CURTO PRAZO)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (252, 1, 'N', 109, 'SERVI�O PARALISADO SEM PREVIS�O ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (253, 1, 'N', 110, 'USO DENEGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (254, 1, 'N', 111, 'CONSULTA CADASTRO COM UMA OCORR�NCIA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (255, 1, 'N', 112, 'CONSULTA CADASTRO COM MAIS DE UMA OCORR�NCIA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (256, 1, 'S', 201, 'REJEI��O: O NUMERO MAXIMO DE MANUTEN�AO DE NF E A INUTILIZAR ULTRAPASSOU O LIMITE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (257, 1, 'S', 202, 'REJEI��O: FALHA NO RECONHE�IMENTO DA AUTORIA OU INTEGRIDADE DO ARQUIVO DIGITAL ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (258, 1, 'S', 203, 'REJEI��O: EMISSOR N�O HABILITADO PARA EMISS�O DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (259, 1, 'S', 204, 'REJEI��O: DUPLICIDADE DE NF-E ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (260, 1, 'S', 205, 'REJEI��O: NF-E EST� DENEGADA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (261, 1, 'S', 206, 'REJEI��O: NF-E JA EST� INUTILIZADA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (262, 1, 'S', 207, 'REJEI��O: CNPJ DO EMITENTE INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (282, 1, 'S', 227, 'REJEI��O: ERRO NA CHAVE DE ACESSO - CAMPO ID - FALTA A LITERAL NFE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (283, 1, 'S', 228, 'REJEI��O: DATA DE EMISS�O MUITO ATRASADA ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (284, 1, 'S', 229, 'REJEI��O: IE DO EMITENTE N�O INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (285, 1, 'S', 230, 'REJEI��O: IE DO EMITENTE N�O CADASTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (286, 1, 'S', 231, 'REJEI��O: IE DO EMITENTE N�O VINCULADA AO CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (287, 1, 'S', 232, 'REJEI��O: IE DO DESTINATARIO N�O INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (288, 1, 'S', 233, 'REJEI��O: IE DO DESTINATARIO N�O CADASTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (289, 1, 'S', 234, 'REJEI��O: IE do DESTINATARIO N�O VINCULADA AO CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (306, 1, 'S', 251, 'REJEI��O: UF/MUNICIPIO DESTINAT�RIO N�O PERTENCE A SUFRAMA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (307, 1, 'S', 252, 'REJEI��O: AMBIENTE INFORMADO DIVERGE DO AMBIENTE DE RECEBIMENTO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (308, 1, 'S', 253, 'REJEI��O: DIGITO VERIFICADOR DA CHAVE DE ACESSO COMPOSTA INV�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (309, 1, 'S', 254, 'REJEI��O: NF-E REFERENCIADA N�O INFORMADA PARA NF-E COMPLEMENTAR ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (310, 1, 'S', 255, 'REJEI��O: INFORMADA MAIS DE UMA NF-E REFERENCIADA PARA NF-E COMPLEMENTAR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (311, 1, 'S', 256, 'REJEI��O: UMA NF-E DA FAIXA JA EST� INUTILIZADA NA BASE DE DADOS DA SEFAZ ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (312, 1, 'S', 257, 'REJEI��O: SOLICITANTE N�O HABILITADO PARA EMISS�O DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (313, 1, 'S', 258, 'REJEI��O: CNPJ DA CONSULTA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (314, 1, 'S', 259, 'REJEI��O: CNPJ DA CONSULTA N�O CADASTRADO COMO CONTRIBUINTE NA UF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (315, 1, 'S', 260, 'REJEI��O: IE DA CONSULTA INV�LIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (316, 1, 'S', 261, 'REJEI��O: IE DA CONSULTA N�O CADASTRADA COMO CONTRIBUINTE NA UF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (317, 1, 'S', 262, 'REJEI��O: UF N�O FORNECE CONSULTA POR CPF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (318, 1, 'S', 263, 'REJEI��O: CPF DA CONSULTA INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (319, 1, 'S', 264, 'REJEI��O: CPF DA CONSULTA N�O CADASTRADO COMO CONTRIBUINTE NA UF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (320, 1, 'S', 265, 'REJEI��O: SIGLA DA UF DA CONSULTA DIFERE DA UF do WEB SERVICE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (321, 1, 'S', 266, 'REJEI��O: SERIE UTILIZADA N�O PERMITIDA no WEB SERVICE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (322, 1, 'S', 267, 'Rejei��o: Chave de Acesso referenciada inexistente')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (323, 1, 'S', 268, 'REJEI��O: NF-E COMPLEMENTAR REFERENCIA UMA OUTRA NF-E COMPLEMENTAR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (324, 1, 'S', 269, 'REJEI��O: CNPJ EMITENTE DA NF COMPLEMENTAR DIFERE DO CNPJ DA NF RECEBIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (325, 1, 'S', 270, 'REJEI��O: C�DIGO MUNIUC�PIO DO FATO GERADOR DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (326, 1, 'S', 271, 'REJEI��O: C�DIGO MUNIC�PIO DO FATO GERADOR DIFERE DA UF DO EMITENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (327, 1, 'S', 272, 'REJEI��O: C�DIGO MUNIC�PIO DO EMITENTE: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (328, 1, 'S', 273, 'REJEI��O: C�DIGO MUNIC�PIO DO EMITENTE: DIFERE DA UF DO EMITENTE ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (329, 1, 'S', 274, 'REJEI��O: C�DIGO MUNIC�PIO DO DESTINAT�RIO: DIGITO INV�LIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (330, 1, 'S', 275, 'REJEI��O: C�DIGO MUNIC�PIO DO DESTINAT�RIO: DIFERE DA UF do DESTINAT�RIO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (412, 1, 'S', 569, 'Rejei��o: Data de entrada em conting�ncia muito atrasada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (414, 1, 'S', 571, 'Rejei��o: O tpEmis informado diferente de 3 para conting�ncia SCAN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (413, 1, 'S', 570, 'Rejei��o: Tipo de Emiss�o 3, 6 ou 7 s� � v�lido nasconting�ncias SCAN/SVC ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (415, 1, 'N', 129, 'Lote de Evento Processado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (416, 1, 'N', 135, 'Evento registrado e vinculado a NF-e ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (417, 1, 'N', 136, 'Evento registrado, mas n�o vinculado a NF-e')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (418, 1, 'S', 489, 'Rejei��o: CNPJ informado inv�lido (DV ou zeros)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (419, 1, 'S', 490, 'Rejei��o: CPF informado inv�lido (DV ou zeros)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (420, 1, 'S', 491, 'Rejei��o: O tpEvento informado inv�lido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (421, 1, 'S', 492, 'Rejei��o: O verEvento informado inv�lido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (422, 1, 'S', 493, 'Rejei��o: Evento n�o atende o Schema XML espec�fico')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (423, 1, 'S', 494, 'Rejei��o: Chave de Acesso inexistente ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (424, 1, 'S', 501, 'Rejei��o: NF-e autorizada h� mais de 30 dias (720 horas) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (425, 1, 'S', 590, 'Rejei��o: Informado CST para emissor do Simples Nacional (CRT=1)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (426, 1, 'S', 591, 'Rejei��o: Informado CSOSN para emissor que n�o � doSimples Nacional (CRT diferente de 1) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (427, 1, 'S', 592, 'Rejei��o: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (428, 1, 'N', 150, 'Autorizado o uso da NF-e, autoriza��o fora de prazo')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (429, 1, 'N', 151, 'Cancelamento de NF-e homologado fora de prazo')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (433, 1, 'S', 482, 'Rejei��o: AA da Chave de acesso inv�lida')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (430, 1, 'S', 479, 'Rejei��o: Emissor em situa��o irregular perante o fisco')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (431, 1, 'S', 480, 'Rejei��o: CNPJ da Chave de acesso da NF-e informadadiverge do CNPJ do emitente')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (432, 1, 'S', 481, 'Rejei��o: UF da Chave de acesso diverge do c�digo da UF informada ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (434, 1, 'S', 483, 'Rejei��o: MM da chave de acesso inv�lido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (435, 1, 'S', 484, 'Rejei��o: DPEC com tipo de emiss�o diferente de �4�(posi��o 35 da Chave de Acesso) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (436, 1, 'S', 485, 'Rejei��o: N�mero de DPEC j� existe no cadastro de DPEC')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (437, 1, 'S', 486, 'Rejei��o: DPEC n�o localizada para o n�mero de registro de DPEC informado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (438, 1, 'S', 487, 'Rejei��o: Nenhuma DPEC localizada para a chave de acesso informada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (439, 1, 'S', 488, 'Rejei��o: Requisitante de Consulta n�o tem o mesmo CNPJ base do emissor da DPEC')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (440, 1, 'S', 656, 'Rejei��o: Consumo indevido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (441, 1, 'S', 660, 'Rejei��o: CFOP de Combust�vel e n�o informado grupode combust�vel da NF-e ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (442, 1, 'S', 661, 'Rejei��o: NF-e j� existente para o n�mero da DPEC informada ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (443, 1, 'S', 662, 'Rejei��o: Numera��o da DPEC est� inutilizada na Base de Dados da SEFAZ ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (444, 1, 'N', 128, 'Lote de Evento Processado ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (445, 1, 'S', 642, 'Rejei��o: Falha na Consulta do Registro de Passagem, tente novamente ap�s 5 minutos ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (447, 1, 'N', 138, 'Documento localizado para o Destinat�rio')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (448, 1, 'N', 139, 'Pedido de Download processado ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (449, 1, 'N', 140, 'Download disponibilizado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (450, 1, 'S', 589, 'Rejei��o: N�mero do NSU informado superior ao maiorNSU da base de dados da SEFAZ ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (451, 1, 'S', 593, 'Rejei��o: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (452, 1, 'S', 631, 'Rejei��o: CNPJ-Base do Destinat�rio difere do CNPJ-Base do Certificado Digital ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (453, 1, 'S', 632, 'Rejei��o: Solicita��o fora de prazo, a NF-e n�o est� mais dispon�vel para download')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (454, 1, 'S', 634, 'Rejei��o: Destinat�rio da NF-e n�o tem o mesmo CNPJraiz do solicitante do download ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (455, 1, 'S', 650, 'Rejei��o: Evento de "Ci�ncia da Opera��o" para NF-eCancelada ou Denegada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (456, 1, 'S', 651, 'Rejei��o: Evento de "Desconhecimento da Opera��o" para NF-e Cancelada ou Denegada ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (457, 1, 'S', 653, 'Rejei��o: NF-e Cancelada, arquivo indispon�vel paradownload ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (458, 1, 'S', 654, 'Rejei��o: NF-e Denegada, arquivo indispon�vel para download ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (459, 1, 'S', 655, 'Rejei��o: Evento de Ci�ncia da Opera��o informado ap�s a manifesta��o final do destinat�rio')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (460, 1, 'S', 657, 'Rejei��o: C�digo do �rg�o diverge do �rg�o autorizador')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (461, 1, 'S', 658, 'Rejei��o: UF do destinat�rio da Chave de Acesso diverge da UF autorizadora ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (462, 1, 'S', 633, 'Rejei��o: NF-e indispon�vel para download devido a aus�ncia de Manifesta��o do Destinat�rio')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (463, 1, 'S', 678, 'Rejei��o: NF referenciada com UF diferente da UF daNF-e complementar')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (464, 1, 'S', 679, 'Rejei��o: Modelo da NF-e referenciada diferente de 55')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (465, 1, 'S', 680, 'Rejei��o: Duplicidade de NF-e referenciada (Chave de Acesso referenciada mais de uma vez)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (466, 1, 'S', 681, 'Rejei��o: Duplicidade de NF Modelo 1 referenciada (CNPJ, Modelo, S�rie e N�mero) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (467, 1, 'S', 682, 'Rejei��o: Duplicidade de NF de Produtor referenciada (IE, Modelo, S�rie e N�mero) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (468, 1, 'S', 683, 'Rejei��o: Modelo do CT-e referenciado diferente de 57')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (469, 1, 'S', 684, 'Rejei��o: Duplicidade de Cupom Fiscal referenciado (Modelo, N�mero e Ordem e COO)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (470, 1, 'S', 685, 'Rejei��o: Total do Valor Aproximado dos Tributos difere do somat�rio dos itens')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (471, 1, 'S', 686, 'Rejei��o: NF Complementar referencia uma NF-e cancelada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (472, 1, 'S', 687, 'Rejei��o: NF Complementar referencia uma NF-e denegada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (473, 1, 'S', 688, 'Rejei��o: NF referenciada de Produtor com IE inexistente [nRef: xxx]')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (474, 1, 'S', 689, 'Rejei��o: NF referenciada de Produtor com IE n�o vinculada ao CNPJ/CPF informado [nRef: xxx]')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (475, 1, 'S', 690, 'Rejei��o: Pedido de Cancelamento para NF-e com CT-e')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (490, 1, 'S', 798, 'Rejei��o: Valor total do ICMS relativo Fundo de Combate a Probreza (FCP) da UF de destino difere do somat�rio do valor dos itens')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (491, 1, 'S', 799, 'Rejei��o: Valor total do ICMS interestadual da UF de destino difere do somat�rio dos itens ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (492, 1, 'S', 800, 'Rejei��o: Valor total do ICMS interestadual da UF do remetente difere do somat�rio dos itens ')^

COMMIT WORK^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.442' ,
       VERSAOSISTEMA.DATA   = '01.01.2016'
 where VERSAOSISTEMA.CODIGO = 1^
 
UPDATE CLI0000 SET CLI_INSC = ''  WHERE CLI_PESSOA = 'F'^

UPDATE CLI0000 SET CLI_CONSFINAL = 'S' WHERE CLI_PESSOA = 'F'^


commit work^
