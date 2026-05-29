# INFORMAÇÕES SOBRE O INVENTO — IPS BIOMECÂNICA
**Live Equipamentos Ltda. | Rodrigo Siqueira**

---

## 1 — TÍTULO

**Sistema Integrado de Análise Biomecânica em Tempo Real para Ambientes de Fitness com Correção Autônoma por Inteligência Artificial, Gestão Inteligente de Equipamentos e Monitoramento Preditivo por Sensores IoT**

---

## 2 — BREVE RELATO

O presente invento refere-se a um sistema computacional integrado, denominado IPS (Intelligent Performance System), que combina visão computacional, inteligência artificial, processamento de linguagem natural e sensores eletrônicos para realizar, em tempo real, as seguintes funções em ambientes de fitness, academias, estúdios de Pilates e centros de reabilitação:

**(a)** Análise biomecânica automatizada do movimento humano durante a prática de exercícios físicos, por meio de câmeras e modelos de estimação de pose corporal com 133 pontos de referência anatômica;

**(b)** Detecção automática de erros de execução e emissão de correções sonoras ao praticante em tempo real, sem intervenção humana;

**(c)** Registro longitudinal e automático de um prontuário biomecânico individual para cada praticante, desde o primeiro treino, com geração de gráficos e relatórios de evolução objetiva;

**(d)** Gestão inteligente do espaço de treino com detecção de ocupação de equipamentos em tempo real e adaptação automática do programa de treino do praticante conforme disponibilidade;

**(e)** Monitoramento contínuo da saúde estrutural dos equipamentos de fitness por meio de sensores IoT, com geração de alertas de manutenção preventiva antes da ocorrência de falha.

O sistema é aplicável ao setor técnico de equipamentos esportivos com tecnologia embarcada, ciências do movimento humano, gestão de estabelecimentos de fitness e manutenção preditiva de ativos físicos.

---

## 3 — ESTADO DA TÉCNICA

### 3.1 Problema a ser resolvido

Os estabelecimentos de fitness enfrentam três problemas estruturais não resolvidos pelas soluções disponíveis no mercado:

**Problema 1 — Invisibilidade do progresso:** O praticante de academia não dispõe de dados objetivos sobre a qualidade de sua execução nem sobre a evolução real do seu corpo ao longo do tempo. O acompanhamento é feito de forma subjetiva pelo instrutor, limitado pela sua capacidade de atenção simultânea a múltiplos alunos. A ausência de evidência objetiva de progresso é apontada como principal causa de cancelamento de matrículas.

**Problema 2 — Execução incorreta sem correção imediata:** Erros posturais durante a prática de exercícios são a principal causa de lesões em academia. O instrutor presente na sala não consegue monitorar todos os alunos em tempo real, especialmente em horários de pico. Nenhum sistema automatizado disponível comercialmente detecta e corrige erros de execução de forma autônoma.

**Problema 3 — Quebra de equipamentos em momentos críticos:** A manutenção de equipamentos de fitness é majoritariamente reativa — o aparelho quebra, o aluno reclama, a manutenção é chamada. Não há sistema que monitore continuamente o estado físico dos equipamentos e gere alertas preventivos baseados em dados reais de desgaste.

### 3.2 Estado da técnica atual

As soluções existentes no mercado podem ser agrupadas em três categorias:

**Softwares de gestão de academia** (ex.: Tecnofit, Acade, Club Software, CloudGym): controlam aspectos operacionais e financeiros do estabelecimento — cobrança, check-in, agendamento de aulas, controle de acesso. Não possuem qualquer funcionalidade de análise de movimento, monitoramento biomecânico ou avaliação de qualidade de execução. São ferramentas de gestão administrativa, não de gestão do corpo do praticante.

**Sistemas de fisioterapia remota** (ex.: Sword Health, Hinge Health, Kaia Health): utilizam câmeras ou sensores para análise de movimento em contexto clínico de reabilitação. São voltados a pacientes com diagnóstico médico específico, operados em ambiente domiciliar, sem integração com equipamentos de fitness, sem gestão de espaço físico e sem monitoramento de múltiplos usuários simultâneos.

