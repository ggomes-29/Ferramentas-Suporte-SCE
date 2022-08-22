# Ferramentas-Suporte-SCE
Repositório do programa ferramentas de auxílio ao suporte da SCE.

VERSÃO 2022.01.27

Na versão 2601.1357, a inicialização e carregamentos foram aprimorados
Menu foi redesenhado, agora conta com menus separados para tarefas do SQL, APPs de reparo e SCECloud
Agora o programa realiza tarefas do SQL Server podendo rodar Scripts (beta)
Todo o processo de criação dos bancos do SQL agora está automatizado, inclusive os Scripts do PocketPDV podem ser rodados pelo programa
  

VERSÃO 2022.01.28

Menus e redirecionamentos aprimorados e ajustados
Foi corrigido um bug de loop problemático na correção de TLS. O aplicativo fechava sozinho ao escolher a opção 7 (TLS).
Edição do caminho do AMG no servidor para poder rodar o app antes de iniciar os bancos. Agora ele reconhece a instalação do AMG mesmo sem ter inicicado os bancos e exibe a informação correta de SERVIDOR/ESTAÇÃO
Ajuste de cores dos menus
Ajuste de menus e explicações dos mesmos
ajuste da tarefa de linker, agora ele executa o linker direto da pasta support em vez do Linker Filial principal
Agora ele identifica qual a versão do SQL está instalada e exibe no menu do SQL
Agora ele faz o attach dos bancos da nfe
Ele agora abre obrigatoriamente o agendador de tarefas do Windows para edição da tarefa do linker
 

VERSÃO 2022.02.02

Criação de menu específico para o PocketPDV.
Desenvolvimento e aprimoramento da inteligência para renomeação e movimentação de arquivos
Aprimoramento de menus e saídas
Aprimoramento da criação de tarefa do Linker SCECloud da inteligência de recorte e renomeação de arquivos entre pastas
 

VERSÃO 2022.02.11

Agora o programa identifica se a instalação feita é Automagazine Clássico ou SCECloud. Lembre-se que antes da atualização do sistema para a 4.4.36, a pasta SCECloud na support não é instalada, o que vai gerar um resultado "incorreto" no programa.
Correção no attach dos bancos. Agora ele roda um script de attach em vez de attachar diretamente. Isso previne possíveis corrupções e falhas na execução;
Correção do problema com o menu de scripts do PocketPDV (opção 3 do menu SQL Server);
Agora o programa apaga as versões inúteis do Linker 2000 instaladas junto da 4.4.25;
Melhorias nos menus do SCECloud e SQL;
Correção do fechamento do programa ao digitar a opção 0 (zero);
Correção no attach dos bancos. Agora ele roda um script de attach em vez de attachar diretamente. Isso previne possíveis corrupções e falhas na execução.
Inclusão de script e de menu para limpeza da pasta audit
Adição de comando que cria tarefa de execução da limpeza a cada 90 dias
Remoção da execução do DesRegistra.bat ao instalar o integracaocloud na primeira vez. Um estudo mais aprofundado será feito para que se meça os impactos do "desregistro" de bibliotecas pelo CMD
 

VERSÃO 2022.02.16.1249

Correção e otimização da inteligência do menu SQL Server. Agora, ele identifica se é 2005 ou 2012 e se o arquivo NFE_Data.mdf foi renomeado para NFE.mdf. 
 

VERSÃO 2022.0308 (canguru)

Mudança na identificação das versões
Correção na grafia de alguns menus;
Correção dos redirecionamentos de menus;
correção do fim da tarefa limpeza da audit;
correção do identificador de versões nos menus;
Diversas melhorias e otimizações no código e carregamento de tarefas. É esperado uma grande melhoria no carregamento e uma redução de até 3s na execução de tarefas como o 'desregistra'
Melhoria na verificação e exclusão de versões
Correção do menu isce que não funcionava em estações. Agora ele verifica se é estação ou servidor e prossegue
Correção de layouts de diversos menus
Correção dos redirecionamentos de estações. Havia uma redundância que resetava o nome do servidor
Correção do registro de variáveis. Agora ele faz toda a verificação no início do código, diminuindo o tempo de carregamento e execução de tarefas
Melhorias na tela de fim de tarefas. Agora ele sabe se é estação ou servidor e não pede pra recolocar o nome do servidor
Melhorias no design e cores dos menus
Melhorias na inteligência de execução de tarefas

VERSAO 2022.1608 (berinjela)

Retirada de menu próprio para Registro e Desregistro de DLLs do integraçãocloud.
Melhorias na confiabilidade do programa
