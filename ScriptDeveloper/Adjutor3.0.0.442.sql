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

INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100100', '38151210', 'Catalisadores em colmeia cerâmica ou metálica para conversão catalítica de gases de escape de veículos e outros catalizadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100100', '38151290', 'Catalisadores em colmeia cerâmica ou metálica para conversão catalítica de gases de escape de veículos e outros catalizadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100200', '3917', 'Tubos e seus acessórios (por exemplo, juntas, cotovelos, flanges, uniões), de plásticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100300', '39181000', 'Protetores de caçamba ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100400', '39233000', 'Reservatórios de óleo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100500', '39263000', 'Frisos, decalques, molduras e acabamentos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100600', '40103', 'Correias de transmissão de borracha vulcanizada, de matérias têxteis, mesmo impregnadas, revestidas ou recobertas, de plástico, ou estratificadas com plástico ou reforçadas com metal ou com outras mat', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100600', '59100000', 'Correias de transmissão de borracha vulcanizada, de matérias têxteis, mesmo impregnadas, revestidas ou recobertas, de plástico, ou estratificadas com plástico ou reforçadas com metal ou com outras mat', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100700', '40169300', 'Juntas, gaxetas e outros elementos com função semelhante de vedação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100700', '4823909', 'Juntas, gaxetas e outros elementos com função semelhante de vedação ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100800', '40161010', 'Partes de veículos automóveis, tratores e máquinas autopropulsadas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100900', '40169990', 'Tapetes, revestimentos, mesmo confeccionados, batentes, buchas e coxins ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0100900', '57050000', 'Tapetes, revestimentos, mesmo confeccionados, batentes, buchas e coxins ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101000', '59039000', 'Tecidos impregnados, revestidos, recobertos ou estratificados, com plástico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101100', '59090000', 'Mangueiras e tubos semelhantes, de matérias têxteis, mesmo com reforço ou acessórios de outras matérias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101200', '63061', 'Encerados e toldos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101300', '65061000', 'Capacetes e artefatos de uso semelhante, de proteção, para uso em motocicletas, incluídos ciclomotores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101400', '6813', 'Guarnições de fricção (por exemplo, placas, rolos, tiras, segmentos, discos, anéis, pastilhas), não montadas, para freios, embreagens ou qualquer outro mecanismo de fricção, à base de amianto, de outr', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101500', '70071100', 'Vidros de dimensões e formatos que permitam aplicação automotiva ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101500', '70072100', 'Vidros de dimensões e formatos que permitam aplicação automotiva ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101600', '70091000', 'Espelhos retrovisores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101700', '70140000', 'Lentes de faróis, lanternas e outros utensílios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101800', '73110000', 'Cilindro de aço para GNV (gás natural veicular) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0101900', '73110000', 'Recipientes para gases comprimidos ou liquefeitos, de ferro fundido, ferro ou aço, exceto o descrito no item 18.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102000', '7320', 'Molas e folhas de molas, de ferro ou aço ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102100', '7325', 'Obras moldadas, de ferro fundido, ferro ou aço, exceto as do código 7325.91.00 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102200', '780600', 'Peso de chumbo para balanceamento de roda ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102300', '80070090', 'Peso para balanceamento de roda e outros utensílios de estanho ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102400', '830120', 'Fechaduras e partes de fechaduras ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102400', '830160', 'Fechaduras e partes de fechaduras ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102500', '830170', 'Chaves apresentadas isoladamente ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102600', '83021000', 'Dobradiças, guarnições, ferragens e artigos semelhantes de metais comuns ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102600', '83023000', 'Dobradiças, guarnições, ferragens e artigos semelhantes de metais comuns ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102700', '831000', 'Triângulo de segurança ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102800', '84073', 'Motores de pistão alternativo dos tipos utilizados para propulsão de veículos do Capítulo 87 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0102900', '840820', 'Motores dos tipos utilizados para propulsão de veículos automotores ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103000', '84099', 'Partes reconhecíveis como exclusiva ou principalmente destinadas aos motores das posições 8407 ou 8408 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103100', '84122', 'Motores hidráulicos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103200', '841330', 'Bombas para combustíveis, lubrificantes ou líquidos de arrefecimento, próprias para motores de ignição por centelha ou por compressão ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103300', '84141000', 'Bombas de vácuo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103400', '8414801', 'Compressores e turbocompressores de ar ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103400', '8414802', 'Compressores e turbocompressores de ar ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '84139190', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '84149010', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '8414903', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103500', '84149039', 'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103600', '841520', 'Máquinas e aparelhos de ar condicionado ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103700', '84212300', 'Aparelhos para filtrar óleos minerais nos motores de ignição por centelha ou por compressão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103800', '84212990', 'Filtros a vácuo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0103900', '84219', 'Partes dos aparelhos para filtrar ou depurar líquidos ou gases ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104000', '84241000', 'Extintores, mesmo carregados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104100', '84213100', 'Filtros de entrada de ar para motores de ignição por centelha ou por compressão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104200', '84213920', 'Depuradores por conversão catalítica de gases de escape ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104300', '84254200', 'Macacos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104400', '84311010', 'Partes para macacos do item 43.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104500', '8431492', 'Partes reconhecíveis como exclusiva ou principalmente destinadas às máquinas agrícolas ou rodoviárias ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104500', '84339090', 'Partes reconhecíveis como exclusiva ou principalmente destinadas às máquinas agrícolas ou rodoviárias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104600', '84811000', 'Válvulas redutoras de pressão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104700', '84812', 'Válvulas para transmissão óleo-hidráulicas ou pneumáticas ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104800', '84818092', 'Válvulas solenóides ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0104900', '8482', 'Rolamentos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105000', '8483', 'Árvores de transmissão (incluídas as árvores de "cames"e virabrequins) e manivelas^ mancais e "bronzes"^ engrenagens e rodas de fricção^ eixos de esferas ou de roletes^ redutores, multiplicadores, cai', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105100', '8484', 'Juntas metaloplásticas^ jogos ou sortidos de juntas de composições diferentes, apresentados em bolsas, envelopes ou embalagens semelhantes^ juntas de vedação mecânicas (selos mecânicos) ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105200', '850520', 'Acoplamentos, embreagens, variadores de velocidade e freios, eletromagnéticos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105300', '85071000', 'Acumuladores elétricos de chumbo, do tipo utilizado para o arranque dos motores de pistão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105400', '8511', 'Aparelhos e dispositivos elétricos de ignição ou de arranque para motores de ignição por centelha ou por compressão (por exemplo, magnetos, dínamos-magnetos, bobinas de ignição, velas de ignição ou de', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105500', '851220', 'Aparelhos elétricos de iluminação ou de sinalização (exceto os da posição 8539), limpadores de para-brisas, degeladores e desembaçadores (desembaciadores) elétricos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105500', '851240', 'Aparelhos elétricos de iluminação ou de sinalização (exceto os da posição 8539), limpadores de para-brisas, degeladores e desembaçadores (desembaciadores) elétricos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105500', '85129000', 'Aparelhos elétricos de iluminação ou de sinalização (exceto os da posição 8539), limpadores de para-brisas, degeladores e desembaçadores (desembaciadores) elétricos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105600', '85171213', 'Telefones móveis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105700', '8518', 'Alto-falantes, amplificadores elétricos de audiofrequência e partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105800', '85185000', 'Aparelhos elétricos de amplificação de som para veículos automotores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0105900', '851981', 'Aparelhos de reprodução de som ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106000', '8525501', 'Aparelhos transmissores (emissores) de radiotelefonia ou radiotelegrafia (rádio receptor/transmissor) ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106000', '85256010', 'Aparelhos transmissores (emissores) de radiotelefonia ou radiotelegrafia (rádio receptor/transmissor) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106100', '85272', 'Aparelhos receptores de radiodifusão que só funcionam com fonte externa de energia, exceto os classificados na posição 8527.21.90 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106200', '85272190', 'Outros aparelhos receptores de radiodifusão que funcionem com fonte externa de energia^ outros aparelhos videofônicos de gravação ou de reprodução, mesmo incorporando um receptor de sinais videofônico', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106200', '85219090', 'Outros aparelhos receptores de radiodifusão que funcionem com fonte externa de energia^ outros aparelhos videofônicos de gravação ou de reprodução, mesmo incorporando um receptor de sinais videofônico', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106300', '85291090', 'Antenas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106400', '85340000', 'Circuitos impressos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106500', '853530', 'Interruptores e seccionadores e comutadores ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106500', '853650', 'Interruptores e seccionadores e comutadores ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106600', '85361000', 'Fusíveis e corta-circuitos de fusíveis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106700', '85362000', 'Disjuntores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106800', '85364', 'Relés ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0106900', '8538', 'Partes reconhecíveis como exclusivas ou principalmente destinados aos aparelhos dos itens 65.0, 66.0, 67.0 e 68.0 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107000', '85365090', 'Interruptores, seccionadores e comutadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107100', '853910', 'Faróis e projetores, em unidades seladas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107200', '85392', 'Lâmpadas e tubos de incandescência, exceto de raios ultravioleta ou infravermelhos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107300', '85442000', 'Cabos coaxiais e outros condutores elétricos coaxiais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107400', '85443000', 'Jogos de fios para velas de ignição e outros jogos de fios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107500', '8707', 'Carroçarias para os veículos automóveis das posições 8701 a 8705, incluídas as cabinas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107600', '8708', 'Partes e acessórios dos veículos automóveis das posições 8701 a 8705 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107700', '87141', 'Parte e acessórios de motocicletas (incluídos os ciclomotores) ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107800', '87169090', 'Engates para reboques e semi-reboques ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0107900', '902610', 'Medidores de nível^ Medidores de vazão ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108000', '902620', 'Aparelhos para medida ou controle da pressão ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108100', '9029', 'Contadores, indicadores de velocidade e tacômetros, suas partes e acessórios ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108200', '90303321', 'Amperímetros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108300', '90318040', 'Aparelhos digitais, de uso em veículos automóveis, para medida e indicação de múltiplas grandezas tais como: velocidade média, consumos instantâneo e médio e autonomia (computador de bordo) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108400', '9032892', 'Controladores eletrônicos ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108500', '91040000', 'Relógios para painéis de instrumentos e relógios semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108600', '94012000', 'Assentos e partes de assentos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108600', '94019090', 'Assentos e partes de assentos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108700', '96138000', 'Acendedores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108800', '4009', 'Tubos de borracha vulcanizada não endurecida, mesmo providos de seus acessórios ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108900', '45049000', 'Juntas de vedação de cortiça natural e de amianto ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0108900', '68129910', 'Juntas de vedação de cortiça natural e de amianto ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109000', '48234000', 'Papel-diagrama para tacógrafo, em disco ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109100', '39191000', 'Fitas, tiras, adesivos, auto-colantes, de plástico, refletores, mesmo em rolos^ placas metálicas com película de plástico refletora, próprias para colocação em carrocerias, para-choques de veículos de', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109100', '39199000', 'Fitas, tiras, adesivos, auto-colantes, de plástico, refletores, mesmo em rolos^ placas metálicas com película de plástico refletora, próprias para colocação em carrocerias, para-choques de veículos de', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109100', '87082999', 'Fitas, tiras, adesivos, auto-colantes, de plástico, refletores, mesmo em rolos^ placas metálicas com película de plástico refletora, próprias para colocação em carrocerias, para-choques de veículos de', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109200', '84123110', 'Cilindros pneumáticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109300', '84131900', 'Bomba elétrica de lavador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109300', '84135090', 'Bomba elétrica de lavador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109300', '84138100', 'Bomba elétrica de lavador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109400', '84136019', 'Bomba de assistência de direção hidráulica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109400', '84137010', 'Bomba de assistência de direção hidráulica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109500', '84145910', 'Motoventiladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109500', '84145990', 'Motoventiladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109600', '84213990', 'Filtros de pólen do ar-condicionado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109700', '85011019', '"Máquina" de vidro elétrico de porta ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109800', '85013110', 'Motor de limpador de para-brisa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0109900', '85045000', 'Bobinas de reatância e de auto-indução ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110000', '850720', 'Baterias de chumbo e de níquel-cádmio ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110000', '850730', 'Baterias de chumbo e de níquel-cádmio ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110100', '85123000', 'Aparelhos de sinalização acústica (buzina) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110200', '9032898', 'Instrumentos para regulação de grandezas não elétricas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110200', '9032899', 'Instrumentos para regulação de grandezas não elétricas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110300', '90271000', 'Analisadores de gases ou de fumaça (sonda lambda) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110400', '40081100', 'Perfilados de borracha vulcanizada não endurecida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110500', '56012219', 'Artefatos de pasta de fibra de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110600', '57032000', 'Tapetes/carpetes - nailón ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110700', '57033000', 'Tapetes de matérias têxteis sintéticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110800', '59119000', 'Forração interior capacete ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0110900', '69039099', 'Outros para-brisas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111000', '70072900', 'Moldura com espelho ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111100', '73145000', 'Corrente de transmissão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111200', '73151100', 'Corrente transmissão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111300', '73151210', 'Outras correntes de transmissão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111400', '84189900', 'Condensador tubular metálico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111500', '841950', 'Trocadores de calor ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111600', '84249090', 'Partes de aparelhos mecânicos de pulverizar ou dispersar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111700', '84254910', 'Macacos manuais para veículos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111800', '84314100', 'Caçambas, pás, ganchos e tenazes para máquinas rodoviárias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0111900', '85016100', 'Geradores de corrente alternada de potência não superior a 75 kva ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112000', '85311090', 'Aparelhos elétricos para alarme de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112100', '90141000', 'Bússolas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112200', '90251990', 'Indicadores de temperatura ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112300', '90259010', 'Partes de indicadores de temperatura ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112400', '902690', 'Partes de aparelhos de medida ou controle ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112500', '90321010', 'Termostatos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112600', '90321090', 'Instrumentos e aparelhos para regulação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112700', '90322000', 'Pressostatos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112800', '871690', 'Peças para reboques e semi-reboques ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0112900', '00000000', 'Outras peças, partes e acessórios para veículos automotores não relacionados nos demais itens deste anexo ', 8)^
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
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201600', '220830', 'Uísque ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201700', '2205', 'Vermute e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201800', '22086000', 'Vodka ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0201900', '22089000', 'Derivados de vodka ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202000', '22089000', 'Arak ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202100', '22082000', 'Aguardente vínica / grappa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202200', '22060010', 'Sidra e similares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202300', '2205', 'Sangrias e coquetéis ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202300', '22060090', 'Sangrias e coquetéis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202300', '22089000', 'Sangrias e coquetéis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202400', '2204', 'Vinhos e similares ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2204', 'Outras bebidas alcoólicas não especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2205', 'Outras bebidas alcoólicas não especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2206', 'Outras bebidas alcoólicas não especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2207', 'Outras bebidas alcoólicas não especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0202500', '2208', 'Outras bebidas alcoólicas não especificadas nos itens anteriores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300100', '2201', 'Água mineral, gasosa ou não, ou potável, naturais, em garrafa de vidro, retornável ou não, com capacidade de até 500 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300200', '2201', 'Água mineral, gasosa ou não, ou potável, naturais, em embalagem com capacidade igual ou superior a 5.000 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300300', '2201', 'Água mineral, gasosa ou não, ou potável, naturais, em embalagem de vidro, não retornável, com capacidade de até 300 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300400', '2201', 'Água mineral, gasosa ou não, ou potável, naturais, em garrafa plástica de 1.500 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300500', '2201', 'Água mineral, gasosa ou não, ou potável, naturais, em copos plásticos e embalagem plástica com capacidade de até 500 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300600', '2201', '2202 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300700', '2202', 'Refrigerante em garrafa com capacidade igual ou superior a 600 ml ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300800', '2202', 'Demais refrigerantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0300900', '21069010', 'Xarope ou extrato concentrado destinados ao preparo de refrigerante em máquina "pré-mix"ou "post-mix" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301000', '22029000', 'Bebidas energéticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301100', '210690', 'Bebidas hidroeletrolíticas (isotônicas) ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301200', '22030000', 'Cerveja ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301300', '22029000', 'Cerveja sem álcool ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0301400', '22030000', 'Chope ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0400100', '2402', 'Charutos, cigarrilhas e cigarros, de tabaco ou dos seus sucedâneos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0400200', '24031', 'Tabaco para fumar, mesmo contendo sucedâneos de tabaco em qualquer proporção ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0500100', '2523', 'Cimento ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600100', '220710', 'Álcool etílico não desnaturado, com um teor alcoólico em volume igual ou superior a 80% vol (álcool etílico anidro combustível e álcool etílico hidratado combustível) ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600200', '2710125', 'Gasolinas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600300', '2710191', 'Querosenes ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600400', '2710192', 'Óleos combustíveis ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600500', '2710193', 'Óleos lubrificantes ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600600', '2710199', 'Outros óleos de petróleo ou de minerais betuminosos (exceto óleos brutos) e preparações não especificadas nem compreendidas noutras posições, que contenham, como constituintes básicos, 70% ou mais, em', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600700', '27109', 'Resíduos de óleos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600800', '2711', 'Gás de petróleo e outros hidrocarbonetos gasosos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0600900', '2713', 'Coque de petróleo e outros resíduos de óleo de petróleo ou de minerais betuminosos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0601000', '38260000', 'Biodiesel e suas misturas, que não contenham ou que contenham menos de 70%, em peso, de óleos de petróleo ou de óleos minerais betuminosos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0601100', '3403', 'Preparações lubrificantes, exceto as contendo, como constituintes de base, 70% ou mais, em peso, de óleos de petróleo ou de minerais betuminosos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0601200', '27102000', 'Óleos de petróleo ou de minerais betuminosos (exceto óleos brutos) e preparações não especificadas nem compreendidas noutras posições, que contenham, como constituintes básicos, 70% ou mais, em peso, ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0700100', '27160000', 'Energia elétrica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800100', '40169990', 'Ferramentas de borracha vulcanizada não endurecida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800200', '44170010', 'Ferramentas, armações e cabos de ferramentas, de madeira ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800200', '44170090', 'Ferramentas, armações e cabos de ferramentas, de madeira ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800300', '6804', 'Mós e artefatos semelhantes, sem armação, para moer, desfibrar, triturar, amolar, polir, retificar ou cortar^ pedras para amolar ou para polir, manualmente, e suas partes, de pedras naturais, de abras', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800400', '8201', 'Pás, alviões, picaretas, enxadas, sachos, forcados e forquilhas, ancinhos e raspadeiras^ machados, podões e ferramentas semelhantes com gume^ tesouras de podarde todos os tipos^ foices e foicinhas, fa', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800500', '82022000', 'Folhas de serras de fita ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800600', '82029100', 'Lâminas de serras máquinas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800700', '8202', 'Serras manuais e outras folhas de serras (incluídas as fresas-serras e as folhas não dentadas para serrar), exceto as classificadas nas posições 8202.20.00 e 8202.91.00 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800800', '8203', 'Limas, grosas, alicates (mesmo cortantes), tenazes, pinças, cisalhas para metais, corta-tubos, corta-pinos, saca-bocados e ferramentas semelhantes, manuais, exceto as pinças para sobrancelhas classifi', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0800900', '8204', 'Chaves de porcas, manuais (incluídas as chaves dinamométricas)^ chaves de caixa intercambiáveis, mesmo com cabos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801000', '8205', 'Ferramentas manuais (incluídos os diamantes de vidraceiro) não especificadas nem compreendidas em outras posições, lamparinas ou lâmpadas de soldar (maçaricos) e semelhantes^ tornos de apertar, sargen', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801100', '8206', 'Ferramentas de pelo menos duas das posições 8202 a 8205, acondicionadas em sortidos para venda a retalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801200', '820740', 'Ferramentas de roscar interior ou exteriormente^ de mandrilar ou de brochar^ e de fresar ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801200', '820760', 'Ferramentas de roscar interior ou exteriormente^ de mandrilar ou de brochar^ e de fresar ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801200', '820770', 'Ferramentas de roscar interior ou exteriormente^ de mandrilar ou de brochar^ e de fresar ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801300', '8207', 'Outras ferramentas intercambiáveis para ferramentas manuais, mesmo mecânicas, ou para máquinas-ferramentas (por exemplo, de embutir, estampar, puncionar, furar, tornear, aparafusar), incluídas as fiei', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801400', '8208', 'Facas e lâminas cortantes, para máquinas ou para aparelhos mecânicos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801500', '82090011', 'Plaquetas ou pastilhas intercambiáveis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801600', '8209', 'Outras plaquetas, varetas, pontas e objetos semelhantes para ferramentas, não montados, de ceramais ("cermets"), exceto as classificadas na posição 8209.00.11 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801700', '8211', 'Facas (exceto as da posição 8208) de lâmina cortante ou serrilhada, incluídas as podadeiras de lâmina móvel, e suas lâminas, exceto as de uso doméstico ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801800', '8213', 'Tesouras e suas lâminas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0801900', '8467', 'Ferramentas pneumáticas, hidráulicas ou com motor (elétrico ou não elétrico) incorporado, de uso manual ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802000', '9015', 'Instrumentos e aparelhos de geodésia, topografia, agrimensura, nivelamento, fotogrametria, hidrografia, oceanografia, hidrologia, meteorologia ou de geofísica, exceto bussolas^ telêmetros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '90172000', 'Instrumentos de desenho, de traçado ou de cálculo^ metros, micrômetros, paquímetros, calibres e semelhantes^ partes e acessórios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '901730', 'Instrumentos de desenho, de traçado ou de cálculo^ metros, micrômetros, paquímetros, calibres e semelhantes^ partes e acessórios ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '901780', 'Instrumentos de desenho, de traçado ou de cálculo^ metros, micrômetros, paquímetros, calibres e semelhantes^ partes e acessórios ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802100', '90179090', 'Instrumentos de desenho, de traçado ou de cálculo^ metros, micrômetros, paquímetros, calibres e semelhantes^ partes e acessórios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802200', '90251190', 'Termômetros, suas partes e acessórios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802200', '90259010', 'Termômetros, suas partes e acessórios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802300', '902519', 'Pirômetros, suas partes e acessórios ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0802300', '90259090', 'Pirômetros, suas partes e acessórios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900100', '8539', 'Lâmpadas elétricas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900200', '8540', 'Lâmpadas eletrônicas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900300', '85041000', 'Reatores para lâmpadas ou tubos de descargas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900400', '853650', '“Starter” ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('0900500', '85437099', 'Lâmpadas de LED (Diodos Emissores de Luz) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000100', '2522', 'Cal ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000200', '3816001', 'Argamassas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000200', '38245000', 'Argamassas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000300', '32149000', 'Outras argamassas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000400', '391000', 'Silicones em formas primárias, para uso na construção ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000500', '3916', 'Revestimentos de PVC e outros plásticos^ forro, sancas e afins de PVC, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000600', '3917', 'Tubos, e seus acessórios (por exemplo, juntas, cotovelos, flanges, uniões), de plásticos, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000700', '3918', 'Revestimento de pavimento de PVC e outros plásticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000800', '3919', 'Chapas, folhas, tiras, fitas, películas e outras formas planas, auto-adesivas, de plásticos, mesmo em rolos, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000900', '3919', 'Veda rosca, lona plástica para uso na construção, fitas isolantes e afins ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000900', '3920', 'Veda rosca, lona plástica para uso na construção, fitas isolantes e afins ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1000900', '3921', 'Veda rosca, lona plástica para uso na construção, fitas isolantes e afins ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001000', '3921', 'Telha de plástico, mesmo reforçada com fibra de vidro ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001100', '3921', 'Cumeeira de plástico, mesmo reforçada com fibra de vidro ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001200', '3921', 'Chapas, laminados plásticos em bobina, para uso na construção, exceto os descritos nos itens 10.0 e 11.0 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001300', '3922', 'Banheiras, boxes para chuveiros, pias, lavatórios, bidês, sanitários e seus assentos e tampas, caixas de descarga e artigos semelhantes para usos sanitários ou higiênicos, de plásticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001400', '3924', 'Artefatos de higiene/toucador de plástico, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001500', '39251000', 'Caixa d’água, inclusive sua tampa, de plástico, mesmo reforçadas com fibra de vidro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001600', '392590', 'Outras telhas, cumeeira e caixa d’água, inclusive sua tampa, de plástico, mesmo reforçadas com fibra de vidro ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001700', '39251000', 'Artefatos para apetrechamento de construções, de plásticos, não especificados nem compreendidos em outras posições, incluindo persianas, sancas, molduras, apliques e rosetas, caixilhos de polietileno ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001700', '392590', 'Artefatos para apetrechamento de construções, de plásticos, não especificados nem compreendidos em outras posições, incluindo persianas, sancas, molduras, apliques e rosetas, caixilhos de polietileno ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001800', '39252000', 'Portas, janelas e seus caixilhos, alizares e soleiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1001900', '39253000', 'Postigos, estores (incluídas as venezianas) e artefatos semelhantes e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002000', '392690', 'Outras obras de plástico, para uso na construção ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002100', '4814', 'Papel de parede e revestimentos de parede semelhantes^ papel para vitrais ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002200', '68101900', 'Telhas de concreto ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002300', '6811', 'Telha, cumeeira e caixa d’água, inclusive sua tampa, de fibrocimento, cimento-celulose ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002400', '6811', 'Caixas d''água, tanques e reservatórios e suas tampas, telhas, calhas, cumeeiras e afins, de fibrocimento, cimento-celulose ou semelhantes, contendo ou não amianto, exceto os descritos no item 23.0 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002500', '69010000', 'Tijolos, placas (lajes), ladrilhos e outras peças cerâmicas de farinhas siliciosas fósseis ("kieselghur", tripolita, diatomita, por exemplo) ou de terras siliciosas semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002600', '6902', 'Tijolos, placas (lajes), ladrilhos e peças cerâmicas semelhantes, para uso na construção, refratários, que não sejam de farinhas siliciosas fósseis nem de terras siliciosas semelhantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002700', '6904', 'Tijolos para construção, tijoleiras, tapa-vigas e produtos semelhantes, de cerâmica ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002800', '6905', 'Telhas, elementos de chaminés, condutores de fumaça, ornamentos arquitetônicos, de cerâmica, e outros produtos cerâmicos para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1002900', '69060000', 'Tubos, calhas ou algerozes e acessórios para canalizações, de cerâmica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003000', '6907', 'Ladrilhos e placas de cerâmica, exclusivamente para pavimentação ou revestimento ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003000', '6908', 'Ladrilhos e placas de cerâmica, exclusivamente para pavimentação ou revestimento ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003001', '6907', 'Cubos, pastilhas e artigos semelhantes de cerâmica, mesmo com suporte. ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003001', '6908', 'Cubos, pastilhas e artigos semelhantes de cerâmica, mesmo com suporte. ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003100', '6910', 'Pias, lavatórios, colunas para lavatórios, banheiras, bidês, sanitários, caixas de descarga, mictórios e aparelhos fixos semelhantes para usos sanitários, de cerâmica ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003200', '69120000', 'Artefatos de higiene/toucador de cerâmica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003300', '7003', 'Vidro vazado ou laminado, em chapas, folhas ou perfis, mesmo com camada absorvente, refletora ou não, mas sem qualquer outro trabalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003400', '7004', 'Vidro estirado ou soprado, em folhas, mesmo com camada absorvente, refletora ou não, mas sem qualquer outro trabalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003500', '7005', 'Vidro flotado e vidro desbastado ou polido em uma ou em ambas as faces, em chapas ou em folhas, mesmo com camada absorvente, refletora ou não, mas sem qualquer outro trabalho ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003600', '70071900', 'Vidros temperados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003700', '70072900', 'Vidros laminados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003800', '7008', 'Vidros isolantes de paredes múltiplas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1003900', '7016', 'Blocos, placas, tijolos, ladrilhos, telhas e outros artefatos, de vidro prensado ou moldado, mesmo armado, para uso na construção^ cubos, pastilhas e outros artigos semelhantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004000', '72142000', 'Barras próprias para construções, exceto vergalhões ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004100', '73089010', 'Outras barras próprias para construções, exceto vergalhões ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004200', '72142000', 'Vergalhões ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004300', '7213', 'Outros vergalhões ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004300', '73089010', 'Outros vergalhões ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004400', '72171090', 'Fios de ferro ou aço não ligados, não revestidos, mesmo polidos^ cordas, cabos, tranças (entrançados), lingas e artefatos semelhantes, de ferro ou aço, não isolados para usos elétricos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004400', '7312', 'Fios de ferro ou aço não ligados, não revestidos, mesmo polidos^ cordas, cabos, tranças (entrançados), lingas e artefatos semelhantes, de ferro ou aço, não isolados para usos elétricos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004500', '721720', 'Outros fios de ferro ou aço, não ligados, galvanizados ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004600', '7307', 'Acessórios para tubos (inclusive uniões, cotovelos, luvas ou mangas), de ferro fundido, ferro ou aço ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004700', '73083000', 'Portas e janelas, e seus caixilhos, alizares e soleiras de ferro fundido, ferro ou aço ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004800', '73084000', 'Material para andaimes, para armações (cofragens) e para escoramentos, (inclusive armações prontas, para estruturas de concreto armado ou argamassa armada), eletrocalhas e perfilados de ferro fundido,', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004800', '730890', 'Material para andaimes, para armações (cofragens) e para escoramentos, (inclusive armações prontas, para estruturas de concreto armado ou argamassa armada), eletrocalhas e perfilados de ferro fundido,', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1004900', '73084000', 'Treliças de aço ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005000', '73089090', 'Telhas metálicas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005100', '7310', 'Caixas diversas (tais como caixa de correio, de entrada de água, de energia, de instalação) de ferro, ferro fundido ou aço^ próprias para a construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005200', '73130000', 'Arame farpado, de ferro ou aço arames ou tiras, retorcidos, mesmo farpados, de ferro ou aço, dos tipos utilizados em cercas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005300', '7314', 'Telas metálicas, grades e redes, de fios de ferro ou aço ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005400', '73151100', 'Correntes de rolos, de ferro fundido, ferro ou aço ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005500', '73151290', 'Outras correntes de elos articulados, de ferro fundido, ferro ou aço ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005600', '73158200', 'Correntes de elos soldados, de ferro fundido, de ferro ou aço ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005700', '731700', 'Tachas, pregos, percevejos, escápulas, grampos ondulados ou biselados e artefatos semelhantes, de ferro fundido, ferro ou aço, mesmo com a cabeça de outra matéria, exceto cobre ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005800', '7318', 'Parafusos, pinos ou pernos, roscados, porcas, tira-fundos, ganchos roscados, rebites, chavetas, cavilhas, contrapinos, arruelas (incluídas as de pressão) e artefatos semelhantes, de ferro fundido, fer', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1005900', '7323', 'Palha de ferro ou aço^ esponjas, esfregões, luvas e artefatos semelhantes para limpeza, polimento e usos semelhantes, de ferro ou aço, exceto os classificados na posição 7323.10.00 de uso doméstico ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006000', '7324', 'Artefatos de higiene ou de toucador, e suas partes, de ferro fundido, ferro ou aço, incluídas as pias, banheiras, lavatórios, cubas, mictórios, tanques e afins de ferro fundido, ferro ou aço, para uso', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006100', '7325', 'Outras obras moldadas, de ferro fundido, ferro ou aço, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006200', '7326', 'Abraçadeiras ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006300', '7407', 'Barras de cobre ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006400', '74111010', 'Tubos de cobre e suas ligas, para instalações de água quente e gás, para uso na construção ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006500', '7412', 'Acessórios para tubos (por exemplo, uniões, cotovelos, luvas ou mangas) de cobre e suas ligas, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006600', '7415', 'Tachas, pregos, percevejos, escápulas e artefatos semelhantes, de cobre, ou de ferro ou aço com cabeça de cobre, parafusos, pinos ou pernos, roscados, porcas, ganchos roscados, rebites, chavetas, cavi', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006700', '74182000', 'Artefatos de higiene/toucador de cobre, para uso na construção ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006800', '76071990', 'Manta de subcobertura aluminizada ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1006900', '7608', 'Tubos de alumínio e suas ligas, para refrigeração e ar condicionado, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007000', '76090000', 'Acessórios para tubos (por exemplo, uniões, cotovelos, luvas ou mangas), de alumínio, para uso na construção ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007100', '7610', 'Construções e suas partes (por exemplo, pontes e elementos de pontes, torres, pórticos ou pilones, pilares, colunas, armações, estruturas para telhados, portas e janelas, e seus caixilhos, alizares e ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007200', '76152000', 'Artefatos de higiene/toucador de alumínio, para uso na construção ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007300', '7616', 'Outras obras de alumínio, próprias para construções, incluídas as persianas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007400', '83024100', 'Outras guarnições, ferragens e artigos semelhantes de metais comuns, para construções, inclusive puxadores. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007500', '8301', 'Fechaduras e ferrolhos (de chave, de segredo ou elétricos), de metais comuns, incluídas as suas partes fechos e armações com fecho, com fechadura, de metais comuns chaves para estes artigos, de metais', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007600', '83021000', 'Dobradiças de metais comuns, de qualquer tipo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007700', '8307', 'Tubos flexíveis de metais comuns, mesmo com acessórios, para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007800', '8311', 'Fios, varetas, tubos, chapas, eletrodos e artefatos semelhantes, de metais comuns ou de carbonetos metálicos, revestidos exterior ou interiormente de decapantes ou de fundentes, para soldagem (soldadu', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1007900', '8481', 'Torneiras, válvulas (incluídas as redutoras de pressão e as termostáticas) e dispositivos semelhantes, para canalizações, caldeiras, reservatórios, cubas e outros recipientes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '28289011', 'Água sanitária, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '28289019', 'Água sanitária, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '32064100', 'Água sanitária, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100100', '38089419', 'Água sanitária, branqueador e outros alvejantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100200', '34012090', 'Sabões em pó, flocos, palhetas, grânulos ou outras formas semelhantes, para lavar roupas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100300', '34012090', 'Sabões líquidos para lavar roupas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100400', '34022000', 'Detergentes em pó, flocos, palhetas, grânulos ou outras formas semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100500', '34022000', 'Detergentes líquidos, exceto para lavar roupa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100600', '34022000', 'Detergente líquido para lavar roupa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100700', '3402', 'Outros agentes orgânicos de superfície (exceto sabões)^ preparações tensoativas, preparações para lavagem (incluídas as preparações auxiliares para lavagem) e preparações para limpeza (inclusive multi', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100800', '38099190', 'Amaciante/suavizante ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '39241000', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '39249000', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '68053010', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1100900', '68053090', 'Esponjas para limpeza ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1101000', '2207', 'Álcool etílico para limpeza ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1101100', '73231000', 'Palhas de ferro ou aço^ esponjas, esfregões, luvas e artefatos semelhantes para limpeza, polimento ou uso semelhantes^ todos de uso doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200100', '8504', 'Transformadores, bobinas de reatância e de auto indução, inclusive os transformadores de potência superior a 16 KVA, classificados nas posições 8504.33.00 e 8504.34.00^ exceto os demais transformadore', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200200', '8516', 'Aquecedores elétricos de água, incluídos os de imersão, chuveiros ou duchas elétricos, torneiras elétricas, resistências de aquecimento, inclusive as de duchas e chuveiros elétricos e suas partes^ exc', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200300', '8535', 'Aparelhos para interrupção, seccionamento, proteção, derivação, ligação ou conexão de circuitos elétricos (por exemplo, interruptores, comutadores, corta-circuitos, para-raios, limitadores de tensão, ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200400', '8536', 'Aparelhos para interrupção, seccionamento, proteção, derivação, ligação ou conexão de circuitos elétricos (por exemplo, interruptores, comutadores, relés, corta-circuitos, eliminadores de onda, plugue', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200500', '8538', 'Partes reconhecíveis como exclusiva ou principalmente destinadas aos aparelhos das posições 8535 e 8536 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200600', '74130000', 'Cabos, tranças e semelhantes, de cobre, não isolados para usos elétricos, exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200700', '8544', 'Fios, cabos (incluídos os cabos coaxiais) e outros condutores, isolados ou não, para usos elétricos (incluídos os de cobre ou alumínio, envernizados ou oxidados anodicamente), mesmo com peças de conex', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200700', '7605', 'Fios, cabos (incluídos os cabos coaxiais) e outros condutores, isolados ou não, para usos elétricos (incluídos os de cobre ou alumínio, envernizados ou oxidados anodicamente), mesmo com peças de conex', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200700', '7614', 'Fios, cabos (incluídos os cabos coaxiais) e outros condutores, isolados ou não, para usos elétricos (incluídos os de cobre ou alumínio, envernizados ou oxidados anodicamente), mesmo com peças de conex', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200800', '8546', 'Isoladores de qualquer matéria, para usos elétricos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1200900', '8547', 'Peças isolantes inteiramente de matérias isolantes, ou com simples peças metálicas de montagem (suportes roscados, por exemplo) incorporadas na massa, para máquinas, aparelhos e instalações elétricas^', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300100', '3003', 'Medicamentos de referência – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300100', '3004', 'Medicamentos de referência – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300101', '3003', 'Medicamentos de referência – negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300101', '3004', 'Medicamentos de referência – negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300102', '3003', 'Medicamentos de referência – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300102', '3004', 'Medicamentos de referência – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300200', '3003', 'Medicamentos genérico – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300200', '3004', 'Medicamentos genérico – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300201', '3003', 'Medicamentos genérico – negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300201', '3004', 'Medicamentos genérico – negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300202', '3003', 'Medicamentos genérico – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300202', '3004', 'Medicamentos genérico – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300300', '3003', 'Medicamentos similar – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300300', '3004', 'Medicamentos similar – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300301', '3003', 'Medicamentos similar – negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300301', '3004', 'Medicamentos similar – negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300302', '3003', 'Medicamentos similar – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300302', '3004', 'Medicamentos similar – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300400', '3003', 'Outros tipos de medicamentos – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300400', '3004', 'Outros tipos de medicamentos – positiva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300401', '3003', 'Outros tipos de medicamentos - negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300401', '3004', 'Outros tipos de medicamentos - negativa ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300402', '3003', 'Outros tipos de medicamentos – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300402', '3004', 'Outros tipos de medicamentos – neutra ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300500', '300660', 'Preparações químicas contraceptivas à base de hormônios, de outros produtos da posição 29.37 ou de espermicidas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300600', '2936', 'Provitaminas e vitaminas, naturais ou reproduzidas por síntese (incluídos os concentrados naturais), bem como os seus derivados utilizados principalmente como vitaminas, misturados ou não entre si, me', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300700', '300630', 'Preparações opacificantes (contrastantes) para exames radiográficos e reagentes de diagnóstico concebidos para serem administrados ao paciente ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300800', '3002', 'Antissoro, outras frações do sangue, produtos imunológicos modificados, mesmo obtidos por via biotecnológica^ vacinas para medicina humana^ e produtos semelhantes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1300900', '3005', 'Algodão, atadura, esparadrapo, haste flexível ou não, com uma ou ambas extremidades de algodão, gazes, pensos, sinapismos, e outros, impregnados ou recobertos de substâncias farmacêuticas ou acondicio', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301000', '40151100', 'Luvas cirúrgicas e luvas de procedimento ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301000', '40151900', 'Luvas cirúrgicas e luvas de procedimento ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301100', '40141000', 'Preservativo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301200', '901831', 'Seringas, mesmo com agulhas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301300', '9018321', 'Agulhas para seringas ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301400', '39269090', 'Contraceptivos (dispositivos intra-uterinos - DIU) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1301400', '90189099', 'Contraceptivos (dispositivos intra-uterinos - DIU) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1400100', '4823209', 'Filtros descartáveis para coar café ou chá ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1400200', '48236', 'Bandejas, travessas, pratos, xícaras ou chávenas, taças, copos e artigos semelhantes, de papel ou cartão ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1400300', '48131000', 'Papel para cigarro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500100', '3919', 'Lonas plásticas, exceto as para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500100', '3920', 'Lonas plásticas, exceto as para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500100', '3921', 'Lonas plásticas, exceto as para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500200', '3924', 'Artefatos de higiene/toucador de plástico, exceto os para uso na construção ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1500300', '39241000', 'Serviços de mesa e outros utensílios de mesa ou de cozinha, de plástico, inclusive os descartáveis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600100', '4011', 'Pneus novos, dos tipos utilizados em automóveis de passageiros (incluídos os veículos de uso misto - camionetas e os automóveis de corrida) ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600200', '4011', 'Pneus novos, dos tipos utilizados em caminhões (inclusive para os fora-de-estrada), ônibus, aviões, máquinas de terraplenagem, de construção e conservação de estradas, máquinas e tratores agrícolas, p', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600300', '4011', 'Pneus novos para motocicletas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600400', '4011', 'Outros tipos de pneus novos, exceto para bicicletas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600500', '40115000', 'Pneus novos de borracha dos tipos utilizados em bicicletas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600600', '40121', 'Pneus recauchutados ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600700', '401290', 'Protetores de borracha, exceto para bicicletas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600701', '401290', 'Protetores de borracha para bicicletas ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600800', '4013', 'Câmaras de ar de borracha, exceto para bicicletas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1600900', '40132000', 'Câmaras de ar de borracha dos tipos utilizados em bicicletas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700100', '17049010', 'Chocolate branco, em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700200', '18063110', 'Chocolates contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700200', '18063120', 'Chocolates contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700300', '18063210', 'Chocolate em barras, tabletes ou blocos ou no estado líquido, em pasta, em pó, grânulos ou formas semelhantes, em recipientes ou embalagens imediatas de conteúdo inferior ou igual a 2 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700300', '18063220', 'Chocolate em barras, tabletes ou blocos ou no estado líquido, em pasta, em pó, grânulos ou formas semelhantes, em recipientes ou embalagens imediatas de conteúdo inferior ou igual a 2 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700400', '18069000', 'Chocolates e outras preparações alimentícias contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg, excluídos os achocolatados em pó ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700500', '18069000', 'Achocolatados em pó, em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700600', '18069000', 'Caixas de bombons contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700700', '17049090', 'Bombons, inclusive à base de chocolate branco sem cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700800', '18069000', 'Bombons, balas, caramelos, confeitos, pastilhas e outros produtos de confeitaria, contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700900', '210120', 'Bebidas prontas à base de mate ou chá ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1700900', '22029000', 'Bebidas prontas à base de mate ou chá ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701000', '22021000', 'Refrescos e outras bebidas não alcoólicas, exceto os refrigerantes e as demais bebidas de que trata o Anexo IV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701100', '22029000', 'Bebidas prontas à base de café ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701200', '2009', 'Sucos de frutas ou de produtos hortícolas^ mistura de sucos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701300', '20098', 'Água de coco ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701400', '22029000', 'Néctares de frutas e outras bebidas não alcoólicas prontas para beber, exceto isotônicos e energéticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701500', '22029000', 'Bebidas alimentares prontas à base de soja, leite ou cacau, inclusive os produtos denominados bebidas lácteas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701600', '22021000', 'Refrescos e outras bebidas prontas para beber à base de chá e mate ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701700', '04021', 'Leite em pó, blocos ou grânulos, exceto creme de leite ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701700', '04022', 'Leite em pó, blocos ou grânulos, exceto creme de leite ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701700', '04029', 'Leite em pó, blocos ou grânulos, exceto creme de leite ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701800', '19011020', 'Farinha láctea ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1701900', '19011010', 'Leite modificado para alimentação de crianças. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702000', '19011090', 'Preparações para alimentação infantil à base de farinhas, grumos, sêmolas ou amidos e outros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702000', '19011030', 'Preparações para alimentação infantil à base de farinhas, grumos, sêmolas ou amidos e outros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702100', '04011010', 'Leite “longa vida” (UHT - “Ultra High Temperature”), em recipiente de conteúdo inferior ou igual a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702100', '04012010', 'Leite “longa vida” (UHT - “Ultra High Temperature”), em recipiente de conteúdo inferior ou igual a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702101', '04011010', 'Leite “longa vida” (UHT - “Ultra High Temperature”), em recipiente de conteúdo superior a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702101', '04012010', 'Leite “longa vida” (UHT - “Ultra High Temperature”), em recipiente de conteúdo superior a 2 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702200', '04014010', 'Leite em recipiente de conteúdo inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702200', '04015010', 'Leite em recipiente de conteúdo inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702201', '04014010', 'Leite em recipiente de conteúdo superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702201', '04015010', 'Leite em recipiente de conteúdo superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702300', '04011090', 'Leite do tipo pasteurizado em recipiente de conteúdo inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702300', '04012090', 'Leite do tipo pasteurizado em recipiente de conteúdo inferior ou igual a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702301', '04011090', 'Leite do tipo pasteurizado em recipiente de conteúdo superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702301', '04012090', 'Leite do tipo pasteurizado em recipiente de conteúdo superior a 1 litro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '0401402', 'Creme de leite, em recipiente de conteúdo inferior ou igual a 1 kg ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '04022130', 'Creme de leite, em recipiente de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '04022930', 'Creme de leite, em recipiente de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702400', '04029', 'Creme de leite, em recipiente de conteúdo inferior ou igual a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '0401402', 'Creme de leite, em recipiente de conteúdo superior a 1 kg ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '04022130', 'Creme de leite, em recipiente de conteúdo superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '04022930', 'Creme de leite, em recipiente de conteúdo superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702401', '04029', 'Creme de leite, em recipiente de conteúdo superior a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040110', 'Outros cremes de leite, em recipiente de conteúdo inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040120', 'Outros cremes de leite, em recipiente de conteúdo inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040150', 'Outros cremes de leite, em recipiente de conteúdo inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '040210', 'Outros cremes de leite, em recipiente de conteúdo inferior ou igual a 1kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702402', '04022920', 'Outros cremes de leite, em recipiente de conteúdo inferior ou igual a 1kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702500', '04029', 'Leite condensado, em recipiente de conteúdo inferior ou igual a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702501', '04029', 'Leite condensado, em recipiente de conteúdo superior a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702600', '0403', 'Iogurte e leite fermentado em recipiente de conteúdo inferior ou igual a 2 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702601', '0403', 'Iogurte e leite fermentado em recipiente de conteúdo superior a 2 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702700', '04039000', 'Coalhada ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702800', '0406', 'Requeijão e similares, em recipiente de conteúdo inferior ou igual a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702801', '0406', 'Requeijão e similares, em recipiente de conteúdo superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1702900', '0406', 'Queijos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703000', '04051000', 'Manteiga, em embalagem de conteúdo inferior ou igual a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703001', '04051000', 'Manteiga, em embalagem de conteúdo superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703100', '15171000', 'Margarina em recipiente de conteúdo inferior ou igual a 500 g, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703200', '15171000', 'Margarina, em recipiente de conteúdo superior a 500 g e inferior a 1 kg, creme vegetal em recipiente de conteúdo inferior a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703201', '15171000', 'Margarina e creme vegetal, em recipiente de conteúdo de 1 kg. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703202', '151790', 'Outras margarinas e cremes vegetais em recipiente de conteúdo inferior a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703300', '15162000', 'Gorduras e óleos vegetais e respectivas frações, parcial ou totalmente hidrogenados, interesterificados, reesterificados ou elaidinizados, mesmo refinados, mas não preparados de outro modo, em recipie', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703301', '15162000', 'Gorduras e óleos vegetais e respectivas frações, parcial ou totalmente hidrogenados, interesterificados, reesterificados ou elaidinizados, mesmo refinados, mas não preparados de outro modo, em recipie', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703400', '19019020', 'Doces de leite ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703500', '19041000', 'Produtos à base de cereais, obtidos por expansão ou torrefação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703500', '19049000', 'Produtos à base de cereais, obtidos por expansão ou torrefação ', 8)^

COMMIT WORK^

INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703600', '19059090', 'Salgadinhos diversos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703700', '20052000', 'Batata frita, inhame e mandioca fritos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703700', '20059', 'Batata frita, inhame e mandioca fritos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703800', '20081', 'Amendoim e castanhas tipo aperitivo, em embalagem de conteúdo inferior ou igual a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703801', '20081', 'Amendoim e castanhas tipo aperitivo, em embalagem de conteúdo superior a 1 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1703900', '21032010', 'Catchup em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704000', '21039021', 'Condimentos e temperos compostos, incluindo molho de pimenta e outros molhos, em embalagens imediatas de conteúdo inferior ou igual a 1 kg, exceto as embalagens contendo envelopes individualizados (sa', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704000', '21039091', 'Condimentos e temperos compostos, incluindo molho de pimenta e outros molhos, em embalagens imediatas de conteúdo inferior ou igual a 1 kg, exceto as embalagens contendo envelopes individualizados (sa', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704100', '21031010', 'Molhos de soja preparados em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (saches) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704200', '21033010', 'Farinha de mostarda em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704300', '21033021', 'Mostarda preparada em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704400', '21039011', 'Maionese em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704500', '2002', 'Tomates preparados ou conservados, exceto em vinagre ou em ácido acético, em embalagens de conteúdo inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704600', '21032010', 'Molhos de tomate em embalagens imediatas de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704700', '17049090', 'Barra de cereais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704700', '19042000', 'Barra de cereais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704700', '19049000', 'Barra de cereais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704800', '18063120', 'Barra de cereais contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704800', '18063220', 'Barra de cereais contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704800', '18069000', 'Barra de cereais contendo cacau ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704900', '11010010', 'Farinha de trigo, em embalagem inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1704901', '11010010', 'Farinha de trigo, em embalagem superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705000', '11010020', 'Mistura de farinha de trigo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705100', '19012000', 'Misturas e preparações para bolos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705100', '19019090', 'Misturas e preparações para bolos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705200', '19023000', 'Massas alimentícias tipo instantânea ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705300', '1902', 'Massas alimentícias, cozidas ou recheadas (de carne ou de outras substâncias) ou preparadas de outro modo, exceto as massas alimentícias tipo instantânea ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705301', '19024000', 'Cuscuz ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705400', '19021', 'Massas alimentícias não cozidas, nem recheadas, nem preparadas de outro modo', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705500', '190520', 'Pães industrializados, inclusive de especiarias, exceto panetones e bolo de forma ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705600', '19052090', 'Bolo de forma, inclusive de especiarias ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705700', '19052010', 'Panetones ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705800', '190531', 'Biscoitos e bolachas derivados de farinha de trigo^ exceto dos tipos "cream cracker", "água e sal", "maisena", "maria" e outros de consumo popular, não adicionados de cacau, nem recheados, cobertos ou', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1705900', '190531', 'Biscoitos e bolachas não derivados de farinha de trigo^ exceto dos tipos "cream cracker", "água e sal", "maisena" e "maria" e outros de consumo popular, não adicionados de cacau, nem recheados, cobert', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706000', '190531', 'Biscoitos e bolachas dos tipos "cream cracker", "água e sal", "maisena" e "maria" e outros de consumo popular, adicionados de edulcorantes e não adicionados de cacau, nem recheados, cobertos ou amante', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706100', '19059020', 'Biscoitos e bolachas dos tipos "cream cracker", "água e sal", "maisena" e "maria" e outros de consumo popular, não adicionados de cacau, nem recheados, cobertos ou amanteigados, independentemente de s', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706200', '190532', '“Waffles” e “wafers” - sem cobertura ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706300', '190532', '“Waffles” e “wafers”- com cobertura ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706400', '190540', 'Torradas, pão torrado e produtos semelhantes torrados ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706500', '19059010', 'Outros pães de forma ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706600', '19059020', 'Outras bolachas, exceto casquinhas para sorvete ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706700', '19059090', 'Outros pães e bolos industrializados e produtos de panificação não especificados anteriormente^ exceto casquinhas para sorvete e pão francês de até 200 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706800', '19051000', 'Pão denominado knackebrot ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1706900', '19059090', 'Pão francês de até 200 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707000', '190590', 'Demais pães industrializados ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707100', '15079011', 'Óleo de soja refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707200', '1508', 'Óleo de amendoim refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707300', '1509', 'Azeites de oliva, em recipientes com capacidade inferior ou igual a 2 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707301', '1509', 'Azeites de oliva, em recipientes com capacidade superior a 2 litros e inferior ou igual a 5 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707302', '1509', 'Azeites de oliva, em recipientes com capacidade superior a 5 litros ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707400', '15100000', 'Outros óleos e respectivas frações, obtidos exclusivamente a partir de azeitonas, mesmo refinados, mas não quimicamente modificados, e misturas desses óleos ou frações com óleos ou frações da posição ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707500', '15121911', 'Óleo de girassol ou de algodão refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707500', '15122910', 'Óleo de girassol ou de algodão refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707600', '15141', 'Óleo de canola, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707700', '15151900', 'Óleo de linhaça refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707800', '15152910', 'Óleo de milho refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1707900', '15122990', 'Outros óleos refinados, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708000', '15179010', 'Misturas de óleos refinados, para consumo humano, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1511', 'Outros óleos vegetais comestíveis não especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1513', 'Outros óleos vegetais comestíveis não especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1514', 'Outros óleos vegetais comestíveis não especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1515', 'Outros óleos vegetais comestíveis não especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1516', 'Outros óleos vegetais comestíveis não especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708100', '1518', 'Outros óleos vegetais comestíveis não especificados anteriormente ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708200', '16010000', 'Enchidos (embutidos) e produtos semelhantes, de carne, miudezas ou sangue^ exceto salsicha, linguiça e mortadela ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708300', '16010000', 'Salsicha e linguiça ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708400', '16010000', 'Mortadela ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708500', '1602', 'Outras preparações e conservas de carne, miudezas ou de sangue ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708600', '1604', 'Preparações e conservas de peixes^ caviar e seus sucedâneos preparados a partir de ovas de peixe^ exceto sardinha em conserva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708700', '1604', 'Sardinha em conserva ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708800', '1605', 'Crustáceos, moluscos e outros invertebrados aquáticos, preparados ou em conservas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0201', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0202', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0204', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '0206', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '02102000', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '02109900', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1708900', '1502', 'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709000', '0204', 'Carnes de animais das espécies caprina, frescas, refrigeradas ou congeladas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0203', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0206', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0207', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '0209', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '02101', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '02109900', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709100', '1501', 'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709200', '0710', 'Produtos hortícolas, cozidos em água ou vapor, congelados, em embalagens de conteúdo inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709201', '0710', 'Produtos hortícolas, cozidos em água ou vapor, congelados, em embalagens de conteúdo superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709300', '0811', 'Frutas, não cozidas ou cozidas em água ou vapor, congeladas, mesmo adicionadas de açúcar ou de outros edulcorantes, em embalagens de conteúdo inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709301', '0811', 'Frutas, não cozidas ou cozidas em água ou vapor, congeladas, mesmo adicionadas de açúcar ou de outros edulcorantes, em embalagens de conteúdo superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709400', '2001', 'Produtos hortícolas, frutas e outras partes comestíveis de plantas, preparados ou conservados em vinagre ou em ácido acético, em embalagens de conteúdo inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709401', '2001', 'Produtos hortícolas, frutas e outras partes comestíveis de plantas, preparados ou conservados em vinagre ou em ácido acético, em embalagens de conteúdo superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709500', '2004', 'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, congelados, com exceção dos produtos da posição 20.06, em embalagens de conteúdo inferior ou igual a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709501', '2004', 'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, congelados, com exceção dos produtos da posição 20.06, em embalagens de conteúdo superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709600', '2005', 'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, não congelados, com exceção dos produtos da posição 20.06, excluídos batata, inhame e mandioca fritos, em e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709601', '2005', 'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, não congelados, com exceção dos produtos da posição 20.06, excluídos batata, inhame e mandioca fritos, em e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709700', '20060000', 'Produtos hortícolas, frutas, cascas de frutas e outras partes de plantas, conservados com açúcar (passados por calda, glaceados ou cristalizados), em embalagens de conteúdo inferior ou igual a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709701', '20060000', 'Produtos hortícolas, frutas, cascas de frutas e outras partes de plantas, conservados com açúcar (passados por calda, glaceados ou cristalizados), em embalagens de conteúdo superior a 1 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709800', '2007', 'Doces, geléias, “marmelades”, purês e pastas de frutas, obtidos por cozimento, com ou sem adição de açúcar ou de outros edulcorantes, em embalagens de conteúdo inferior ou igual a 1 kg, exceto as emba', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709801', '2007', 'Doces, geléias, “marmelades”, purês e pastas de frutas, obtidos por cozimento, com ou sem adição de açúcar ou de outros edulcorantes, em embalagens de conteúdo superior a 1 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709900', '2008', 'Frutas e outras partes comestíveis de plantas, preparadas ou conservadas de outro modo, com ou sem adição de açúcar ou de outros edulcorantes ou de álcool, não especificadas nem compreendidas em outra', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1709901', '2008', 'Frutas e outras partes comestíveis de plantas, preparadas ou conservadas de outro modo, com ou sem adição de açúcar ou de outros edulcorantes ou de álcool, não especificadas nem compreendidas em outra', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710000', '0901', 'Café torrado e moído, em embalagens de conteúdo inferior ou igual a 2 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710001', '0901', 'Café torrado e moído, em embalagens de conteúdo superior a 2 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710100', '0902', 'Chá, mesmo aromatizado ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710100', '12119090', 'Chá, mesmo aromatizado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710100', '21069090', 'Chá, mesmo aromatizado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710200', '090300', 'Mate ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710300', '17011', 'Açúcar refinado, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710300', '17019900', 'Açúcar refinado, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710301', '17011', 'Açúcar refinado, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710301', '17019900', 'Açúcar refinado, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710302', '17011', 'Açúcar refinado, em embalagens de conteúdo superior a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710302', '17019900', 'Açúcar refinado, em embalagens de conteúdo superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710400', '17019100', 'Açúcar refinado adicionado de aromatizante ou de corante em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou i', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710401', '17019100', 'Açúcar refinado adicionado de aromatizante ou de corante em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710402', '17019100', 'Açúcar refinado adicionado de aromatizante ou de corante em embalagens de conteúdo superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710500', '17011', 'Açúcar cristal, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710500', '17019900', 'Açúcar cristal, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710501', '17011', 'Açúcar cristal, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710501', '17019900', 'Açúcar cristal, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710502', '17011', 'Açúcar cristal, em embalagens de conteúdo superior a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710502', '17019900', 'Açúcar cristal, em embalagens de conteúdo superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710600', '17019100', 'Açúcar cristal adicionado de aromatizante ou de corante, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou i', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710601', '17019100', 'Açúcar cristal adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710602', '170191', 'Açúcar cristal adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 5 kg ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710700', '17011', 'Outros tipos de açúcar, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710700', '17019900', 'Outros tipos de açúcar, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710701', '17011', 'Outros tipos de açúcar, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710701', '17019900', 'Outros tipos de açúcar, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710702', '17011', 'Outros tipos de açúcar, em embalagens de conteúdo superior a 5 kg ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710702', '17019900', 'Outros tipos de açúcar, em embalagens de conteúdo superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710800', '17019100', 'Outros tipos de açúcar adicionado de aromatizante ou de corante, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo infer', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710801', '17019100', 'Outros tipos de açúcar adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710802', '17019100', 'Outros tipos de açúcar adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 5 kg ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710900', '1702', 'Outros açúcares em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710901', '1702', 'Outros açúcares, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1710902', '1702', 'Outros açúcares, em embalagens de conteúdo superior a 5 kg ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711000', '20081900', 'Milho para pipoca (micro-ondas) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711100', '21011', 'Extratos, essências e concentrados de café e preparações à base destes extratos, essências ou concentrados ou à base de café, em embalagens de conteúdo inferior ou igual a 500 g, exceto as preparações', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711200', '210120', 'Extratos, essências e concentrados de chá ou de mate e preparações à base destes extratos, essências ou concentrados ou à base de chá ou de mate, em embalagens de conteúdo inferior ou igual a 500 g, e', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711300', '19019090', 'Preparações em pó para cappuccino e similares, em embalagens de conteúdo inferior ou igual a 500 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711300', '21011190', 'Preparações em pó para cappuccino e similares, em embalagens de conteúdo inferior ou igual a 500 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1711300', '21011200', 'Preparações em pó para cappuccino e similares, em embalagens de conteúdo inferior ou igual a 500 g ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800100', '69111010', 'Artigos para serviço de mesa ou de cozinha, de porcelana, inclusive os descartáveis – estojos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800200', '69111090', 'Artigos para serviço de mesa ou de cozinha, de porcelana, inclusive os descartáveis – avulsos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800300', '69120000', 'Artigos para serviço de mesa ou de cozinha, de cerâmica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1800400', '69120000', 'Velas para filtros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900100', '32131000', 'Tinta guache ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900200', '39162000', 'Espiral - perfil para encadernação, de plástico e outros materiais classificados nas posições 3901 a 3914 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900300', '39261000', 'Artigos de escritório e artigos escolares de plástico e outros materiais classificados nas posições 3901 a 3914, exceto estojos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900400', '42021', 'Maletas e pastas para documentos e de estudante, e artefatos semelhantes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900400', '42029', 'Maletas e pastas para documentos e de estudante, e artefatos semelhantes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900500', '39269090', 'Prancheta de plástico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900600', '48022090', 'Bobina para fax ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900600', '48119090', 'Bobina para fax ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900700', '4802549', 'Papel seda ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900800', '48025499', 'Bobina branca para máquina de calcular ou PDV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900800', '48025799', 'Bobina branca para máquina de calcular ou PDV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900800', '48162000', 'Bobina branca para máquina de calcular ou PDV ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900900', '4802569', 'Cartolina escolar e papel cartão, brancos e coloridos^ recados auto adesivos (LP note)^ papéis de presente, todos cortados em tamanho pronto para uso escolar e doméstico ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900900', '4802579', 'Cartolina escolar e papel cartão, brancos e coloridos^ recados auto adesivos (LP note)^ papéis de presente, todos cortados em tamanho pronto para uso escolar e doméstico ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1900900', '4802589', 'Cartolina escolar e papel cartão, brancos e coloridos^ recados auto adesivos (LP note)^ papéis de presente, todos cortados em tamanho pronto para uso escolar e doméstico ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37031010', 'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37031029', 'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37032000', 'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37039010', 'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '37040000', 'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901000', '48022000', 'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igua', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901100', '48101390', 'Papel almaço ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901200', '48161000', 'Papel hectográfico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901300', '39202019', 'Papel celofane e tipo celofane ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901400', '48062000', 'Papel impermeável ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901500', '48081000', 'Papel crepon ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901600', '48102290', 'Papel fantasia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901700', '4809', 'Papel-carbono, papel autocopiativo (exceto os vendidos em rolos de diâmetro igual ou superior a 60 cm e os vendidos em folhas de formato igual ou superior a 60 cm de altura e igual ou superior a 90 cm', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901700', '4816', 'Papel-carbono, papel autocopiativo (exceto os vendidos em rolos de diâmetro igual ou superior a 60 cm e os vendidos em folhas de formato igual ou superior a 60 cm de altura e igual ou superior a 90 cm', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901800', '4817', 'Envelopes, aerogramas, bilhetes-postais não ilustrados e cartões para correspondência, de papel ou cartão, caixas, sacos e semelhantes, de papel ou cartão, contendo um sortido de artigos para correspo', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1901900', '48201000', 'Livros de registro e de contabilidade, blocos de notas,de encomendas, de recibos, de apontamentos, de papel para cartas, agendas e artigos semelhantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902000', '48202000', 'Cadernos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902100', '48203000', 'Classificadores, capas para encadernação (exceto as capas para livros) e capas de processos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902200', '48204000', 'Formulários em blocos tipo "manifold", mesmo com folhas intercaladas de papel-carbono ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902300', '48205000', 'Álbuns para amostras ou para coleções ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902400', '48209000', 'Pastas para documentos, outros artigos escolares, de escritório ou de papelaria, de papel ou cartão e capas para livros, de papel ou cartão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902500', '49090000', 'Cartões postais impressos ou ilustrados, cartões impressos com votos ou mensagens pessoais, mesmo ilustrados, com ou sem envelopes, guarnições ou aplicações (conhecidos como cartões de expressão socia', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902600', '96081000', 'Canetas esferográficas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902700', '96082000', 'Canetas e marcadores, com ponta de feltro ou com outras pontas porosas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902800', '96083000', 'Canetas tinteiro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1902900', '9608', 'Outras canetas^ sortidos de canetas ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('1903000', '480256', 'Papel cortado "cutsize" (tipo A3, A4, ofício I e II, carta e outros) ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000100', '12119090', 'Henna (embalagens de conteúdo inferior ou igual a 200 g) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000101', '12119090', 'Henna (embalagens de conteúdo superior a 200 g) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000200', '27121000', 'Vaselina ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000300', '28142000', 'Amoníaco em solução aquosa (amônia) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000400', '28470000', 'Peróxido de hidrogênio, em embalagens de conteúdo inferior ou igual a 500 ml ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000500', '30067000', 'Lubrificação íntima ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000600', '3301', 'Óleos essenciais (desterpenados ou não), incluídos os chamados "concretos" ou "absolutos"^ resinóides^ oleorresinas de extração^ soluções concentradas de óleos essenciais em gorduras, em óleos fixos, ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000700', '33030010', 'Perfumes (extratos) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000800', '33030020', 'Águas-de-colônia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2000900', '33041000', 'Produtos de maquilagem para os lábios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001000', '33042010', 'Sombra, delineador, lápis para sobrancelhas e rímel ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001100', '33042090', 'Outros produtos de maquilagem para os olhos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001200', '33043000', 'Preparações para manicuros e pedicuros, incluindo removedores de esmalte à base de acetona ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001300', '33049100', 'Pós, incluídos os compactos, para maquilagem ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001400', '33049910', 'Cremes de beleza, cremes nutritivos e loções tônicas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001500', '33049990', 'Outros produtos de beleza ou de maquilagem preparados e preparações para conservação ou cuidados da pele, exceto as preparações solares e antisolares. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001600', '33049990', 'Preparações solares e antisolares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001700', '33051000', 'Xampus para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001800', '33052000', 'Preparações para ondulação ou alisamento, permanentes, dos cabelos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2001900', '33053000', 'Laquês para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002000', '33059000', 'Outras preparações capilares, incluindo máscaras e finalizadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002100', '33059000', 'Condicionadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002200', '33059000', 'Tintura para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002300', '33061000', 'Dentifrícios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002400', '33062000', 'Fios utilizados para limpar os espaços interdentais (fios dentais) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002500', '33069000', 'Outras preparações para higiene bucal ou dentária ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002600', '33071000', 'Preparações para barbear (antes, durante ou após) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002700', '33072010', 'Desodorantes (desodorizantes) corporais líquidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002800', '33072010', 'Antiperspirantes líquidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2002900', '33072090', 'Outros desodorantes (desodorizantes) corporais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003000', '33072090', 'Outros antiperspirantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003100', '33073000', 'Sais perfumados e outras preparações para banhos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003200', '33079000', 'Outros produtos de perfumaria ou de toucador preparados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003300', '33079000', 'Soluções para lentes de contato ou para olhos artificiais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003400', '34011190', 'Sabões de toucador em barras, pedaços ou figuras moldados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003500', '34011900', 'Outros sabões, produtos e preparações, em barras, pedaços ou figuras moldados, inclusive lenços umedecidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003600', '34012010', 'Sabões de toucador sob outras formas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003700', '34013000', 'Produtos e preparações orgânicos tensoativos para lavagem da pele, na forma de líquido ou de creme, acondicionados para venda a retalho, mesmo contendo sabão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003800', '40149010', 'Bolsa para gelo ou para água quente ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003900', '40149090', 'Chupetas e bicos para mamadeiras e para chupetas, de borracha ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2003901', '39269040', 'Chupetas e bicos para mamadeiras e para chupetas, de silicone ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004000', '42021', 'Malas e maletas de toucador ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004100', '48181000', 'Papel higiênico - folha simples ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004200', '48181000', 'Papel higiênico - folha dupla e tripla ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004300', '48182000', 'Lenços (incluídos os de maquilagem) e toalhas de mão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004400', '48182000', 'Papel toalha de uso institucional do tipo comercializado em rolos igual ou superior a 80 metros e do tipo comercializado em folhas intercaladas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004500', '48183000', 'Toalhas e guardanapos de mesa ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004600', '48189090', 'Toalhas de cozinha (papel toalha de uso doméstico) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004700', '96190000', 'Fraldas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004800', '96190000', 'Tampões higiênicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2004900', '96190000', 'Absorventes higiênicos externos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005000', '56012190', 'Hastes flexíveis (uso não medicinal) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005100', '56039290', 'Sutiã descartável, assemelhados e papel para depilação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005200', '82032090', 'Pinças para sobrancelhas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005300', '82141000', 'Espátulas (artigos de cutelaria) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005400', '82142000', 'Utensílios e sortidos de utensílios de manicuros ou de pedicuros (incluídas as limas para unhas) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005500', '90251110', 'Termômetros, inclusive o digital ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005500', '90251990', 'Termômetros, inclusive o digital ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005600', '96032', 'Escovas e pincéis de barba, escovas para cabelos, para cílios ou para unhas e outras escovas de toucador de pessoas, incluídas as que sejam partes de aparelhos, exceto escovas de dentes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005700', '96032100', 'Escovas de dentes, incluídas as escovas para dentaduras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005800', '96033000', 'Pincéis para aplicação de produtos cosméticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2005900', '96050000', 'Sortidos de viagem, para toucador de pessoas para costura ou para limpeza de calçado ou de roupas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006000', '9615', 'Pentes, travessas para cabelo e artigos semelhantes^ grampos (alfinetes) para cabelo^ pinças (pinceguiches), onduladores, bobes (rolos) e artefatos semelhantes para penteados, e suas partes, exceto os', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006100', '96162000', 'Borlas ou esponjas para pós ou para aplicação de outros cosméticos ou de produtos de toucador ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '39233000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '39249000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '39241000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '40149090', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006200', '70102000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006300', '82121020', 'Aparelhos e lâminas de barbear ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2006300', '82122010', 'Aparelhos e lâminas de barbear ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100100', '73211100', 'Fogões de cozinha de uso doméstico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100100', '73218100', 'Fogões de cozinha de uso doméstico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100100', '73219000', 'Fogões de cozinha de uso doméstico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100200', '84181000', 'Combinações de refrigeradores e congeladores ("freezers"), munidos de portas exteriores separadas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100300', '84182100', 'Refrigeradores do tipo doméstico, de compressão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100400', '84182900', 'Outros refrigeradores do tipo doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100500', '84183000', 'Congeladores ("freezers") horizontais tipo arca, de capacidade não superior a 800 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100600', '84184000', 'Congeladores ("freezers") verticais tipo armário, de capacidade não superior a 900 litros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100700', '841850', 'Outros móveis (arcas, armários, vitrines, balcões e móveis semelhantes) para a conservação e exposição de produtos, que incorporem um equipamento para a produção de frio ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100800', '8418699', 'Mini adega e similares ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2100900', '84186999', 'Máquinas para produção de gelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101000', '84189900', 'Partes dos refrigeradores, congeladores, mini adegas e similares, máquinas para produção de gelo e bebedouros descritos nos itens 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0 e 13.0. ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101100', '842112', 'Secadoras de roupa de uso doméstico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101200', '84211990', 'Outras secadoras de roupas e centrífugas de uso doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101300', '84186931', 'Bebedouros refrigerados para água ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101400', '84219', 'Partes das secadoras de roupas e centrífugas de uso doméstico e dos aparelhos para filtrar ou depurar água, descritos nos itens 11.0 e 12.0 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101500', '84221100', 'Máquinas de lavar louça do tipo doméstico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101500', '84229010', 'Máquinas de lavar louça do tipo doméstico e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101600', '844331', 'Máquinas que executem pelo menos duas das seguintes funções: impressão, cópia ou transmissão de telecópia (fax), capazes de ser conectadas a uma máquina ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101700', '844332', 'Outras impressoras, máquinas copiadoras e telecopiadores (fax), mesmo combinados entre si, capazes de ser conectados a uma máquina automática para processamento de dados ou a uma rede ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101800', '844399', 'Partes e acessórios de máquinas e aparelhos de impressão por meio de blocos, cilindros e outros elementos de impressão da posição 8442^ e de outras impressoras, máquinas copiadoras e telecopiadores (f', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2101900', '84501100', 'Máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico, de capacidade não superior a 10 kg, em peso de roupa seca, inteiramente automáticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102000', '84501200', 'Outras máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico, com secador centrífugo incorporado ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102100', '84501900', 'Outras máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102200', '845020', 'Máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico, de capacidade superior a 10 kg, em peso de roupa seca ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102300', '845090', 'Partes de máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102400', '84512100', 'Máquinas de secar de uso doméstico de capacidade não superior a 10 kg, em peso de roupa seca ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102500', '84512990', 'Outras máquinas de secar de uso doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102600', '845190', 'Partes de máquinas de secar de uso doméstico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102700', '84521000', 'Máquinas de costura de uso doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102800', '847130', 'Máquinas automáticas para processamento de dados, portáteis, de peso não superior a 10 kg, contendo pelo menos uma unidade central de processamento, um teclado e uma tela ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2102900', '84714', 'Outras máquinas automáticas para processamento de dados ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103000', '84715010', 'Unidades de processamento, de pequena capacidade, exceto as das subposições 8471.41 ou 8471.49, podendo conter, no mesmo corpo, um ou dois dos seguintes tipos de unidades: unidade de memória, unidade ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103100', '8471605', 'Unidades de entrada, exceto as classificadas na posição 8471.60.54 ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103200', '84716090', 'Outras unidades de entrada ou de saída, podendo conter, no mesmo corpo, unidades de memória ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103300', '847170', 'Unidades de memória ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103400', '847190', 'Outras máquinas automáticas para processamento de dados e suas unidades^ leitores magnéticos ou ópticos, máquinas para registrar dados em suporte sob forma codificada, e máquinas para processamento de', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103500', '847330', 'Partes e acessórios das máquinas da posição 84.71 ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103600', '85043', 'Outros transformadores, exceto os classificados nas posições 8504.33.00 e 8504.34.00 ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103700', '85044010', 'Carregadores de acumuladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103800', '85044040', 'Equipamentos de alimentação ininterrupta de energia (UPS ou "no break") ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2103900', '85078000', 'Outros acumuladores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104000', '8508', 'Aspiradores ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104100', '8509', 'Aparelhos eletromecânicos de motor elétrico incorporado, de uso doméstico e suas partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104200', '85098010', 'Enceradeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104300', '85161000', 'Chaleiras elétricas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104400', '85164000', 'Ferros elétricos de passar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104500', '85165000', 'Fornos de microondas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104600', '85166000', 'Outros fornos^ fogareiros (incluídas as chapas de cocção), grelhas e assadeiras, exceto os portáteis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104700', '85166000', 'Outros fornos^ fogareiros (incluídas as chapas de cocção), grelhas e assadeiras, portáteis ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104800', '85167100', 'Outros aparelhos eletrotérmicos de uso doméstico – Cafeteiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2104900', '85167200', 'Outros aparelhos eletrotérmicos de uso doméstico - Torradeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105000', '851679', 'Outros aparelhos eletrotérmicos de uso doméstico ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105100', '85169000', 'Partes das chaleiras, ferros, fornos e outros aparelhos eletrotérmicos da posição 85.16, descritos nos itens 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0 e 50.0 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105200', '85171100', 'Aparelhos telefônicos por fio com unidade auscultador- microfone sem fio ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105300', '851712', 'Telefones para redes celulares e para outras redes sem fio, exceto os de uso automotivo ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105400', '8517189', 'Outros aparelhos telefônicos ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105500', '8517625', 'Aparelhos para transmissão ou recepção de voz, imagem ou outros dados em rede com fio, exceto os classificados nas posições 8517.62.51, 8517.62.52 e 8517.62.53 ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105600', '8518', 'Microfones e seus suportes^ altofalantes, mesmo montados nos seus receptáculos, fones de ouvido (auscultadores), mesmo combinados com microfone e conj untos ou sortidos constituídos por um microfone e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105700', '8519', 'Aparelhos de radiodifusão suscetíveis de funcionarem sem fonte externa de energia. Aparelhos de gravação de som^ aparelhos de reprodução de som^ aparelhos de gravação e de reprodução de som^ partes e ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105700', '8522', 'Aparelhos de radiodifusão suscetíveis de funcionarem sem fonte externa de energia. Aparelhos de gravação de som^ aparelhos de reprodução de som^ aparelhos de gravação e de reprodução de som^ partes e ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105700', '85271', 'Aparelhos de radiodifusão suscetíveis de funcionarem sem fonte externa de energia. Aparelhos de gravação de som^ aparelhos de reprodução de som^ aparelhos de gravação e de reprodução de som^ partes e ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105800', '85198190', 'Outros aparelhos de gravação de som^ aparelhos de reprodução de som^ aparelhos de gravação e de reprodução de som^ partes e acessórios^ exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2105900', '85219010', 'Gravador-reprodutor e editor de imagem e som, em discos, por meio magnético, óptico ou optomagnético, exceto de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106000', '85219090', 'Outros aparelhos videofônicos de gravação ou reprodução, mesmo incorporando um receptor de sinais videofônicos, exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106100', '85235110', 'Cartões de memória ("memory cards") ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106200', '85235200', 'Cartões inteligentes ("smart cards") ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106300', '8525802', 'Câmeras fotográficas digitais e câmeras de vídeo e suas partes ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106400', '85279', 'Outros aparelhos receptores para radiodifusão, mesmo combinados num invólucro, com um aparelho de gravação ou de reprodução de som, ou com um relógio, inclusive caixa acústica para Home Theaters class', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106500', '85284929', 'Monitores e projetores que não incorporem aparelhos receptores de televisão, policromáticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106500', '85285920', 'Monitores e projetores que não incorporem aparelhos receptores de televisão, policromáticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106500', '852869', 'Monitores e projetores que não incorporem aparelhos receptores de televisão, policromáticos ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106600', '85285120', 'Outros monitores dos tipos utilizados exclusiva ou principalmente com uma máquina automática para processamento de dados da posição 84.71, policromáticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106700', '85287', 'Aparelhos receptores de televisão, mesmo que incorporem um aparelho receptor de radiodifusão ou um aparelho de gravação ou reprodução de som ou de imagens - Televisores de CRT (tubo de raios catódicos', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106800', '85287', 'Aparelhos receptores de televisão, mesmo que incorporem um aparelho receptor de radiodifusão ou um aparelho de gravação ou reprodução de som ou de imagens - Televisores de LCD (Display de Cristal Líqu', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2106900', '85287', 'Aparelhos receptores de televisão, mesmo que incorporem um aparelho receptor de radiodifusão ou um aparelho de gravação ou reprodução de som ou de imagens - Televisores de Plasma ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107000', '85287', 'Outros aparelhos receptores de televisão não dotados de monitores ou display de vídeo ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107100', '85287', 'Outros aparelhos receptores de televisão não relacionados em outros itens deste anexo ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107200', '900610', 'Câmeras fotográficas dos tipos utilizadas para preparação de clichês ou cilindros de impressão ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107300', '90064000', 'Câmeras fotográficas para filmes de revelação e copiagem instantâneas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107400', '90189050', 'Aparelhos de diatermia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107500', '90191000', 'Aparelhos de massagem ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107600', '90328911', 'Reguladores de voltagem eletrônicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107700', '95045000', 'Consoles e máquinas de jogos de vídeo, exceto os classificados na subposição 9504.30 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107800', '8517621', 'Multiplexadores e concentradores ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2107900', '85176222', 'Centrais automáticas privadas, de capacidade inferior ou igual a 25 ramais ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108000', '85176239', 'Outros aparelhos para comutação ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108100', '8517624', 'Roteadores digitais, em redes com ou sem fio ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108200', '85176262', 'Aparelhos emissores com receptor incorporado de sistema troncalizado ("trunking"), de tecnologia celular ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108300', '8517629', 'Outros aparelhos de recepção, conversão e transmissão ou regeneração de voz, imagens ou outros dados, incluindo os aparelhos de comutação e roteamento ', 7)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108400', '85177021', 'Antenas próprias para telefones celulares portáteis, exceto as telescópicas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108500', '821490', 'Aparelhos ou máquinas de barbear, máquinas de cortar o cabelo ou de tosquiar e aparelhos de depilar, e suas partes ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108500', '8510', 'Aparelhos ou máquinas de barbear, máquinas de cortar o cabelo ou de tosquiar e aparelhos de depilar, e suas partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108600', '84145', 'Ventiladores, exceto os de uso agrícola ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108700', '84145990', 'Ventiladores de uso agrícola ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108800', '84146000', 'Coifas com dimensão horizontal máxima não superior a 120 cm ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2108900', '84149020', 'Partes de ventiladores ou coifas aspirantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109000', '841510', 'Máquinas e aparelhos de ar condicionado contendo um ventilador motorizado e dispositivos próprios para modificar a temperatura e a umidade, incluídos as máquinas e aparelhos em que a umidade não seja ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109000', '84158', 'Máquinas e aparelhos de ar condicionado contendo um ventilador motorizado e dispositivos próprios para modificar a temperatura e a umidade, incluídos as máquinas e aparelhos em que a umidade não seja ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109100', '84151011', 'Aparelhos de ar-condicionado tipo Split System (sistema com elementos separados) com unidade externa e interna ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109200', '84151019', 'Aparelhos de ar-condicionado com capacidade inferior ou igual a 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109300', '84151090', 'Aparelhos de ar-condicionado com capacidade acima de 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109400', '84159010', 'Unidades evaporadoras (internas) de aparelho de ar-condicionado do tipo Split System (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109500', '84159020', 'Unidades condensadoras (externas) de aparelho de ar-condicionado do tipo Split System (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109600', '84212100', 'Aparelhos elétricos para filtrar ou depurar água (purificadores de água refrigerados) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109700', '84243010', 'Lavadora de alta pressão e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109700', '84243090', 'Lavadora de alta pressão e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109700', '84249090', 'Lavadora de alta pressão e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109800', '84672100', 'Furadeiras elétricas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2109900', '85162', 'Aparelhos elétricos para aquecimento de ambientes ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110000', '85163100', 'Secadores de cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110100', '85163200', 'Outros aparelhos para arranjos do cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110200', '8518', 'Microfones e seus suportes^ alto-falantes, mesmo montados nos seus receptáculos, fones de ouvido (auscultadores), mesmo combinados com microfone e conjuntos ou sortidos constituídos por um microfone e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110300', '8527', 'Aparelhos receptores para radiodifusão, mesmo combinados num mesmo invólucro, com um aparelho de gravação ou de reprodução de som, ou com um relógio, exceto os classificados na posição 8527.2 que seja', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110400', '85219090', 'Outros aparelhos videofônicos de gravação ou de reprodução, mesmo incorporando um receptor de sinais videofônicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110500', '84796000', 'Climatizadores de ar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110600', '84159090', 'Outras partes para máquinas e aparelhos de arcondicionado que contenham um ventilador motorizado e dispositivos próprios para modificar a temperatura e a umidade, incluindo as máquinas e aparelhos em ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110700', '85258019', 'Câmeras de televisão e suas partes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110800', '84231000', 'Balanças de uso doméstico ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2110900', '8540', 'Tubos e válvulas, eletrônicos, de cátodo quente, cátodo frio ou fotocátodo (por exemplo, tubos e válvulas, de vácuo, de vapor ou de gás, ampolas retificadoras de vapor de mercúrio, tubos catódicos, tu', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111000', '8517', 'Aparelhos elétricos para telefonia^ outros aparelhos para transmissão ou recepção de voz, imagens ou outros dados, incluídos os aparelhos para comunicação em redes por fio ou redes sem fio (tal como u', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111100', '8517', 'Interfones, seus acessórios, tomadas e "plugs" ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111200', '8529', 'Partes reconhecíveis como exclusiva ou principalmente destinadas aos aparelhos das posições 8525 a 8528^ exceto as de uso automotivo ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111300', '8531', 'Aparelhos elétricos de sinalização acústica ou visual (por exemplo, campainhas, sirenes, quadros indicadores, aparelhos de alarme para proteção contra roubo ou incêndio)^ exceto os de uso automotivo e', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111400', '853110', 'Aparelhos elétricos de alarme, para proteção contra roubo ou incêndio e aparelhos semelhantes, exceto os de uso automotivo ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111500', '85318000', 'Outros aparelhos de sinalização acústica ou visual, exceto os de uso automotivo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111600', '853400', 'Circuitos impressos, exceto os de uso automotivo ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111700', '85414011', 'Diodos emissores de luz (LED), exceto diodos "laser" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111700', '85414021', 'Diodos emissores de luz (LED), exceto diodos "laser" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111700', '85414022', 'Diodos emissores de luz (LED), exceto diodos "laser" ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111800', '85437092', 'Eletrificadores de cercas eletrônicos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2111900', '90303', 'Aparelhos e instrumentos para medida ou controle da tensão, intensidade, resistência ou da potência, sem dispositivo registrador^ exceto os de uso automotivo ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2112000', '903089', 'Analisadores lógicos de circuitos digitais, de espectro de frequência, frequencímetros, fasímetros, e outros instrumentos e aparelhos de controle de grandezas elétricas e detecção ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2112100', '910700', 'Interruptores horários e outros aparelhos que permitam acionar um mecanismo em tempo determinado, munidos de maquinismo de aparelhos de relojoaria ou de motor síncrono ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2112200', '9405', 'Aparelhos de iluminação (incluídos os projetores) e suas partes, não especificados nem compreendidos em outras posições^ anúncios, cartazes ou tabuletas e placas indicadoras luminosos, e artigos semel', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2200100', '2309', 'Ração tipo “pet” para animais domésticos ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300100', '210500', 'Sorvetes de qualquer espécie ', 6)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300200', '1806', 'Preparados para fabricação de sorvete em máquina ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300200', '1901', 'Preparados para fabricação de sorvete em máquina ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2300200', '2106', 'Preparados para fabricação de sorvete em máquina ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400100', '3208', 'Tintas, vernizes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400100', '3209', 'Tintas, vernizes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400100', '3210', 'Tintas, vernizes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400200', '2821', 'Xadrez e pós assemelhados, exceto pigmentos à base de dióxido de titânio classificados na posição 3206.11.19 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400200', '32041700', 'Xadrez e pós assemelhados, exceto pigmentos à base de dióxido de titânio classificados na posição 3206.11.19 ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2400200', '3206', 'Xadrez e pós assemelhados, exceto pigmentos à base de dióxido de titânio classificados na posição 3206.11.19 ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500100', '87021000', 'Veículos automóveis para transporte de 10 pessoas ou mais, incluindo o motorista, com motor de pistão, de ignição por compressão (diesel ou semidiesel), com volume interno de habitáculo, destinado a p', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500200', '87029090', 'Outros veículos automóveis para transporte de 10 pessoas ou mais, incluindo o motorista, com volume interno de habitáculo, destinado a passageiros e motorista, superior a 6 m³, mas inferior a 9 m ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500300', '87032100', 'Automóveis com motor explosão, de cilindrada não superior a 1000 cm³ ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500400', '87032210', 'Automóveis com motor explosão, de cilindrada superior a 1000 cm³, mas não superior a 1500 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500500', '87032290', 'Outros automóveis com motor explosão, de cilindrada superior a 1000 cm³, mas não superior a 1500 cm³, exceto carro celular ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500600', '87032310', 'Automóveis com motor explosão, de cilindrada superior a 1500 cm³, mas não superior a 3000 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500700', '87032390', 'Outros automóveis com motor explosão, de cilindrada superior a 1500 cm³, mas não superior a 3000 cm³, exceto carro celular, carro funerário e automóveis de corrida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500800', '87032410', 'Automóveis com motor explosão, de cilindrada superior a 3000 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro celular, carro funerário e a', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2500900', '87032490', 'Outros automóveis com motor explosão, de cilindrada superior a 3000 cm³, exceto carro celular, carro funerário e automóveis de corrida ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501000', '87033210', 'Automóveis com motor diesel ou semidiesel, de cilindrada superior a 1500 cm³, mas não superior a 2500 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501100', '87033290', 'Outros automóveis com motor diesel ou semidiesel, de cilindrada superior a 1500 cm³, mas não superior a 2500 cm³, exceto ambulância, carro celular e carro funerário ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501200', '87033310', 'Automóveis com motor diesel ou semidiesel, de cilindrada superior a 2500 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro celular e carro ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501300', '87033390', 'Outros automóveis com motor diesel ou semidiesel, de cilindrada superior a 2500 cm³, exceto carro celular e carro funerário ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501400', '87042110', 'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, chassis com motor diesel ou semidiesel e cabina, exceto caminhão de peso em carga máxima superio', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501500', '87042120', 'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor diesel ou semidiesel, com caixa basculante, exceto caminhão de peso em carga máxima su', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501600', '87042130', 'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, frigoríficos ou isotérmicos, com motor diesel ou semidiesel, exceto caminhão de peso em carga má', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501700', '87042190', 'Outros veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor diesel ou semidiesel, exceto carro-forte para transporte de valores e caminhão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501800', '87043110', 'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor a explosão, chassis e cabina, exceto caminhão de peso em carga máxima superior a 3,9 t', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2501900', '87043120', 'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5, exceto caminhão de peso em carga toneladas, com motor explosão, caixa basculante ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2502000', '87043130', 'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, frigoríficos ou isotérmicos com motor explosão, exceto caminhão de peso em carga máxima superior', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2502100', '87043190', 'Outros veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor a explosão, exceto carro-forte para transporte de valores e caminhão de peso em', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2600100', '8711', 'Motocicletas (incluídos os ciclomotores) e outros ciclos equipados com motor auxiliar, mesmo com carro lateral^ carros laterais ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700100', '7009', 'Espelhos de vidro, mesmo emoldurados, exceto os de uso automotivo ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700200', '7013', 'Objetos de vidro para serviço de mesa ou de cozinha ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700300', '70133700', 'Outros copos, exceto de vitrocerâmica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2700400', '70134290', 'Objetos para serviço de mesa (exceto copos) ou de cozinha, exceto de vitrocerâmica ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800100', '33030010', 'Perfumes (extratos) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800200', '33030020', 'Águas-de-colônia ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800300', '33041000', 'Produtos de maquiagem para os lábios ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800400', '33042010', 'Sombra, delineador, lápis para sobrancelhas e rímel ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800500', '33042090', 'Outros produtos de maquiagem para os olhos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800600', '33043000', 'Preparações para manicuros e pedicuros ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800700', '33049100', 'Pós para maquiagem, incluindo os compactos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800800', '33049910', 'Cremes de beleza, cremes nutritivos e loções tônicas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2800900', '33049990', 'Outros produtos de beleza ou de maquiagem preparados e preparações para conservação ou cuidados da pele, exceto as preparações antisolares e os bronzeadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801000', '33049990', 'Preparações antisolares e os bronzeadores ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801100', '33051000', 'Xampus para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801200', '33052000', 'Preparações para ondulação ou alisamento, permanentes, dos cabelos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801300', '33059000', 'Outras preparações capilares ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801400', '33059000', 'Tintura para o cabelo ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801500', '33071000', 'Preparações para barbear (antes, durante ou após) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801600', '33072010', 'Desodorantes corporais e antiperspirantes, líquidos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801700', '33072090', 'Outros desodorantes corporais e antiperspirantes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801800', '33079000', 'Outros produtos de perfumaria ou de toucador preparados ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2801900', '33079000', 'Outras preparações cosméticas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802000', '34011190', 'Sabões de toucador, em barras, pedaços ou figuras moldadas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802100', '34011900', 'Outros sabões, produtos e preparações orgânicos tensoativos, inclusive papel, pastas (ouates), feltros e falsos tecidos, impregnados, revestidos ou recobertos de sabão ou de detergentes ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802200', '34012010', 'Sabões de toucador sob outras formas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802300', '34013000', 'Produtos e preparações orgânicos tensoativos para lavagem da pele, em forma de líquido ou de creme, acondicionados para venda a retalho, mesmo contendo sabão ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802400', '48182000', 'Lenços de papel, incluindo os de desmaquiar ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802500', '82141000', 'Apontadores de lápis para maquiagem ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802600', '82142000', 'Utensílios e sortidos de utensílios de manicuros ou de pedicuros (incluindo as limas para unhas) ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802700', '96032900', 'Escovas e pincéis de barba, escovas para cabelos, para cílios ou para unhas e outras escovas de toucador de pessoas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802800', '96033000', 'Pincéis para aplicação de produtos cosméticos ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2802900', '96161000', 'Vaporizadores de toucador, suas armações e cabeças de armações ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803000', '96162000', 'Borlas ou esponjas para pós ou para aplicação de outros cosméticos ou de produtos de toucador ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803100', '42021', 'Malas e maletas de toucador ', 5)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803200', '9615', 'Pentes, travessas para cabelo e artigos semelhantes^ grampos (alfinetes) para cabelo^ pinças (“pinceguiches”), onduladores, bobs (rolos) e artefatos semelhantes para penteados, e suas partes ', 4)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803300', '39241000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803300', '39249000', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803300', '40149090', 'Mamadeiras ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803400', '40149090', 'Chupetas e bicos para mamadeiras e para chupetas ', 8)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803500', '33', 'Outros produtos cosméticos e de higiene pessoal não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803500', '34', 'Outros produtos cosméticos e de higiene pessoal não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '44', 'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '64', 'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '65', 'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '82', 'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '90', 'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803600', '96', 'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '39', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '42', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '48', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '71', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '83', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '90', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803700', '91', 'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixin', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803800', '61', 'Vestuário e seus acessórios^ calçados, polainas e artefatos semelhantes, e suas partes ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803800', '62', 'Vestuário e seus acessórios^ calçados, polainas e artefatos semelhantes, e suas partes ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803800', '64', 'Vestuário e seus acessórios^ calçados, polainas e artefatos semelhantes, e suas partes ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '42', 'Outros artigos de vestuário em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '52', 'Outros artigos de vestuário em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '55', 'Outros artigos de vestuário em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '58', 'Outros artigos de vestuário em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '63', 'Outros artigos de vestuário em geral, exceto os relacionados no item anterior ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2803900', '65', 'Outros artigos de vestuário em geral, exceto os relacionados no item anterior ', 2)^
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
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804100', '13', 'Produtos das indústrias alimentares e bebidas ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804100', '15', 'Produtos das indústrias alimentares e bebidas ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804100', '23', 'Produtos das indústrias alimentares e bebidas ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804200', '33', 'Produtos destinados à higiene bucal ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '22', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '27', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '28', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '29', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '33', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '34', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '35', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '38', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '39', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '63', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '68', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '73', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '84', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '85', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804300', '96', 'Produtos de limpeza e conservação doméstica ', 2)^
INSERT INTO TAB_CEST (CEST, NCM, DESCRICAO, CLENGTH) VALUES ('2804400', '000000', 'Outros produtos comercializados pelo sistema de marketing direto porta-a-porta a consumidor final não relacionados em outros itens deste anexo ', 6)^

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
            /*INFORMAÃ‡Ã•ES CABEÃ‡ALHO NOTA*/
            T1.EMP_CODIGO,
            t2.ped_exp_uf,
            t2.ped_exp_local_exp,
            t2.ped_exp_local_recinto,
            t4.cli_consfinal,
            /*O TIPO E PARA SER CLIENTE OU FORNECEDOR NO SISTEMA AS NOTAS DE FORNECEDORES SÃƒO CADASTRADOS COMO CLIENTE*/
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
            /*O TIPO DO PEDIDO E PARA SER CLIENTE OU FORNECEDOR NO SISTEMA AS NOTAS DE FORNECEDORES SÃƒO CADASTRADOS COMO CLIENTE*/
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
            /*INFORMAÃ‡Ã•ES DESTINATARIO*/
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
            /*SISTEMA NAO POSSUI SERVIÃ‡OS*/
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
                   VALUES (476, 1, 'S', 805, 'Rejeição: A SEFAZ do destinatário não permite contribuinte Isento de Inscrição Estadual')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (477, 1, 'S', 508, 'Rejeição: CST incompátivel na operação com Não Contribuinte')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (478, 1, 'S', 529, 'Rejeição: CST incompátivel na operação com contribuinte Isento de Inscrição Estadual ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (479, 1, 'S', 600, 'Rejeição: CSOSN incompátivel na operação com Não Contribuinte')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (480, 1, 'S', 663, 'Rejeição: Alíquota do ICMS com valor superior a 4% na operação de saída interestadual com produtos importados')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (481, 1, 'S', 693, 'Rejeição: Alíquota de ICMS superior a definida para a operação interestadual')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (482, 1, 'S', 806, 'Rejeição: Operação com ICMS-ST sem informação do CEST')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (483, 1, 'S', 806, 'Rejeição: NFC-e com grupo de ICMS para UF do destinatário')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (484, 1, 'S', 694, 'Rejeição: Não informado o grupo ICMS para a UF de destino')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (485, 1, 'S', 695, 'Rejeição: Informado indevidamente o grupo de ICMS para UF de destino ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (486, 1, 'S', 697, 'Rejeição: Alíquota interestadual do ICMS com origem diferente do previsto ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (487, 1, 'S', 698, 'Rejeição: Alíquota interestadual do ICMS imcompátivel com as UF envolvidas na operação')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (488, 1, 'S', 699, 'Rejeição: Percentual do ICMS interestadual para a UF de destino difere do previsto para o ano da Data de Emissão')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (489, 1, 'S', 793, 'Rejeição: Valor do ICMS relativo ao Fundo de Combate a Probreza na UF de destino difere do calculado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (245, 1, 'N', 102, 'INUTILIZAÇÃO DE NUMERO HOMOLOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (246, 1, 'N', 103, 'LOTE RECEBIDO COM SUCESSO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (247, 1, 'N', 104, 'LOTE PROCESSADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (248, 1, 'N', 105, 'LOTE EM PROCESSAMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (331, 1, 'S', 276, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO LOCAL DE RETIRADA: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (332, 1, 'S', 277, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO LOCAL DE RETIRADA: DIFERE DA UF DO LOCAL DE RETIRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (333, 1, 'S', 278, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO LOCAL DE ENTRADA: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (334, 1, 'S', 279, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO LOCAL DE ENTREGA: DIFERE DA UF DO LOCAL DE ENTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (335, 1, 'S', 280, 'REJEIÇÃO:CERTIFICADO TRANSMISSOR INVÁLIDO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (336, 1, 'S', 281, 'REJEIÇÃO: CERTIFICADO TRANSMISSOR DATA VALIDADE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (337, 1, 'S', 282, 'REJEIÇÃO: CERTIFICADO TRANSMISSOR SEM CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (338, 1, 'S', 283, 'REJEIÇÃO: CERTIFICADO TRANSMISSOR - ERRO CADEIA DE CERTIFICAÇÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (339, 1, 'S', 284, 'REJEIÇÃO: CERTIFICADO TRANSMISSOR REVOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (340, 1, 'S', 285, 'REJEIÇÃO: CERTIFICADO TRANSMISSOR DIFERE ICP BRASIL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (341, 1, 'S', 286, 'REJEIÇÃO: CERTIFICADO TRANSMISSOR ERRO NO ACESSO A LCR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (342, 1, 'S', 287, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO FG - ISSQN: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (343, 1, 'S', 288, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO FG - TRANSPORTE: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (344, 1, 'S', 289, 'REJEIÇÃO: CÓDIGO DA UF INFORMADA DIVERGE DA UF SOLICITADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (345, 1, 'S', 290, 'REJEIÇÃO: CERTIFICADO ASSINATURA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (346, 1, 'S', 291, 'REJEIÇÃO: CERTIFICADO ASSINATURA DATA VALIDADE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (347, 1, 'S', 292, 'REJEIÇÃO: CERTIFICADO ASSINATURA SEM CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (348, 1, 'S', 293, 'REJEIÇÃO: CERTIFICADO ASSINATURA - ERRO CADEIA DE CERTIFICAÇÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (349, 1, 'S', 294, 'REJEIÇÃO: CERTIFICADO ASSINATURA REVOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (350, 1, 'S', 295, 'REJEIÇÃO: CERTIFICADO ASSINATURA DIFERE ICP-BRASIL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (351, 1, 'S', 296, 'REJEIÇÃO: CERTIFICADO ASSINATURA ERRO NO ACESSO A LCR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (352, 1, 'S', 297, 'REJEIÇÃO: ASSINATURA DIFERE DO CALCULADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (353, 1, 'S', 298, 'REJEIÇÃO: ASSINATURA DIFERE DO PADRAO DO PROJETO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (354, 1, 'S', 299, 'REJEIÇÃO: XML DA AREA DE CABEÇALHO COM CODIFICAÇÃO DIFERENTE DE UTF-8')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (355, 1, 'S', 401, 'REJEIÇÃO: CPF DO REMETENTE INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (356, 1, 'S', 402, 'REJEIÇÃO: XML DA ÁREA DE DADOS COM CODIFICAÇÃO DIFERENTE DE UTF-8')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (357, 1, 'S', 403, 'REJEIÇÃO: O GRUPO DE INFORMAÇÕES DA NF-E AVULSA É DE USO EXCLUSIVO DO FISCO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (358, 1, 'S', 404, 'REJEIÇÃO: USO DE PREFIXO DE NAMESPACE NÃO PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (359, 1, 'S', 405, 'REJEIÇÃO: CÓDIGO DO PAIS DO EMITENTE: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (360, 1, 'S', 406, 'REJEIÇÃO: CÓDIGO DO PAIS DO DESTINATARIO: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (361, 1, 'S', 407, 'REJEIÇÃO: O CPF SÓ PODE SER INFORMADO NO CAMPO EMITENTE PARA A NF-E AVULSA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (362, 1, 'S', 999, 'REJEIÇÃO: ERRO NÃO CATALOGADO (INFORMAR A MENSAGEM DE ERRO CAPTURADO NO TRATAMENTO DA EXEÇÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (363, 1, 'S', 301, 'USO DENEGADO: IRREGULARIDADE FISCAL DO EMITENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (364, 1, 'N', 302, 'USO DENEGADO: IRREGULARIDADE FISCAL DO DESTINATÁRIO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (290, 1, 'S', 235, 'REJEIÇÃO: INSCRIÇÃO SUFRAMA INVÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (291, 1, 'S', 236, 'REJEIÇÃO: CHAVE DE ACESSO COM DIGITO VERIFICADOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (292, 1, 'S', 237, 'REJEIÇÃO: CPF DO DESTINATÁRIO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (293, 1, 'S', 238, 'REJEIÇÃO: CABEÇALHO - VERSÃO SO ARQUIVO XML SUPERIOR A VERSÃO VIGENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (294, 1, 'S', 239, 'REJEIÇÃO: CABEÇALHO - VERSAO DO ARQUIVO XML NÃO SUPORTA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (295, 1, 'S', 240, 'REJEIÇÃO: CANCELAMENTO/INUTILIZAÇÃO - IRREGULARIDADE FISCAL DO EMITENTE ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (296, 1, 'S', 241, 'REJEIÇÃO:  UM NÚMERO DA FAIXA JA FOI  UTILIZADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (297, 1, 'S', 242, 'REJEIÇÃO: CABEÇALHO - FALHA NO SCHEMA XML')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (298, 1, 'S', 243, 'REJEIÇÃO: XML MAL FORMADO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (299, 1, 'S', 244, 'REJEIÇÃO: CNPJ DO CERTIFICADO DIGITAL DIFERE DO CNPJ DA MATRIZ E DO CNPJ DO EMITENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (300, 1, 'S', 245, 'REJEIÇÃO: CNPJ EMITENTE NÃO CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (301, 1, 'S', 246, 'REJEIÇÃO: CNPJ DESTINATARIO NÃO CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (302, 1, 'S', 247, 'REJEIÇÃO:  SIGLA DA UF DO EMITENTE DIVERGE DA UF AUTORIZADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (303, 1, 'S', 248, 'REJEIÇÃO: UF DO RECEBIMENTO DIVERGE DA UF AUTORIZADA ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (304, 1, 'S', 249, 'REJEIÇÃO: UF DA CHAVE DE ACESSO DIVERGE DA UF AUTORIZADORA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (305, 1, 'S', 250, 'REJEIÇÃO: UF DIVERGE DA UF AUTORIZADORA ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (243, 1, 'N', 100, 'AUTORIZADO O USO DA NFE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (244, 1, 'N', 101, 'CANCELAMENTO DE NF-E HOMOLOGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (4, 1, 'S', 409, 'REJEIÇÃO: CAMPO CUF INEXISTENTE NO ELEMENTO NFECABECMSG DO SOAP HEADER')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (5, 1, 'S', 410, 'REJEIÇÃO: UF INFORMADA NO CAMPO CUF NÃO É ATENDIDA PELO WEB SERVICE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (6, 1, 'S', 411, 'REJEIÇÃO: CAMPO VERSÃODADOS INEXISTENTE NO ELEMENTO NFECABECMSG DO SOAP HEADER')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (7, 1, 'S', 420, 'REJEIÇÃO: CANCELAMENTO PARA NF-E JÁ CANCELADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (8, 1, 'S', 450, 'REJEIÇÃO: MODELO DA NF-E DIFERENTE DE 55')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (9, 1, 'S', 451, 'REJEIÇÃO: PROCESSO DE EMISSÃO INFORMADO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (10, 1, 'S', 452, 'REJEIÇÃO: TIPO AUTORIZADOR DO RECIBO DIVERGE DO ORGÃO AUTORIZADOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (11, 1, 'S', 453, 'REJEIÇÃO: ANO DE UTILIZAÇÃO NÃO PODE SER SUPERIOR AO ANO ATUAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (12, 1, 'S', 454, 'REJEIÇÃO: ANO DE UTILIZAÇÃO NÃO PODE SER INFERIOR A 2006')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (13, 1, 'S', 478, 'REJEIÇÃO: LOCAL DA ENTREGA NÃO INFORMADO PARA FATURAMENTO DIRETO DE VEÍCULOS NOVOS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (14, 1, 'S', 502, 'REJEIÇÃO: ERRO NA CHAVE DE ACESSO - CAMPO ID NÃO CORRESPONDE À CONCATENAÇÃO DOS CAMPOS CORRESPONDENTES')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (15, 1, 'S', 503, 'REJEIÇÃO: SÉRIE UTILIZADA FORA DA FAIXA PERMITIDA NO SCAN ( 900-999)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (16, 1, 'S', 504, 'REJEIÇÃO: DATA DE ENTRADA/SAÍDA POSTERIOR AO PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (17, 1, 'S', 505, 'REJEIÇÃO: DATA DE ENTRADA/SAÍDA ANTERIOR AO PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (18, 1, 'S', 506, 'REJEIÇÃO: DATA DE SAÍDA MENOR QUE A DATA DE EMISSÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (19, 1, 'S', 507, 'REJEIÇÃO: O CNPJ DO DESTINATÁRIO/REMENTENTE NÃO DEVE SER INFORMADO EM OPERAÇÃO COM O EXTERIOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (20, 1, 'S', 508, 'REJEIÇÃO: O CNPJ COM O CONTEÚDO NULO SÓ É VÁLIDO EM OPERAÇÃO COM O EXTERIOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (22, 1, 'S', 509, 'REJEIÇÃO: INFORMADO CÓDIGO DE MUNICÍPIO DIFERENTE DE "9999999" PARA OPERAÇÃO COM O EXTERIOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (23, 1, 'S', 510, 'REJEIÇÃO: OPERAÇÃO COM EXTERIOR E CÓDIGO PAÍS DESTINATÁRIO É 1058 (BRASIL) OU NÃO INFORMADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (24, 1, 'S', 511, 'REJEIÇÃO: NÃO É DE OPERAÇÃO COM EXTERIOR E CÓDIGO PAÍS DESTINATÁRIO DIFERE DE 1058 (BRASIL)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (25, 1, 'S', 512, 'REJEIÇÃO: CNPJ DO LOCAL DE RETIRADA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (26, 1, 'S', 513, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO LOCAL DE RETIRADA DEVE SER 9999999 PARA UF RETIRADA = EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (27, 1, 'S', 514, 'REJEIÇÃO: CNPJ DO LOCAL DE ENTREGA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (28, 1, 'S', 515, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO LOCAL DE ENTREGA DEVE SER 9999999 PARA UF ENTREGA = EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (29, 1, 'S', 516, 'REJEIÇÃO: FALHA NO SCHEMA XML - INEXISTE A TAG RAIZ ESPERDA PARA A MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (30, 1, 'S', 518, 'REJEIÇÃO: CFOP DE ENTREGA PARA NF-E DE SAÍDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (31, 1, 'S', 519, 'REJEIÇÃO: CFOP DE SAÍDA PARA NF-E DE ENTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (32, 1, 'S', 520, 'REJEIÇÃO: CFOP DE OPERAÇÃO COM EXTERIOR E UF DESTINATÁRIO DIFERE DE EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (33, 1, 'S', 521, 'REJEIÇÃO: CFOP NÃO É DE OPERAÇÃO COM EXTERIOR E UF DESTINATÁRIO É EX')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (34, 1, 'S', 522, 'REJEIÇÃO: CFOP DE OPERAÇÃO ESTADUAL E UF EMITENTE DIFERE UF DESTINATÁRIO PARA REMETENTE CONTRIBUINTE DO ICMS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (35, 1, 'S', 523, 'REJEIÇÃO: CFOP NÃO É DE OPERAÇÃO ESTADUAL E UF EMITENTE IGUAL A UF DESTINATÁRIO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (36, 1, 'S', 524, 'REJEIÇÃO: CFOP DE OPERAÇÃO COM EXTERIOR E NÃO INFORMADO NCM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (37, 1, 'S', 525, 'REJEIÇÃO: CFOP DE IMPORTAÇÃO E NÃO INFORMADO DADOS DA DI')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (38, 1, 'S', 526, 'REJEIÇÃO: CFOP DE EXPORTAÇÃO E NÃO INFORMADO LOCAL DE EMBARQUE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (39, 1, 'S', 527, 'REJEIÇÃO: OPERAÇÃO DE EXPORTAÇÃO COM INFORMAÇÃO DE ICMS INCOMPATÍVEL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (40, 1, 'S', 528, 'REJEIÇÃO: VALOR DO ICMS DIFERE DO PRODUTO BC E ALÍQUOTA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (41, 1, 'S', 529, 'REJEIÇÃO: NCM DE INFORMAÇÃO OBRIGATÓRIA PARA PRODUTO TRIBUTADO PELO IPI')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (42, 1, 'S', 530, 'REJEIÇÃO: OPERAÇÃO COM TRIBUTAÇÃO DE ISSQN SEM INFORMAR A INSCRIÇÃO MUNICIPAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (43, 1, 'S', 531, 'REJEIÇÃO: TOTAL DA BC ICMS DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (44, 1, 'S', 532, 'REJEIÇÃO: TOTAL DO ICMS DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (45, 1, 'S', 533, 'REJEIÇÃO: TOTAL DA BC ICMS-ST DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (46, 1, 'S', 534, 'REJEIÇÃO: TOTAL DO ICMS-ST DIFERE DO SOMATÓRIO DOS ÍTENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (47, 1, 'S', 535, 'REJEIÇÃO: TOTAL DO FRETE DIFERE DO SOMATÓRIO DOS ÍTENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (48, 1, 'S', 536, 'REJEIÇÃO: TOTAL DO SEGURO DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (49, 1, 'S', 537, 'REJEIÇÃO: TOTAL DO DESCONTO DIFERE DO SOMATÓRIO DOS ÍTENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (50, 1, 'S', 538, 'REJEIÇÃO: TOTAL DO IPI DIFERE DO SOMATÓRIO DOS ÍTENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (51, 1, 'S', 539, 'REJEIÇÃO: DUPLICIDADE DE NF-E, COM DIFERENÇA NA CHAVE DE ACESSO (99999999999999999999999999999999999999999)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (52, 1, 'S', 540, 'REJEIÇÃO: CPF DO LOCAL DE RETIRADA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (53, 1, 'S', 541, 'REJEIÇÃO: CPF DO LOCAL DE ENTREGA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (54, 1, 'S', 542, 'REJEIÇÃO: CNPJ DO TRANSPORTADOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (55, 1, 'S', 543, 'REJEIÇÃO: CPF DO TRANSPORTADOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (56, 1, 'S', 544, 'REJEIÇÃO: IE DO TRANSPORTADOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (57, 1, 'S', 545, 'REJEIÇÃO: FALHA NO SCHEMA XML - VERSÃO INFORMADA NA VERSÃO DADOS DO SOAPHEADER DIVERGE DA VERSÃO DA MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (58, 1, '5', 546, 'REJEIÇÃO: ERRO NA CHAVE DE ACESSO - CAMPO ID - FALTA A LITERAL NFE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (59, 1, 'S', 547, 'REJEIÇÃO: DÍGITO VERIFICADOR DA CHAVE DE ACESSO DA NF-E REFERENCIADA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (60, 1, 'S', 548, 'REJEIÇÃO: CNPJ DA NF REFERENCIADA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (61, 1, 'S', 549, 'REJEIÇÃO: CNPJ DA NF REFERENCIADA DE PRODUTOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (62, 1, 'S', 550, 'REJEIÇÃO: CPF DA NF REFERENCIADA DE PRODUTOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (63, 1, 'S', 551, 'REJEIÇÃO: IE DA NF REFERENCIADA DE PRODUTOR INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (64, 1, 'S', 552, 'REJEIÇÃO: DÍGITO VERIFICADOR DA CHAVE DE ACESSO DO CT-E REFERENCIADO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (65, 1, '5', 553, 'REJEIÇÃO: TIPO AUTORIZADOR DO RECIBO DIVERGE DO ORGÃO AUTORIZADOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (66, 1, 'S', 554, 'REJEIÇÃO: SÉRIE DIFERE DA FAIXA 0-899')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (67, 1, 'S', 555, 'REJEIÇÃO: TIPO AUTORIZADOR DO PROTOCOLO DIVERGE DO ÓRGÃO AUTORIZADOR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (68, 1, '5', 556, 'REJEIÇÃO: JUSTIFICATIVA DE ENTRADA EM CONTINGÊNCIA NÃO DEVE SER INFORMADA PARA TIPO DE EMISSÃO NORMAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (69, 1, 'S', 557, 'REJEIÇÃO: A JUSTIFICATIVA DE ENTRADA EM CONTINGÊNCIA DEVE SER INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (70, 1, 'S', 558, 'REJEIÇÃO: DATA DE ENTRADA EM CONTINGÊNCIA POSTERIOR A DATA DE EMISSÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (71, 1, 'S', 559, 'REJEIÇÃO: UF DO TRANSPORTADOR NÃO INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (72, 1, 'S', 560, 'REJEIÇÃO: CNPJ BASE DO EMITENTE DIFERE DO CNPJ BASE DA PRIMEIRA NF-E DO LOTE RECEBIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (73, 1, 'S', 561, 'REJEIÇÃO: MÊS DE EMISSÃO INFORMADO NA CHAVE DE ACESSO DIFERE DO MÊS DE EMISSÃO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (74, 1, '5', 562, 'REJEIÇÃO: CÓDIGO NUMÉRICO INFORMADO NA CHAVE DE ACESSO DIFERE DO CÓDIGO NUMÉRICO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (75, 1, 'S', 563, 'REJEIÇÃO: JÁ EXISTE PEDIDO DE INUTILIZAÇÃO COM A MESMA FAIXA DE INUTILIZAÇÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (76, 1, 'S', 564, 'REJEIÇÃO: TOTAL DO PRODUTO / SERVIÇO DIFERE DO SOMATÓRIO DOS ÍTENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (77, 1, '5', 565, 'REJEIÇÃO: FALHA NO SCHEMA XML - INEXISTE A TAG RAIZ ESPERADA PARA O LOTE DE NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (78, 1, 'S', 567, 'REJEIÇÃO: FALHA NO SCHEMA XML - VERSÃO INFORMADA NA VERSÃODADOS DO SOAPHEADER DIVERGE DA VERSÃO DO LOTE DE NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (79, 1, 'S', 568, 'REJEIÇÃO: FALHA NO SCHEMA XML - INEXISTE ATRIBUTO VERSÃO NA TAG RAIZ DO LOTE DE NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (80, 1, 'S', 517, 'REJEIÇÃO: FALHA NO SCHEMA XML - INEXISTE ATRIBUTO VERSÃO NA TAG RAIZ DA MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (263, 1, 'S', 208, 'REJEIÇÃO: CNPJ DO DESTINATÁRIO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (264, 1, 'S', 209, 'REJEIÇÃO: IE DO EMITENTE INVÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (265, 1, 'S', 210, 'REJEIÇÃO: IE DO DESTINATÁRIO INVÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (266, 1, 'S', 211, 'REJEIÇÃO: IE DO SUBSTITUTO INVÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (267, 1, 'S', 212, 'REJEIÇÃO: DATA DE EMISSÃO NF-E POSTERIOR A DATA DE RECEBIMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (268, 1, 'S', 213, 'REJEIÇÃO: CNPJ BASE DO EMITENTE DIFERE DO CNPJ BASE DO CERTIFICADO DIGITAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (269, 1, 'S', 214, 'REJEIÇÃO: TAMANHO DA MENSAGEM EXEDEU O LIMITE ESTABELECIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (270, 1, 'S', 215, 'REJEIÇÃO: FALHA NO SCHEMA XML')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (271, 1, 'S', 216, 'REJEIÇÃO: CHAVE DE ACESSO DIFERE DA CADASTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (272, 1, 'S', 217, 'REJEIÇÃO: NF-E NÃO CONSTA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (273, 1, 'S', 218, 'REJEIÇÃO: NF-E JÁ ESTA CANCELADA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (274, 1, 'S', 219, 'REJEIÇÃO: CIRCULAÇÃO DA NF-E VERIFICADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (275, 1, 'S', 220, 'Rejeição: Prazo de Cancelamento Superior ao Previsto na Legislação ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (276, 1, 'S', 221, 'REJEIÇÃO: CONFIRMANDO O RECEBIMENTO DA NF-E E PELO DESTINATÁRIO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (277, 1, 'S', 222, 'REJEIÇÃO: PROTOCOLO DE AUTORIZAÇÃO DE USO DIFERE DO CADASTRO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (278, 1, 'S', 223, 'REJEIÇÃO: CNPJ DO TRANSMISSOR DO LOTE DIFERE DO CNPJ DO TRANSMISSOR DA CONDULTA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (279, 1, 'S', 224, 'REJEIÇÃO: A FAIXA INICIAL É MAIOR QUE A FAIXA FINAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (280, 1, 'S', 225, 'REJEIÇÃO: FALHA NO SCHEMA XML DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (281, 1, 'S', 226, 'REJEIÇÃO: CODIGO DA UF DO EMITENTE DIVERGE DA UF AUTORIZADORA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (365, 1, 'S', 572, 'REJEIÇÃO: ERRO ATRIBUTO ID DO EVENTO NÃO CORRESPONDE A CONCATENAÇÃO DOS CAMPOS ( "ID" + TPEVENTO + CHNFE + NSEQEVENTO )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (366, 1, 'S', 573, 'REJEIÇÃO: DUPLICIDADE DE EVENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (367, 1, 'S', 574, 'REJEIÇÃO: O AUTOR DO EVENTO DIVERGE DO EMISSOR DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (368, 1, 'S', 575, 'REJEIÇÃO: O AUTOR DO EVENTO DIVERGE DO DESTINATÁRIO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (369, 1, 'S', 576, 'REJEIÇÃO: O AUTOR DO EVENTO NÃO É UM ORGÃO AUTORIZADO A GERAR O EVENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (370, 1, 'S', 577, 'REJEIÇÃO: A DATA DO EVENTO NÃO PODE SER MENOR QUE A DATA DE EMISSÃO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (371, 1, 'S', 578, 'REJEIÇÃO: A DATA DO EVENTO NÃO PIODE SER MAIOR QUE A DATA DO PROCESSAMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (372, 1, 'S', 579, 'REJEIÇÃO: A DATA DO EVENTO NÃO PODE SER MENOR QUE A DATA DE AUTORIZAÇÃO PARA NF-E NÃO EMITIDA EM CONTINGENCIA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (373, 1, 'S', 580, 'REJEIÇÃO: O EVENTO EXIGE UMA NF-E AUTORIZADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (374, 1, 'S', 587, 'REJEIÇÃO: USAR SOMENTE O NAMESPACE PADRÃO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (375, 1, 'S', 588, 'REJEIÇÃO: NÃO É PERMITIDA A PRESENÇA DE CARACTERES DE EDIÇÃO NO INÍCIO/FIM DA MENSAGEM OU ENTRE AS TAGS DA MENSAGEM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (376, 1, 'S', 594, 'REJEIÇÃO: O NÚMERO DE SEQUENCIA DO EVENTO INFORMADO É MAIOR QUE O PERMITIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (377, 1, 'S', 595, 'REJEIÇÃO: A VERSÃO DO LEIAUTE DA NF-E UTILIZADA NÃO É MAIS VÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (378, 1, 'S', 596, 'REJEIÇÃO: AMBIENTE DE HOMOLOGAÇÃO INDISPONÍVEL PARA RECEPÇÃO DE NF-E DA VERSÃO 1.10.')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (379, 1, 'S', 597, 'Rejeição: CFOP de Importação e não informado dados de IPI ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (380, 1, 'S', 598, 'REJEIÇÃO: NF-E EMITIDA EM AMBIENTE DE HOMOLOGAÇÃO COM RAZÃO SOCIAL DO DESTINATÁRIO DIFERENTE DA NF-E EMITIDA EM AMBIENTE DE HOMOLOGAÇÃO - SEM VALOR FISCAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (381, 1, 'S', 599, 'Rejeição: CFOP de Importação e não informado dados de II ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (399, 1, 'S', 618, 'Rejeição: Chave de Acesso inválida (modelo diferente de 55 e 65)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (386, 1, 'S', 605, 'REJEIÇÃO: TOTAL DO VSERV DIFERE DO SOMATÓRIO DO VPROD DOS ITENS SUJEITOS AO ISSQN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (382, 1, 'S', 601, 'REJEIÇÃO: TOTAL DO II DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (383, 1, 'S', 602, 'REJEIÇÃO: TOTAL DO PIS DIFERE DO SOMATORIO DOS ITENS SUJEITOS AO ICMS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (384, 1, 'S', 603, 'REJEIÇÃO: TOTAL DO COFINS DIFERE DO SOMATÓRIO DOS ITENS SUJEITO A ICMS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (385, 1, 'S', 604, 'REJEIÇÃO: TOTAL DO VOUTRO DIFERE DO SOMATORIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (400, 1, 'S', 619, 'REJEIÇÃO: CHAVE DE ACESSO INVALIDA ( NUMERO NF = 0 )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (387, 1, 'S', 606, 'REJEIÇÃO: TOTAL DO VBC DO ISS DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (388, 1, 'S', 607, 'REJEIÇÃO: TOTAL DO ISS DIFERE DO SOMATÓRIO DOS ITENS')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (389, 1, 'S', 608, 'REJEIÇÃO: TOTAL DO PIS DIFERE DO SOMATÓRIO DOS ITENS SUJEITOS AO ISSQN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (390, 1, 'S', 609, 'REJEIÇÃO: TOTAL DE COFINS DIFERE DO SOMATÓRIO DOS ITENS SUJEITOS AO ISSQN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (391, 1, 'S', 610, 'REJEIÇÃO: TOTAL DA NF DIFERE DO SOMATÓRIO DOS VALORES COMPOE O VALOR TOTAL DA NF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (392, 1, 'S', 611, 'REJEIÇÃO: CEAN INVALIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (393, 1, 'S', 612, 'REJEIÇÃO: CEANTRIB INVALIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (394, 1, 'S', 613, 'REJEIÇÃO: CHAVE DE ACESSO DIFERE DA EXISTENTE EM BD ( 9999999999999999999999999999 )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (395, 1, 'S', 614, 'REJEIÇÃO: CHAVE DE ACESSO INVALIDA ( CODIGO UF INVALIDO )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (396, 1, 'S', 615, 'REJEIÇÃO: CHAVE DE ACESSO INVALIDA ( ANO< 05 OU ANO MAIOR QUE ANO CORRENTE )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (397, 1, 'S', 616, 'REJEIÇÃO: CHAVE DE ACESSO INVALIDA ( MES <  1 OU MES > 12 )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (398, 1, 'S', 617, 'REJEIÇÃO: CHAVE DE ACESSO INVALIDA ( CNPJ ZERADO OU DIGITO INVALIDO )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (401, 1, 'S', 621, 'REJEIÇÃO: CPF EMITENTE NÃO CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (402, 1, 'S', 622, 'REJEIÇÃO: IE EMITENTE NÃO VINVULADA AO CPF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (403, 1, 'S', 623, 'REJEIÇÃO: CPF DESTINATARIO NÃO CADASTRADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (404, 1, 'S', 624, 'REJEIÇÃO: IE DESTINATÁRIO NÃO VINVULADO AO CPF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (405, 1, 'S', 625, 'REJEIÇÃO: INSCRIÇÃO SUFRAMA DEVE SER INFORMADA NA VENDA COM ISENÇÃO PARA ZFM')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (406, 1, 'S', 626, 'REJEIÇÃO: O CFOP DE OPERAÇÃO ISENTA PARA ZFM DEVE SER 6109 OU 6110')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (446, 1, 'N', 137, 'Nenhum documento localizado para o Destinatário ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (407, 1, 'S', 627, 'REJEIÇÃO: O VALOR DO ICMS DESONERADO DEVE SER INFORMADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (408, 1, 'S', 628, 'REJEIÇÃO: TOTAL DA NF SUPERIOR AO VALOR LIMITE ESTABELECIDO PELA SEFAZ ( LIMITE )')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (409, 1, 'S', 629, 'REJEIÇÃO: VALOR DO PRODUTO DIFERE DO PRODUTO VALOR UNITARIO DE COMERCIALIZAÇÃO E QUANTIDADE COMERCIAL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (410, 1, 'S', 630, 'REJEIÇÃO: VALOR DO PRODUTO DIFERE DO PRODUTO VALOR UNITARIO DE TRIBUTAÇÃO E QUANTIDADE TRIBUTAVEL')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (411, 1, 'S', 635, 'REJEIÇÃO: NF-E COM MESMO NUMERO E SERIE JA TRANSMITIDA E AGUARDANDO PROCESSAMENTO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (249, 1, 'N', 106, 'LOTE NÃO LOCALIZADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (250, 1, 'N', 107, 'SERVIÇO EM OPERAÇÃO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (251, 1, 'N', 108, 'SERVIÇO PARALIZADO MOMENTANEAMENTE(CURTO PRAZO)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (252, 1, 'N', 109, 'SERVIÇO PARALISADO SEM PREVISÃO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (253, 1, 'N', 110, 'USO DENEGADO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (254, 1, 'N', 111, 'CONSULTA CADASTRO COM UMA OCORRÊNCIA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (255, 1, 'N', 112, 'CONSULTA CADASTRO COM MAIS DE UMA OCORRÊNCIA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (256, 1, 'S', 201, 'REJEIÇÃO: O NUMERO MAXIMO DE MANUTENÇAO DE NF E A INUTILIZAR ULTRAPASSOU O LIMITE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (257, 1, 'S', 202, 'REJEIÇÃO: FALHA NO RECONHEÇIMENTO DA AUTORIA OU INTEGRIDADE DO ARQUIVO DIGITAL ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (258, 1, 'S', 203, 'REJEIÇÃO: EMISSOR NÃO HABILITADO PARA EMISSÃO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (259, 1, 'S', 204, 'REJEIÇÃO: DUPLICIDADE DE NF-E ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (260, 1, 'S', 205, 'REJEIÇÃO: NF-E ESTÁ DENEGADA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (261, 1, 'S', 206, 'REJEIÇÃO: NF-E JA ESTÁ INUTILIZADA NA BASE DE DADOS DA SEFAZ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (262, 1, 'S', 207, 'REJEIÇÃO: CNPJ DO EMITENTE INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (282, 1, 'S', 227, 'REJEIÇÃO: ERRO NA CHAVE DE ACESSO - CAMPO ID - FALTA A LITERAL NFE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (283, 1, 'S', 228, 'REJEIÇÃO: DATA DE EMISSÃO MUITO ATRASADA ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (284, 1, 'S', 229, 'REJEIÇÃO: IE DO EMITENTE NÃO INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (285, 1, 'S', 230, 'REJEIÇÃO: IE DO EMITENTE NÃO CADASTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (286, 1, 'S', 231, 'REJEIÇÃO: IE DO EMITENTE NÃO VINCULADA AO CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (287, 1, 'S', 232, 'REJEIÇÃO: IE DO DESTINATARIO NÃO INFORMADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (288, 1, 'S', 233, 'REJEIÇÃO: IE DO DESTINATARIO NÃO CADASTRADA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (289, 1, 'S', 234, 'REJEIÇÃO: IE do DESTINATARIO NÃO VINCULADA AO CNPJ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (306, 1, 'S', 251, 'REJEIÇÃO: UF/MUNICIPIO DESTINATÁRIO NÃO PERTENCE A SUFRAMA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (307, 1, 'S', 252, 'REJEIÇÃO: AMBIENTE INFORMADO DIVERGE DO AMBIENTE DE RECEBIMENTO ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (308, 1, 'S', 253, 'REJEIÇÃO: DIGITO VERIFICADOR DA CHAVE DE ACESSO COMPOSTA INVÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (309, 1, 'S', 254, 'REJEIÇÃO: NF-E REFERENCIADA NÃO INFORMADA PARA NF-E COMPLEMENTAR ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (310, 1, 'S', 255, 'REJEIÇÃO: INFORMADA MAIS DE UMA NF-E REFERENCIADA PARA NF-E COMPLEMENTAR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (311, 1, 'S', 256, 'REJEIÇÃO: UMA NF-E DA FAIXA JA ESTÁ INUTILIZADA NA BASE DE DADOS DA SEFAZ ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (312, 1, 'S', 257, 'REJEIÇÃO: SOLICITANTE NÃO HABILITADO PARA EMISSÃO DA NF-E')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (313, 1, 'S', 258, 'REJEIÇÃO: CNPJ DA CONSULTA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (314, 1, 'S', 259, 'REJEIÇÃO: CNPJ DA CONSULTA NÃO CADASTRADO COMO CONTRIBUINTE NA UF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (315, 1, 'S', 260, 'REJEIÇÃO: IE DA CONSULTA INVÁLIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (316, 1, 'S', 261, 'REJEIÇÃO: IE DA CONSULTA NÃO CADASTRADA COMO CONTRIBUINTE NA UF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (317, 1, 'S', 262, 'REJEIÇÃO: UF NÃO FORNECE CONSULTA POR CPF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (318, 1, 'S', 263, 'REJEIÇÃO: CPF DA CONSULTA INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (319, 1, 'S', 264, 'REJEIÇÃO: CPF DA CONSULTA NÃO CADASTRADO COMO CONTRIBUINTE NA UF')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (320, 1, 'S', 265, 'REJEIÇÃO: SIGLA DA UF DA CONSULTA DIFERE DA UF do WEB SERVICE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (321, 1, 'S', 266, 'REJEIÇÃO: SERIE UTILIZADA NÃO PERMITIDA no WEB SERVICE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (322, 1, 'S', 267, 'Rejeição: Chave de Acesso referenciada inexistente')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (323, 1, 'S', 268, 'REJEIÇÃO: NF-E COMPLEMENTAR REFERENCIA UMA OUTRA NF-E COMPLEMENTAR')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (324, 1, 'S', 269, 'REJEIÇÃO: CNPJ EMITENTE DA NF COMPLEMENTAR DIFERE DO CNPJ DA NF RECEBIDA')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (325, 1, 'S', 270, 'REJEIÇÃO: CÓDIGO MUNIUCÍPIO DO FATO GERADOR DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (326, 1, 'S', 271, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO FATO GERADOR DIFERE DA UF DO EMITENTE')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (327, 1, 'S', 272, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO EMITENTE: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (328, 1, 'S', 273, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO EMITENTE: DIFERE DA UF DO EMITENTE ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (329, 1, 'S', 274, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO DESTINATÁRIO: DIGITO INVÁLIDO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (330, 1, 'S', 275, 'REJEIÇÃO: CÓDIGO MUNICÍPIO DO DESTINATÁRIO: DIFERE DA UF do DESTINATÁRIO')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (412, 1, 'S', 569, 'Rejeição: Data de entrada em contingência muito atrasada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (414, 1, 'S', 571, 'Rejeição: O tpEmis informado diferente de 3 para contingência SCAN')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (413, 1, 'S', 570, 'Rejeição: Tipo de Emissão 3, 6 ou 7 só é válido nascontingências SCAN/SVC ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (415, 1, 'N', 129, 'Lote de Evento Processado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (416, 1, 'N', 135, 'Evento registrado e vinculado a NF-e ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (417, 1, 'N', 136, 'Evento registrado, mas não vinculado a NF-e')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (418, 1, 'S', 489, 'Rejeição: CNPJ informado inválido (DV ou zeros)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (419, 1, 'S', 490, 'Rejeição: CPF informado inválido (DV ou zeros)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (420, 1, 'S', 491, 'Rejeição: O tpEvento informado inválido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (421, 1, 'S', 492, 'Rejeição: O verEvento informado inválido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (422, 1, 'S', 493, 'Rejeição: Evento não atende o Schema XML específico')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (423, 1, 'S', 494, 'Rejeição: Chave de Acesso inexistente ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (424, 1, 'S', 501, 'Rejeição: NF-e autorizada há mais de 30 dias (720 horas) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (425, 1, 'S', 590, 'Rejeição: Informado CST para emissor do Simples Nacional (CRT=1)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (426, 1, 'S', 591, 'Rejeição: Informado CSOSN para emissor que não é doSimples Nacional (CRT diferente de 1) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (427, 1, 'S', 592, 'Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (428, 1, 'N', 150, 'Autorizado o uso da NF-e, autorização fora de prazo')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (429, 1, 'N', 151, 'Cancelamento de NF-e homologado fora de prazo')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (433, 1, 'S', 482, 'Rejeição: AA da Chave de acesso inválida')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (430, 1, 'S', 479, 'Rejeição: Emissor em situação irregular perante o fisco')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (431, 1, 'S', 480, 'Rejeição: CNPJ da Chave de acesso da NF-e informadadiverge do CNPJ do emitente')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (432, 1, 'S', 481, 'Rejeição: UF da Chave de acesso diverge do código da UF informada ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (434, 1, 'S', 483, 'Rejeição: MM da chave de acesso inválido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (435, 1, 'S', 484, 'Rejeição: DPEC com tipo de emissão diferente de “4”(posição 35 da Chave de Acesso) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (436, 1, 'S', 485, 'Rejeição: Número de DPEC já existe no cadastro de DPEC')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (437, 1, 'S', 486, 'Rejeição: DPEC não localizada para o número de registro de DPEC informado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (438, 1, 'S', 487, 'Rejeição: Nenhuma DPEC localizada para a chave de acesso informada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (439, 1, 'S', 488, 'Rejeição: Requisitante de Consulta não tem o mesmo CNPJ base do emissor da DPEC')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (440, 1, 'S', 656, 'Rejeição: Consumo indevido')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (441, 1, 'S', 660, 'Rejeição: CFOP de Combustível e não informado grupode combustível da NF-e ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (442, 1, 'S', 661, 'Rejeição: NF-e já existente para o número da DPEC informada ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (443, 1, 'S', 662, 'Rejeição: Numeração da DPEC está inutilizada na Base de Dados da SEFAZ ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (444, 1, 'N', 128, 'Lote de Evento Processado ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (445, 1, 'S', 642, 'Rejeição: Falha na Consulta do Registro de Passagem, tente novamente após 5 minutos ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (447, 1, 'N', 138, 'Documento localizado para o Destinatário')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (448, 1, 'N', 139, 'Pedido de Download processado ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (449, 1, 'N', 140, 'Download disponibilizado')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (450, 1, 'S', 589, 'Rejeição: Número do NSU informado superior ao maiorNSU da base de dados da SEFAZ ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (451, 1, 'S', 593, 'Rejeição: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (452, 1, 'S', 631, 'Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base do Certificado Digital ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (453, 1, 'S', 632, 'Rejeição: Solicitação fora de prazo, a NF-e não está mais disponível para download')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (454, 1, 'S', 634, 'Rejeição: Destinatário da NF-e não tem o mesmo CNPJraiz do solicitante do download ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (455, 1, 'S', 650, 'Rejeição: Evento de "Ciência da Operação" para NF-eCancelada ou Denegada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (456, 1, 'S', 651, 'Rejeição: Evento de "Desconhecimento da Operação" para NF-e Cancelada ou Denegada ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (457, 1, 'S', 653, 'Rejeição: NF-e Cancelada, arquivo indisponível paradownload ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (458, 1, 'S', 654, 'Rejeição: NF-e Denegada, arquivo indisponível para download ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (459, 1, 'S', 655, 'Rejeição: Evento de Ciência da Operação informado após a manifestação final do destinatário')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (460, 1, 'S', 657, 'Rejeição: Código do Órgão diverge do órgão autorizador')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (461, 1, 'S', 658, 'Rejeição: UF do destinatário da Chave de Acesso diverge da UF autorizadora ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (462, 1, 'S', 633, 'Rejeição: NF-e indisponível para download devido a ausência de Manifestação do Destinatário')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (463, 1, 'S', 678, 'Rejeição: NF referenciada com UF diferente da UF daNF-e complementar')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (464, 1, 'S', 679, 'Rejeição: Modelo da NF-e referenciada diferente de 55')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (465, 1, 'S', 680, 'Rejeição: Duplicidade de NF-e referenciada (Chave de Acesso referenciada mais de uma vez)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (466, 1, 'S', 681, 'Rejeição: Duplicidade de NF Modelo 1 referenciada (CNPJ, Modelo, Série e Número) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (467, 1, 'S', 682, 'Rejeição: Duplicidade de NF de Produtor referenciada (IE, Modelo, Série e Número) ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (468, 1, 'S', 683, 'Rejeição: Modelo do CT-e referenciado diferente de 57')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (469, 1, 'S', 684, 'Rejeição: Duplicidade de Cupom Fiscal referenciado (Modelo, Número e Ordem e COO)')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (470, 1, 'S', 685, 'Rejeição: Total do Valor Aproximado dos Tributos difere do somatório dos itens')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (471, 1, 'S', 686, 'Rejeição: NF Complementar referencia uma NF-e cancelada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (472, 1, 'S', 687, 'Rejeição: NF Complementar referencia uma NF-e denegada')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (473, 1, 'S', 688, 'Rejeição: NF referenciada de Produtor com IE inexistente [nRef: xxx]')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (474, 1, 'S', 689, 'Rejeição: NF referenciada de Produtor com IE não vinculada ao CNPJ/CPF informado [nRef: xxx]')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (475, 1, 'S', 690, 'Rejeição: Pedido de Cancelamento para NF-e com CT-e')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (490, 1, 'S', 798, 'Rejeição: Valor total do ICMS relativo Fundo de Combate a Probreza (FCP) da UF de destino difere do somatório do valor dos itens')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (491, 1, 'S', 799, 'Rejeição: Valor total do ICMS interestadual da UF de destino difere do somatório dos itens ')^
INSERT INTO NFE_MENSAGENS (NFM_REGISTRO, EMP_CODIGO, NFM_REJEICAO, NFM_COD_RETORNO, NFM_DESCRICAO)
                   VALUES (492, 1, 'S', 800, 'Rejeição: Valor total do ICMS interestadual da UF do remetente difere do somatório dos itens ')^

COMMIT WORK^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.442' ,
       VERSAOSISTEMA.DATA   = '01.01.2016'
 where VERSAOSISTEMA.CODIGO = 1^
 
UPDATE CLI0000 SET CLI_INSC = ''  WHERE CLI_PESSOA = 'F'^

UPDATE CLI0000 SET CLI_CONSFINAL = 'S' WHERE CLI_PESSOA = 'F'^


commit work^