**Aplicativos de treino com análise de postura** (ex.: Kemtai, Onyx): utilizam câmeras de celular para avaliação de postura em exercícios isolados, em ambiente domiciliar. Não integram dados de múltiplos usuários, não se conectam a equipamentos físicos de academia e não possuem módulo de gestão de espaço, manutenção preditiva ou prontuário longitudinal.

### 3.3 Inconvenientes do estado da técnica

- Nenhuma solução existente integra análise biomecânica, gestão de espaço, prontuário longitudinal e manutenção preditiva em um único sistema;
- As soluções de análise de movimento existentes são de uso individual e domiciliar, não projetadas para ambientes multiusuário simultâneo;
- Nenhuma solução monitora automaticamente a saúde estrutural dos equipamentos de fitness;
- As soluções clínicas existentes não se aplicam ao contexto de academias e estúdios de fitness;
- Nenhuma solução gera automaticamente um histórico biomecânico longitudinal e individual do praticante sem intervenção manual do instrutor.

---

## 4 — DESCRIÇÃO DO INVENTO

O sistema IPS é composto pelos seguintes blocos funcionais, identificados numericamente conforme o diagrama de blocos a ser apresentado em formato A4:

### Bloco 1 — Módulo de Captura de Imagem (câmeras)

Constituído por uma ou mais câmeras digitais posicionadas estrategicamente no ambiente de fitness, com campo de visão cobrindo as zonas de exercício. As câmeras capturam sequências de imagens em formato de vídeo digital (frames) a uma taxa mínima de 25 quadros por segundo, em resolução mínima de 1280×720 pixels (HD), transmitindo o fluxo de dados ao Módulo de Processamento (Bloco 2) via interface USB, HDMI ou rede local (Ethernet/Wi-Fi). Para implementações em equipamentos próprios Live Equipamentos (linha V12), as câmeras são integradas fisicamente à estrutura do aparelho.

### Bloco 2 — Módulo de Processamento Central (unidade de computação embarcada)

Constituído por uma unidade de processamento com capacidade de execução de redes neurais profundas em tempo real. Em fase de produção, é utilizado o módulo NVIDIA Jetson Orin NX com 16GB de memória LPDDR5, equipado com acelerador de inteligência artificial com capacidade de 100 TOPS (Trillion Operations Per Second). Em fase de desenvolvimento e piloto, pode ser utilizado computador com processador de múltiplos núcleos e unidade de processamento gráfico (GPU) dedicada com suporte a CUDA. O Módulo de Processamento Central recebe os frames do Bloco 1, executa o pipeline de análise e coordena todos os demais blocos do sistema.

### Bloco 3 — Módulo de Estimação de Pose (extrator RTMPose)

Software executado sobre o Módulo de Processamento Central (Bloco 2), responsável por identificar e rastrear, em cada frame recebido, as coordenadas espaciais dos 133 pontos de referência anatômica do corpo humano definidos pelo padrão COCO-WholeBody, incluindo articulações de membros superiores, membros inferiores, coluna vertebral, face e extremidades. O extrator utiliza o modelo RTMPose-l, otimizado para inferência em tempo real, executado via runtime ONNX com aceleração por CUDA. Para cada pessoa detectada no frame, o módulo retorna um vetor de 133 pares de coordenadas normalizadas (x, y) no intervalo [0,1], relativas às dimensões do frame, acrescidas de um índice de confiança por ponto. O módulo suporta detecção e rastreamento simultâneo de múltiplos praticantes no campo de visão.

### Bloco 4 — Módulo de Cálculo de Ângulos Articulares

Software que recebe os vetores de landmarks do Bloco 3 e calcula, para cada praticante identificado, os ângulos articulares em graus formados pelos segmentos corporais nas seguintes articulações: joelho esquerdo e direito (formado pelos segmentos quadril-joelho-tornozelo), quadril esquerdo e direito (formado pelos segmentos ombro-quadril-joelho), tornozelo esquerdo e direito (formado pelos segmentos joelho-tornozelo-pé), cotovelo esquerdo e direito (formado pelos segmentos ombro-cotovelo-pulso). Adicionalmente, o módulo calcula métricas derivadas de postura corporal, incluindo: inclinação do tronco em relação à vertical, altura relativa dos ombros, desvio lateral da cabeça, inclinação do pescoço e índice de assimetria bilateral por articulação. Os cálculos são realizados por meio da fórmula vetorial do ângulo entre segmentos usando produto interno normalizado (arcosseno do produto escalar dos vetores unitários). Os resultados são expressos em graus com precisão de 0,01°.

### Bloco 5 — Motor de Regras Biomecânicas

Software modular que recebe os ângulos calculados pelo Bloco 4 e os compara com limites de referência biomecânica calibrados para cada exercício e para cada praticante individualmente. Para cada exercício, existe um módulo de regras específico que define os critérios de avaliação da execução correta e dos erros mais comuns (ex.: valgo de joelho, inclinação excessiva do tronco, assimetria bilateral acima de limiar). O motor analisa a janela temporal dos últimos N frames para identificar padrões de erro sustentados, evitando alertas por variações momentâneas. Ao detectar erro de execução, o motor gera um objeto de alerta contendo: mensagem de correção em linguagem natural (campo "mensagem"), nível de severidade categorizado em três graus ("alto", "médio", "baixo") e descrição técnica detalhada para registro em log (campo "detalhe"). O motor implementa mecanismo de debounce por chave de alerta, impedindo a repetição do mesmo alerta em intervalo inferior a 4 segundos.

### Bloco 6 — Módulo de Síntese de Voz (Coach Autônomo)

Software que recebe os objetos de alerta gerados pelo Bloco 5 e os converte em saída de áudio em linguagem natural, emitida ao praticante em tempo real por alto-falante integrado ao equipamento ou ao ambiente. A síntese de voz é realizada por motor TTS (Text-to-Speech) offline de alta qualidade, garantindo funcionamento sem dependência de conexão à internet. O módulo opera em thread dedicada, de forma assíncrona ao loop principal de análise, garantindo que a emissão de áudio não interfira na continuidade do processamento de vídeo.

### Bloco 7 — Módulo de Registro de Sessão e Prontuário Biomecânico

Banco de dados e software de persistência que registra, a cada sessão de treino de cada praticante, o conjunto completo de dados gerados pelos Blocos 3, 4 e 5: landmarks por frame, ângulos articulares calculados, alertas emitidos, tempo de execução por exercício e índices de qualidade de execução. Os dados são estruturados por praticante, por sessão e por exercício, formando um histórico longitudinal denominado prontuário biomecânico individual. O módulo gera, a partir deste histórico, relatórios de evolução apresentados ao praticante e ao gestor na forma de gráficos temporais por métrica articular, com identificação automática de marcos de progresso.

### Bloco 8 — Módulo de Gestão de Espaço em Tempo Real (Smart Floor)

Software que, a partir dos dados de detecção de pessoas e bounding boxes fornecidos pelo Bloco 3, identifica quais zonas pré-configuradas da sala de treino estão ocupadas e por qual praticante, em cada instante. O módulo mantém um mapa dinâmico de ocupação dos equipamentos, atualizado a cada ciclo de processamento. Com base nesse mapa e no programa de treino do praticante ativo no sistema, o módulo identifica automaticamente quando o equipamento prescrito está ocupado e propõe ao praticante, por meio do aplicativo móvel (Bloco 10), exercícios alternativos equivalentes com equipamentos disponíveis naquele momento.

### Bloco 9 — Módulo de Sensores IoT (manutenção preditiva)

Conjunto de sensores eletrônicos instalados nos equipamentos de fitness, conectados ao Módulo de Processamento Central (Bloco 2) via protocolo sem fio (Wi-Fi ou Bluetooth Low Energy). Cada unidade sensorial é composta por: microcontrolador ESP32 com conectividade Wi-Fi integrada; sensor acelerômetro triaxial para medição de vibração mecânica; sensor de temperatura (termistor NTC) para monitoramento térmico de motores e correias; sensor de efeito Hall para contagem de ciclos de rotação (reps acumuladas). Os dados coletados são transmitidos continuamente ao Bloco de Processamento Central, onde algoritmos de detecção de anomalia comparam os padrões observados com baselines históricos calibrados por modelo de equipamento. Ao detectar desvios indicativos de desgaste iminente, o módulo gera alertas de manutenção preventiva com antecedência configurável, transmitidos ao Módulo de Dashboard (Bloco 11).

### Bloco 10 — Aplicativo Móvel do Praticante

Interface de software instalada no dispositivo móvel do praticante (smartphone), que exibe em tempo real: o programa de treino do dia com indicação dos equipamentos disponíveis, as substituições propostas pelo Bloco 8, o feedback de qualidade de execução ao final de cada série e o prontuário biomecânico individual com gráficos de evolução histórica. A comunicação com o Módulo de Processamento Central é realizada via WebSocket sobre protocolo HTTP/HTTPS, garantindo baixa latência de atualização.

### Bloco 11 — Dashboard de Gestão em Tempo Real

Interface de software acessível ao gestor do estabelecimento por navegador web, que consolida em tempo real: o mapa de ocupação da sala (Bloco 8), indicadores de presença e circulação dos funcionários, alertas de manutenção preventiva gerados pelo Bloco 9, relatórios de evolução biomecânica agregada por praticante e alertas de estagnação de progresso individual. Para redes com múltiplas unidades, o dashboard apresenta visão centralizada de todas as unidades a partir de uma única interface.

---

## 5 — FUNCIONAMENTO DO INVENTO

O funcionamento do sistema IPS ocorre de forma cíclica e contínua durante o período de operação do estabelecimento, conforme descrito a seguir:

**Etapa 1 — Inicialização e calibração:** Ao iniciar a operação, o Módulo de Processamento Central (Bloco 2) carrega na memória o modelo RTMPose-l e o mapeia para a unidade de aceleração de IA disponível (GPU ou NPU). As câmeras do Bloco 1 são inicializadas e o fluxo de vídeo é estabelecido. Os módulos de sensores IoT (Bloco 9) estabelecem conexão Wi-Fi e iniciam transmissão de dados ao processador central. O sistema carrega os perfis de praticantes ativos e os programas de treino associados.

**Etapa 2 — Captura e extração de pose:** A cada frame capturado pelas câmeras (Bloco 1), o Módulo de Estimação de Pose (Bloco 3) executa o modelo RTMPose-l, identificando todas as pessoas presentes no campo de visão. Para cada pessoa detectada, são retornadas as coordenadas dos 133 pontos anatômicos com seus respectivos índices de confiança. Pontos com confiança inferior a 0,3 (30%) são descartados dos cálculos subsequentes.

**Etapa 3 — Cálculo de ângulos e avaliação biomecânica:** Os landmarks extraídos no Bloco 3 são encaminhados ao Módulo de Cálculo de Ângulos (Bloco 4), que computa os ângulos articulares e as métricas de postura para cada praticante. Os resultados são imediatamente encaminhados ao Motor de Regras Biomecânicas (Bloco 5), que avalia a execução do exercício vigente em relação aos limites de referência. Se um erro de execução é confirmado por N frames consecutivos (limiar configurável, tipicamente N=15 a 30 frames a 30fps), o motor emite um objeto de alerta.

**Etapa 4 — Correção autônoma por voz:** O objeto de alerta gerado pelo Bloco 5 é recebido pelo Módulo de Síntese de Voz (Bloco 6), que converte a mensagem de correção em áudio e o emite ao praticante em tempo real. O sistema verifica o mecanismo de debounce antes da emissão para evitar repetição excessiva da mesma correção.

**Etapa 5 — Registro no prontuário:** Em paralelo aos ciclos de análise, o Módulo de Registro (Bloco 7) persiste continuamente os dados de ângulos, alertas e métricas de execução na base de dados, associados ao praticante identificado e à sessão em curso. Ao término da sessão, o módulo consolida os dados e atualiza o prontuário biomecânico individual com os novos registros.

**Etapa 6 — Gestão de espaço e adaptação de treino:** Simultaneamente ao ciclo de análise biomecânica, o Módulo Smart Floor (Bloco 8) atualiza o mapa de ocupação da sala. Quando detecta que um equipamento prescrito ao praticante está ocupado, o módulo consulta o programa de treino e seleciona um exercício alternativo com equipamento disponível, notificando o praticante via aplicativo móvel (Bloco 10) em tempo real.

**Etapa 7 — Monitoramento preditivo de equipamentos:** De forma contínua e paralela, os sensores do Bloco 9 transmitem leituras de vibração, temperatura e ciclos de uso ao processador central. O algoritmo de detecção de anomalia compara as leituras com o baseline histórico do equipamento. Ao identificar padrão anômalo indicativo de desgaste, o sistema registra um alerta de manutenção preventiva no Dashboard (Bloco 11), informando o gestor com antecedência suficiente para agendar a intervenção sem impacto na operação.

**Etapa 8 — Visualização e gestão:** O Dashboard (Bloco 11) consolida em tempo real todos os dados gerados pelos blocos anteriores, apresentando ao gestor uma visão completa do estado do estabelecimento: praticantes em atividade, ocupação por equipamento, indicadores de funcionários, alertas de manutenção e relatórios de evolução biomecânica individual e agregada.

---

## 6 — VANTAGENS

**1. Primeiro sistema no Brasil a integrar análise biomecânica, gestão de espaço, prontuário longitudinal e manutenção preditiva em um único produto**, eliminando a necessidade de múltiplos sistemas desconexos.

**2. Correção autônoma em tempo real sem dependência de instrutor presente:** o sistema monitora simultaneamente todos os praticantes na sala, sem limitação de atenção humana, garantindo a mesma qualidade de supervisão em horários de baixo e alto movimento.

**3. Prontuário biomecânico objetivo e automático:** o praticante dispõe, pela primeira vez, de evidência científica e objetiva de sua evolução física, gerada automaticamente sem qualquer intervenção manual, o que reduz significativamente a taxa de cancelamento de matrículas.

**4. Compatibilidade com equipamentos já existentes na academia:** o sistema utiliza visão computacional para análise de movimento, não requerendo substituição dos aparelhos presentes no estabelecimento, reduzindo drasticamente o custo e o tempo de implantação.

**5. Gestão inteligente de espaço com zero tempo de espera:** a adaptação automática do treino em função da disponibilidade de equipamentos em tempo real elimina o tempo improdutivo do praticante aguardando aparelhos, aumentando a eficiência do treino e a satisfação do usuário.

**6. Manutenção preditiva com redução de custos operacionais:** a detecção antecipada de desgaste em equipamentos permite agendamento planejado de manutenção, evitando quebras em horários de pico, reduzindo custos de manutenção emergencial e aumentando a vida útil dos ativos.

**7. Escalabilidade para redes e franquias:** o sistema opera com visão centralizada de múltiplas unidades a partir de uma única plataforma, permitindo ao gestor de rede garantir padronização de atendimento e qualidade de operação em todas as filiais simultaneamente.

**8. Funcionamento offline e de baixa latência:** o processamento é executado localmente na unidade embarcada (Bloco 2), sem dependência de conexão à internet para as funções de análise biomecânica e correção de voz, garantindo operação contínua e latência mínima de resposta.

**9. Dados longitudinais para prevenção de lesões:** o histórico biomecânico individual permite identificar padrões de assimetria e sobrecarga articular ao longo do tempo, possibilitando intervenção preventiva pelo instrutor antes do desenvolvimento de lesão por esforço repetitivo.

**10. Modelo de receita recorrente escalável:** a combinação de hardware embarcado nos equipamentos com assinatura de software cria um modelo de receita previsível e recorrente, aplicável tanto a academias individuais quanto a redes com centenas de unidades.

---

*Documento elaborado para fins de pedido de patente junto ao INPI — Instituto Nacional da Propriedade Industrial.*
*Live Equipamentos Ltda. | Todos os direitos reservados.*
