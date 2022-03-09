rem ferramentas de auxílio ao suporte da SCe VERSAO 2022.0308 (canguru)
REM programa desenvolvido por Gabriel Gomes

TITLE FERRAMENTAS SUPORTE SCE --- VERSAO 2022.0308
rem ---------------------------REGISTRO DE VARIAVEIS -------------------------------------------------------------------------

REM ----- REGISTRO DE VERSÃO
SET ver=2022.0308
CLS

REM ------ VERIFICAR SE É SCECLOUD OU NÃO
IF EXIST "C:\SCE\AutoMagazine\Network\4.1\Support\SCECloud\integracaocloud" (SET vers=SCECloud) ELSE (SET vers=Automagazine)
CLS

REM --------------- VERIFICAR SE É SQL 2005 OU 2012
IF EXIST "C:\SQL2012Temp" (SET sql=2012) ELSE (SET sql=2005)
CLS

REM ------ VERIFICAR SE É SERVIDOR OU ESTAÇÃO
IF EXIST "C:\SCE\AutoMagazine\Network" (SET PC=SERVIDOR) ELSE ( SET PC=ESTACAO)
CLS

REM ----- VERIFICAR VERSAO DO PROCESSADOR
IF %PROCESSOR_ARCHITECTURE% == x86 (SET cpu=x86) ELSE (SET cpu=x64)
CLS

REM --------- VERIFICAR ARQUIVO DE PROGRAMAS
IF EXIST "C:\Program Files\SCE\AutoMagazine\Network" (SET APROG=1) ELSE ( SET APROG=0)
CLS

REM -------------------------- FIM DO REGISTRO DE VARIAVEIS ------------------------------------------------------------------------
 
color 64
cls
echo.    //////// 
echo.  //
echo. //
echo. //
echo. ////////
echo.        //
echo.         //
echo.         //
echo. /////////
echo.	 S	                        I
ping localhost -n .100 >nul

cls
echo.    ////////      /////////
echo.  //             //
echo. //             //
echo. //            //
echo. ////////     //
echo.        //   //
echo.         // //
echo.         // //
echo. /////////  /////////
echo.	S            I	         S
ping localhost -n .100 >nul
cls

echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    //////////
echo.	S       I	         S 	           T	 	 

ping localhost -n .100 >nul
cls

echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    //////////
echo.	S     I	      S 	     T	 	    E

ping localhost -n .100 >nul
cls

echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    //////////
echo.	S   I	 S 	     T	 	 E        M

ping localhost -n .100 >nul
cls

echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    //////////
echo.	S   I   S   T	  E     M     A      S 	 

ping localhost -n .100 >nul
cls

echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    ////////// 
echo.	  S   I   S   T     E     M     A      S	 	 	 

ping localhost -n .1  >nul
cls

echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    ////////// 
echo.	  S   I   S   T    E     M     A     S	 	 	 

ping localhost -n .1  >nul
cls
echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    ////////// 
echo.	  S   I   S   T   E   M     A      S	 	 	 

ping localhost -n .1  >nul
cls
echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////
echo.        //   //            // 
echo.         // //            //
echo.         // //           //
echo. /////////  /////////    ////////// 
echo.	  S   I   S   T   E   M   A   S	 	 	 

ping localhost -n .1  >nul

goto lembrete

:lembrete
Echo off
cls
echo.    ////////      /////////   /////////
echo.  //             //          //
echo. //             //          //
echo. //            //           //
echo. ////////     //           /////////                      FERRAMENTAS DE AUXILIO AO SUPORTE
echo.        //   //            //                                      VERSAO %ver%
echo.         // //            //
echo.         // //           // 
echo. /////////  /////////    ////////// 
echo.	  S   I   S   T   E   M   A   S	 	 	 	   
echo.
ECHO.
ping localhost -n 2  >nul                                     
Echo.  Ola %computername% !! 
echo.                                         ANTES DE COMECARMOS...
echo.
COLOR 71
echo.                  .----.
echo.      .---------. ! == !   1 - Nao esqueca de executar como Administrador
echo.      !.-"""""-.! !----!
echo.      !!       !! ! == !   2 - Esse programa so funciona em instalacoes feitas na raiz do Windows (c:/sce) 
echo.      !!       !! !----!
echo.      !'-.....-'! !::::!   3 - Esse programa mexe com registros do Windows portanto, ESPERE a indicacao para fechar a janela
echo.      `"")---(""` !___.!
echo;     /:::::::::::\" _  "   4 - Maximize a janela pra visualizar melhor os menus e seja feliz
echo.    /:::=======:::\`\`\
echo.    `"""""""""""""`  '-'   5 - Nao esqueca de reportar qualquer bug que encontrar
echo. ********************************************************************************************************************************
echo.
PAUSE
IF %APROG%==1 (GOTO erroarqprog) ELSE (goto verif)


:verif
IF %PC%==SERVIDOR ( goto escolhecloud ) ELSE ( goto menuinest )

:escolhecloud

IF %vers%==SCECloud ( goto menuscecloud ) ELSE ( goto menuservamg )

:menuservamg
Echo off
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DO SERVIDOR
COLOR 1f
cls
ECHO. FERRAMENTAS VERSAO: %ver% - %DATE%  %TIME%
Echo. MENU DE TAREFAS  Automagazine Classico -  %PC%  %PROCESSOR_ARCHITECTURE% 
ECHO.
TIME /T
ECHO.
ECHO.                                                             O QUE VOCE DESEJA FAZER?
Echo.                                      =================================================================
Echo.                                        *             1. DES e REGISTRAR  SCRIPT ENGINE              * 
echo.    
echo.                                        *             2. REGISTRAR  SCRIPT .ISCE                     *
echo.
Echo.                                        *             3. LIMPAR CONTIGENCIA                          * 
echo.
Echo.                                        *             4. IMPRIMIR CUPOM UNICO EM CONT                * 
echo.    
echo.                                        *             5. CONFIGURAR FIREWALL                         *
echo.
Echo.                                        *             6. CRIAR ANYDESK                               * 
echo.
Echo.                                        *             7. REGISTRAR TLS 1.2                           * 
echo.    
echo.                                        *             8. PROBLEMA COM IMP EM REDE                    *
echo.
Echo.                                        *             9. CONF QUANT EMITIDA EM CONT                  *
echo.
echo.                                        *             10. TAREFAS SQL SERVER                         *
echo.  
echo.                                        *             11. APPS E TAREFAS                             *
echo.
echo.                                        *             12. Sair                                       *
Echo.                                      ==================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto menuSE
IF %opcao% EQU 2 goto isce
If %opcao% EQU 3 goto limpcont
If %opcao% EQU 4 goto contun
If %opcao% EQU 5 goto firewall
If %opcao% EQU 6 goto anydesk
If %opcao% EQU 7 goto tls
If %opcao% EQU 8 goto corrigeimp
If %opcao% EQU 9 goto quantcont
If %opcao% EQU 10 goto menusql
If %opcao% EQU 11 goto apps
If %opcao% EQU 12 goto Sair
If %opcao% EQU 13 goto matrix
If %opcao% EQU 14 goto sw
If %opcao% equ 0 goto inv

:menuscecloud
Echo off
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DO SERVIDOR
COLOR 1F
cls
ECHO. FERRAMENTAS VERSAO: %ver%  - %DATE%  %TIME%
Echo. MENU DE TAREFAS SCECloud  - %PC%  %PROCESSOR_ARCHITECTURE% 
ECHO.
ECHO.
ECHO.
ECHO.                                                             O QUE VOCE DESEJA FAZER?
Echo.                                      =================================================================
Echo.                                        *             1. DES e REGISTRAR  SCRIPT ENGINE              * 
echo.    
echo.                                        *             2. REGISTRAR  SCRIPT .ISCE                     *
echo.
Echo.                                        *             3. LIMPAR CONTIGENCIA                          * 
echo.
Echo.                                        *             4. IMPRIMIR CUPOM UNICO EM CONT                * 
echo.    
echo.                                        *             5. CONFIGURAR FIREWALL                         *
echo.
Echo.                                        *             6. CRIAR ANYDESK                               * 
echo.
Echo.                                        *             7. REGISTRAR TLS 1.2                           * 
echo.    
echo.                                        *             8. PROBLEMA COM IMP EM REDE                    *
echo.
Echo.                                        *             9. CONF QUANT EMITIDA EM CONT                  *
echo.
echo.                                        *             10. TAREFAS SQL SERVER                         *
echo.  
echo.                                        *             11. APPS E TAREFAS                             *
echo.
echo.                                        *             12. SCECLOUD                                   *
echo.
echo.                                        *             13. Sair                                       *
Echo.                                      ==================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto menuSE
IF %opcao% EQU 2 goto isce
If %opcao% EQU 3 goto limpcont
If %opcao% EQU 4 goto contun
If %opcao% EQU 5 goto firewall
If %opcao% EQU 6 goto anydesk
If %opcao% EQU 7 goto tls
If %opcao% EQU 8 goto corrigeimp
If %opcao% EQU 9 goto quantcont
If %opcao% EQU 10 goto menusql
If %opcao% EQU 11 goto apps
If %opcao% EQU 12 goto scecloud
If %opcao% EQU 13 goto Sair
If %opcao% EQU 14 goto matrix
If %opcao% EQU 16 goto sw
If %opcao% equ 0 goto inv
If %opcao% equ 15 goto inv

:menuinest
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DA ESTACAO
COLOR 71
CLS
ECHO.                    
ECHO.                                                      ANTES DE COMECARMOS... 
ECHO.
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !Automagazine     !  !  !     ! -==----'!      !
ECHO.                                !  !         Estacao !  !  !     !         !      !
ECHO.                                !  !                 !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
echo.
echo.
Set /p servname=         DIGITE O NOME DO SERVIDOR:   
goto menuest

:menuest 
Echo off 
CLS
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DA ESTACAO 
COLOR 9f
cls
ECHO. FERRAMENTAS VERSAO: %ver% - %DATE%  %TIME%  
Echo. %PC%  %PROCESSOR_ARCHITECTURE% 
ECHO. SERVIDOR: %servname% 
ECHO.
ECHO.                                                      O QUE VOCE DESEJA FAZER?
Echo.                                ==================================================================
Echo.                                 *                   1. CRIAR ESTACAO                           * 
echo.    
Echo.                                 *                   2. DES e REGISTRAR  SCRIPT ENGINE          *
echo.
Echo.                                 *                   3. REGISTRAR  SCRIPT .ISCE                 *
echo.
Echo.                                 *                   4. LIMPAR CONTIGENCIA                      * 
echo.
Echo.                                 *                   5. IMPRIMIR CUPOM UNICO EM CONT            * 
echo.    
Echo.                                 *                   6. CONFIGURAR FIREWALL                     *
echo.
Echo.                                 *                   7. ABRIR ANYDESK                           * 
echo.
Echo.                                 *                   8. REGISTRAR TLS 1.2                       * 
echo.    
Echo.                                 *                   9. PROBLEMA COM IMP EM REDE                *
echo.
Echo.                                 *                   10. CONF QUANT EMITIDA EM CONT             *
echo.
Echo.                                 *                   11. PING SERVIDOR - ESTACAO                *
echo.
Echo.                                 *                   12. Sair                                   *
Echo.                                ===================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto criest
IF %opcao% EQU 2 goto menuSE
IF %opcao% EQU 3 goto isce
If %opcao% EQU 4 goto limpcont
If %opcao% EQU 5 goto contun
If %opcao% EQU 6 goto firewall
If %opcao% EQU 7 goto anydesk
If %opcao% EQU 8 goto tls
If %opcao% EQU 9 goto corrigeimp
If %opcao% EQU 10 goto quantcont
If %opcao% EQU 11 goto ping
If %opcao% EQU 12 goto Sair
If %opcao% EQU 15 goto matrix
If %opcao% EQU 16 goto sw
If %opcao% equ 0 goto inv
If %opcao% equ 13 goto inv
If %opcao% equ 14 goto inv

:menuSE
ECHO off
TITLE MODULO DESREGISTRA
COLOR 5F
cls
ECHO.
ECHO.
ECHO.                               VOCE ESTA NO MENU DO %PC% %cpu% 
ECHO.
echo.                ,---------------------------,
echo.                !  /---------------------\  !
echo.                ! !                       ! !
echo.                ! !  CARREGANDO           ! !
echo.                ! !      MODULOS          ! !
echo.                ! !                       ! !
echo.                ! !        AGUARDE...     ! !
echo.                !  \_____________________/  !
echo.                !___________________________!
echo.                ,---\_____     []     _______/------,
echo.              /         /______________\           /!
echo.            /___________________________________ /  ! ___
echo.            !                                   !   !    )
echo.            !  _ _ _                 [-------]  !   !   (
echo.            !  o o o                 [-------]  !  /    _)_
echo.            !__________________________________ !/     /  /
echo.           /-------------------------------------/!    ( )/
echo.         /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO.
ECHO. 
ping localhost -n 2  >nul
CLS
ECHO.
ECHO.
ECHO.                    VOCE JA VAI SER REDIRECIONADO AO MODULO DESREGISTRA
ECHO.
ECHO.                                         AGUARDE...
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
ping localhost -n 2  >nul
GOTO desregSE

:desregSE
rem ---------------------------------------------------------------------------
COLOR 5f
Cls
echo.                ,---------------------------,
echo.                !  /---------------------\  !
echo.                ! !                       ! !
echo.                ! !  DESREGISTRANDO       ! !
echo.                ! !      SCRIPTENGINE     ! !
echo.                ! !                       ! !
echo.                ! !        AGUARDE...     ! !
echo.                !  \_____________________/  !
echo.                !___________________________!
echo.                ,---\_____     []     _______/------,
echo.              /         /______________\           /!
echo.            /___________________________________ /  ! ___
echo.            !                                   !   !    )
echo.            !  _ _ _                 [-------]  !   !   (
echo.            !  o o o                 [-------]  !  /    _)_
echo.            !__________________________________ !/     /  /
echo.           /-------------------------------------/!    ( )/
echo.         /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO.
ECHO.                      SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.
ping localhost -n 2  >nul


@echo off
SET num1=0
SET num2=1 
SET Terminator=4

:loopload1
COLOR b0
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloop1

cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                     ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.     _.........._
ECHO.    ! !        ! !
ECHO.    ! !        ! !
ECHO.    ! !        ! !
ECHO.    ! !________! !
ECHO.    !   ______   !
ECHO.    !  !    ! !  !
ECHO.    !__!____!_!__!
echo.
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                             ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                        _.........._
ECHO.                       ! !        ! !
ECHO.                       ! !        ! !
ECHO.                       ! !        ! !
ECHO.                       ! !________! !
ECHO.                       !   ______   !
ECHO.                       !  !    ! !  !
ECHO.                       !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                     ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                             _.........._
ECHO.                                            ! !        ! !
ECHO.                                            ! !        ! !
ECHO.                                            ! !        ! !
ECHO.                                            ! !________! !
ECHO.                                            !   ______   !
ECHO.                                            !  !    ! !  !
ECHO.                                            !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                               ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                            _.........._
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !________! !
ECHO.                                                           !   ______   !
ECHO.                                                           !  !    ! !  !
ECHO.                                                           !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                   ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                        _.........._
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !________! !
ECHO.                                                                       !   ______   !
ECHO.                                                                       !  !    ! !  !
ECHO.                                                                       !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                         ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                 _.........._
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !________! !
ECHO.                                                                                !   ______   !
ECHO.                                                                                !  !    ! !  !
ECHO.                                                                                !__!____!_!__!
echo.
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                  /////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                           _.........._
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !________! !
ECHO.                                                                                          !   ______   !
ECHO.                                                                                          !  !    ! !  !
ECHO.                                                                                          !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                    ///
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                                          _.........._
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !________! !
ECHO.                                                                                                         !   ______   !
ECHO.                                                                                                         !  !    ! !  !
ECHO.                                                                                                         !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls  
GOTO loopload1

:fimloop1
regsvr32 %windir%\SysWOW64\SCEScriptEngine.dll /u
regsvr32 %windir%\System32\SCEScriptEngine.dll /u 
COLOR DF
cls
ECHO.
ECHO.
ECHO.                                    **SCRIPT ENGINE DESREGISTRADA** 
ECHO.
ECHO.                                         AGUARDE ATE SER REDIRECIONADO AO REGISTRO
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
ECHO.
ping localhost -n 2 >nul
cls
goto regSE

:regSE
COLOR 5F
Cls
echo.                ,---------------------------,
echo.                !  /---------------------\  !
echo.                ! !                       ! !
echo.                ! !     REGISTRANDO...    ! !
echo.                ! !      SCRIPTENGINE     ! !
echo.                ! !                       ! !
echo.                ! !        AGUARDE...     ! !
echo.                !  \_____________________/  !
echo.                !___________________________!
echo.                ,---\_____     []     _______/------,
echo.              /         /______________\           /!
echo.            /___________________________________ /  ! ___
echo.            !                                   !   !    )
echo.            !  _ _ _                 [-------]  !   !   (
echo.            !  o o o                 [-------]  !  /    _)_
echo.            !__________________________________ !/     /  /
echo.           /-------------------------------------/!    ( )/
echo.         /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ping localhost -n 2 >nul

color 1A
cls
ECHO.
ECHO.
ECHO.
ECHO. SUBSTITUINDO DLL ORIGINAL PELA NOVA... 
ECHO.                      b.
ECHO.                      88b
ECHO.                      888b.
ECHO.                      88888b
ECHO.                      888888b.
ECHO.                      8888P"
ECHO.                      P" `8.
ECHO.                          `8.
ECHO.                           `8	
ECHO.                              SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.
ECHO.
ECHO.
ECHO.
ping localhost -n 2 >nul
goto verestSE

:verestSE
IF %PC%==SERVIDOR ( goto copySEserv ) ELSE ( goto copySEest ) 

:copySEserv
XCOPY /Y /G /H /I  C:\SCE\AutoMagazine\Network\4.1\Support\SCEScriptEngine.dll  %windir%\SysWOW64 
XCOPY /Y /G /H /I  C:\SCE\AutoMagazine\Network\4.1\Support\SCEScriptEngine.dll  %windir%\System32 
goto regSEfim

:copySEest
XCOPY /Y /G /H /I  \\%servname%\Network\4.1\Support\SCEScriptEngine.dll  C:\SCE 
MOVE /Y %windir%\SCE\SCEScriptEngine.dll  %windir%\System32 

XCOPY /Y /G /H /I  \\%servname%\Network\4.1\Support\SCEScriptEngine.dll  C:\SCE 
MOVE /Y %windir%\SCE\SCEScriptEngine.dll  %windir%\SysWOW64 
goto regSEfim

:regSEfim
COLOR 5F
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL** 
echo.
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !                 !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !       :-)       !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ping localhost -n 2 >nul
cls

echo off
@echo off
SET num1=0
SET num2=1 
SET Terminator=3

:loopload2
color b0
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloop2

cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                     ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.     _.........._
ECHO.    ! !        ! !
ECHO.    ! !        ! !
ECHO.    ! !        ! !
ECHO.    ! !________! !
ECHO.    !   ______   !
ECHO.    !  !    ! !  !
ECHO.    !__!____!_!__!
echo.
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                             ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                        _.........._
ECHO.                       ! !        ! !
ECHO.                       ! !        ! !
ECHO.                       ! !        ! !
ECHO.                       ! !________! !
ECHO.                       !   ______   !
ECHO.                       !  !    ! !  !
ECHO.                       !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                     ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                             _.........._
ECHO.                                            ! !        ! !
ECHO.                                            ! !        ! !
ECHO.                                            ! !        ! !
ECHO.                                            ! !________! !
ECHO.                                            !   ______   !
ECHO.                                            !  !    ! !  !
ECHO.                                            !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                               ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                            _.........._
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !________! !
ECHO.                                                           !   ______   !
ECHO.                                                           !  !    ! !  !
ECHO.                                                           !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                   ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                        _.........._
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !________! !
ECHO.                                                                       !   ______   !
ECHO.                                                                       !  !    ! !  !
ECHO.                                                                       !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                         ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                 _.........._
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !________! !
ECHO.                                                                                !   ______   !
ECHO.                                                                                !  !    ! !  !
ECHO.                                                                                !__!____!_!__!
echo.
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                  /////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                           _.........._
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !________! !
ECHO.                                                                                          !   ______   !
ECHO.                                                                                          !  !    ! !  !
ECHO.                                                                                          !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                    ///
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                                          _.........._
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !________! !
ECHO.                                                                                                         !   ______   !
ECHO.                                                                                                         !  !    ! !  !
ECHO.                                                                                                         !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls  
GOTO loopload2

:fimloop2

regsvr32 %windir%\SysWOW64\SCEScriptEngine.dll 
regsvr32 %windir%\System32\SCEScriptEngine.dll 

rem -----------------------------------------------------------------------------
color DF
cls
ECHO.
ECHO.
ECHO.                                **ScriptEngine REGISTRADA com sucesso!** 
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
ECHO.
ECHO.
ECHO.
ping localhost -n 2 >nul
cls
goto simnaoest


:simnaoest
rem -----------------------------------------------------------------------------
COLOR 75
TITLE FERRAMENTAS SUPORTE SCE --- FUNCIONOU?
echo.
echo.                ___________________           O SISTEMA ABRE NORMALMENTE?
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !                     1 - SIM
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !                     2 - NAO
echo.                ! !XXXXXXXXXXXXX! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ \___\/
echo.                ___________________      /\
echo.               /###################\    (__)
ECHO.
ECHO.
Set /p opcao= Digite a opcao  
Echo. ------------------------------
If %opcao% EQU 1 goto verif
IF %opcao% EQU 2 goto erroSE
If %opcao% equ 0 goto inv


:erroSE
TITLE FERRAMENTAS SUPORTE SCE --- QUE PENA...
COLOR 4E
cls
ECHO.
ECHO.              _
ECHO.             ! !
ECHO.             ! !===( )   //////     QUE PENA    :(
ECHO.             !_!   !!!  ! o o!             
ECHO.                    !!! ( c  )                  ____
ECHO.                     !!! \= /                  !!   \_
ECHO.                      !!!!!!                   !!     !
ECHO.                      !!!!!!                ...!!__/!-"
ECHO.                      !!!!!!             __!________!__
ECHO.                       !!!             !______________!
ECHO.                       !!!             !! !!      !! !!
ECHO.                       !!!             !! !!      !! !!
ECHO.-----------------------!!!-------------!!-!!------!!-!!-------
ECHO.                       !__)            !! !!      !! !!
ECHO. 
ECHO.
ECHO.                                 VAMOS FAZER O PROCESSO DE FORMA MANUAL
ping localhost -n 5 >nul

CLS
ECHO.
ECHO.
ECHO.
ECHO.
echo.                  COPIE O SCRIPTENGINE DA *SUPPORT* PARA A PASTA *C:\SCE\*  NA ESTACAO/SERVIDOR 
echo.                                    ___      !\________/)
echo.                                   [_,_])    \ /       \!
echo.                                  /!=T=!]     /   __  __\      SEM ISSO, O PROGRAMA NAO VAI FUNCIONAR CORRETAMENTE...
echo.                                  !\ " //     !_  9   p ]\
echo.                                  !!'-'/--.  / /\ =!  \!\ \
echo.                                 /!! c\/p !\ ! '._, @ @)c_)
echo.                                ! !\   !  !   \.__/(_;_)
echo.                                !  .   H  !   !  :  '='!
echo.                                !  !  _H__/  _! :      !
echo.                                 \  '.__  \ /  ;      ';
echo.                                __'-._(_)==.'  :       ;
echo.                               (___!    /-' !   :.     :
echo.                              [.-'  \   !   \   \ ;   :
echo.                             .-'     !  !    !  !   ":
echo.                            /        !==!     \  \  /  \_
echo.                           /         [  !      '._\_ -._ \
echo.                          /           \__)   __.- \ \   )\\
echo.                         /       !        /.'      cc)
echo.                         !        \       !\     !
echo.                         !     .'  '-.    ! \    /
echo.                         !    /     /     / /   /
echo.------------------------------------------------------------------------
ECHO.                         
ping localhost -n 5 >nul

COLOR 75
cls
ECHO.
ECHO.
ECHO.
ECHO.                                                 DLL COPIADA? TECLE ENTER...
ECHO.
echo.                                   ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------,
echo.                                   !1/2! 1 ! 2 ! 3 ! 4 ! 5 ! 6 ! 7 ! 8 ! 9 ! 0 ! + ! ' ! (-    !
echo.                                   !---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----!
echo.                                   ! -)! ! Q ! W ! E ! R ! T ! Y ! U ! I ! O ! P ! ] ! ^ !     !
echo.                                   !-----',--',--',--',--',--',--',--',--',--',--',--',--'!    !
echo.                                   ! Caps ! A ! S ! D ! F ! G ! H ! J ! K ! L ! \ ! [ ! * !    !
echo.                                   !----,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'---'----!
echo.                                   !    ! ( ! Z ! X ! C ! V ! B ! N ! M ! , ! . ! - !          !
echo.                                   !----'-,-',--'--,'---'---'---'---'---'---'-,-'---',--,------!
echo.                                   ! ctrl !  ! alt !                          !altgr !  ! ctrl !
echo.                                   '------'  '-----'--------------------------'------'  '------'
echo.
Pause
goto desregman

:desregman
COLOR 5F
Cls
ECHO.
echo.                ,---------------------------,
echo.                !  /---------------------\  !
echo.                ! !                       ! !
echo.                ! !  DESREGISTRANDO       ! !
echo.                ! !      SCRIPTENGINE     ! !
echo.                ! !                       ! !
echo.                ! !        AGUARDE...     ! !
echo.                !  \_____________________/  !
echo.                !___________________________!
echo.                ,---\_____     []     _______/------,
echo.              /         /______________\           /!
echo.            /___________________________________ /  ! ___
echo.            !                                   !   !    )
echo.            !  _ _ _                 [-------]  !   !   (
echo.            !  o o o                 [-------]  !  /    _)_
echo.            !__________________________________ !/     /  /
echo.           /-------------------------------------/!   ( )/
echo.         /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO.
ECHO. 
ECHO.                   SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.
ping localhost -n 2 >nul

regsvr32 %windir%\SysWOW64\SCEScriptEngine.dll /u
regsvr32 %windir%\System32\SCEScriptEngine.dll /u

rem ------------------------------------------------------------------------------------
COLOR DF
cls
ECHO.
ECHO.
ECHO.                                    **SCRIPT ENGINE DESREGISTRADA** 
ECHO.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
ECHO.
ping localhost -n 2 >nul
cls
goto reesman

:reesman
color 90
echo.
echo.
ECHO. SUBSTITUINDO DLL ORIGINAL PELA NOVA... 
ECHO.                      b.
ECHO.                      88b
ECHO.                      888b.
ECHO.                      88888b
ECHO.                      888888b.
ECHO.                      8888P"
ECHO.                      P" `8.
ECHO.                          `8.
ECHO.                           `8	
ECHO.                              SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.

XCOPY /Y /G /H /I  C:\SCE\SCEScriptEngine.dll  %windir%\SysWOW64
XCOPY /Y /G /H /I  C:\SCE\SCEScriptEngine.dll  %windir%\System32
ping localhost -n 2  >nul

CLS
COLOR 5F
ECHO.                                      **REGISTRANDO DLL** 
echo.
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !                 !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !       :-)       !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ping localhost -n 3  >nul

cls

echo off
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:loopload3
color b0
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloop3

cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                     ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.     _.........._
ECHO.    ! !        ! !
ECHO.    ! !        ! !
ECHO.    ! !        ! !
ECHO.    ! !________! !
ECHO.    !   ______   !
ECHO.    !  !    ! !  !
ECHO.    !__!____!_!__!
echo.
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                             ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                        _.........._
ECHO.                       ! !        ! !
ECHO.                       ! !        ! !
ECHO.                       ! !        ! !
ECHO.                       ! !________! !
ECHO.                       !   ______   !
ECHO.                       !  !    ! !  !
ECHO.                       !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                     ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                             _.........._
ECHO.                                            ! !        ! !
ECHO.                                            ! !        ! !
ECHO.                                            ! !        ! !
ECHO.                                            ! !________! !
ECHO.                                            !   ______   !
ECHO.                                            !  !    ! !  !
ECHO.                                            !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                               ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                            _.........._
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !        ! !
ECHO.                                                           ! !________! !
ECHO.                                                           !   ______   !
ECHO.                                                           !  !    ! !  !
ECHO.                                                           !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                   ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                        _.........._
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !        ! !
ECHO.                                                                       ! !________! !
ECHO.                                                                       !   ______   !
ECHO.                                                                       !  !    ! !  !
ECHO.                                                                       !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                         ////////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                 _.........._
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !        ! !
ECHO.                                                                                ! !________! !
ECHO.                                                                                !   ______   !
ECHO.                                                                                !  !    ! !  !
ECHO.                                                                                !__!____!_!__!
echo.
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                  /////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                           _.........._
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !        ! !
ECHO.                                                                                          ! !________! !
ECHO.                                                                                          !   ______   !
ECHO.                                                                                          !  !    ! !  !
ECHO.                                                                                          !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls
echo.
echo.                                                        AGUARDE
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                    ///
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
ECHO.                                                                                                          _.........._
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !        ! !
ECHO.                                                                                                         ! !________! !
ECHO.                                                                                                         !   ______   !
ECHO.                                                                                                         !  !    ! !  !
ECHO.                                                                                                         !__!____!_!__!
echo.
echo.
echo.
ping localhost -n .100 >nul
cls  
GOTO loopload3

:fimloop3

regsvr32 %windir%\SysWOW64\SCEScriptEngine.dll
regsvr32 %windir%\System32\SCEScriptEngine.dll 
cls

goto simnaoest

:quantcont
cls
echo off
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR QUANTIDADE DE NOTAS EMITIDAS EM CONTIGENCIA
cls
echo.
echo.
echo.		   
Echo.                            Ola %computername% !!  :-) 
echo.
COLOR 4F
echo.         CONFIGURANDO A QUANTIDADE DE NOTAS EMITIDAS QUANDO EM CONTIGENCIA 
echo.
echo.                                           AGUARDE...
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
ping localhost -n 2 >nul
cls
goto regquant

:regquant
cls
color A0
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:looploadserv3
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloopserv3


cls
echo.
echo.
echo.                                         Editando Servicos... 
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
GOTO looploadserv3

:fimloopserv3

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v TransmitirNFCeContigenciaQtdeCiclo /t REG_SZ /d 5 /f  
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe  /v TransmitirNFCeContigenciaQtdeCiclo /t REG_SZ /d 5 /f 

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v TransmitirNFCeContigenciaQtdeLimit /t REG_SZ /d 480 /f 
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe /v TransmitirNFCeContigenciaQtdeLimit /t REG_SZ /d 480 /f 

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v CorrigeDhContigencia /t REG_SZ /d -1 /f 
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe /v CorrigeDhContigencia /t REG_SZ /d -1 /f 

color F0
cls
echo.
echo.                                    Registro criado com sucesso! 
echo.      
echo.        AGORA, CASO ENTRE EM CONTIGENCIA, SEU PDV VAI TRANSMITIR UMA QUANTIDADE SEGURA DE NOTAS ... 
echo.
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
ping localhost -n 4 >nul
cls
goto fimmod

:ping
COLOR 4F
cls
ECHO OFF
TITLE FERRAMENTAS SUPORTE SCE --- CONEXAO ENTRE SERVIDOR ESTACAO
CD C:\
MKDIR TempPing
CD TempPing
CLS
goto deteserv

:deteserv
CLS
echo.
echo.		   
Echo.                                             Ola %computername% !!  :-) 
echo.
COLOR 1A
echo.                                  VAMOS TESTAR A CONEXAO ENTRE SERVIDOR E ESTACAO
ECHO.
echo.                                 ESSE TESTE SO FUNCIONA SE FOR EXECUTADO NA ESTACAO 
echo.
ECHO.                            [(_)] !=!    [(_)] !=!    [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                             '-`  !_!     '-`  !_!     '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                            /mmm/  /     /mmm/  /     /mmm/  /     /mmm/  /     /mmm/  /
ECHO.                                  !____________!____________!____________!____________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
echo.
echo.
echo.                                              AGUARDE! ESSE PROCESSO VAI DEMORAR
echo.
ping localhost -n 2  >nul
cls

COLOR 71

SET num1=0
SET num2=1 
SET Terminator=600

:loop
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO finalizar

ECHO Bloco %num1%
ECHO ------------------------------------------------ >>Pingar.txt
ECHO Hora Inicio Bloco ( %num1% )  - (%date%) - (%time:~0,5%) >>Pingar.txt

PING -l 61440 -t %servname% -n 320 >>Pingar.txt

ECHO.  >>Pingar.txt 
ECHO -------- Fim do Bloco %num1% as %time:~0,5% ----------------- >>Pingar.txt 
ECHO.  >>Pingar.txt 
ECHO.  >>Pingar.txt 
ECHO.  >>Pingar.txt 
GOTO loop

:finalizar
ECHO . >>Pingar.txt
ECHO .. >>Pingar.txt
ECHO ... >>Pingar.txt
ECHO .... >>Pingar.txt
ECHO ..... >>Pingar.txt
ECHO ...... >>Pingar.txt
ECHO ....... >>Pingar.txt

ECHO xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx >>Pingar.txt
ECHO xxxxx   F I M   xxxxx   F I M   xxxxx >>Pingar.txt
ECHO xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx >>Pingar.txt
TIME /T >>Pingar.txt

goto fimmod

:contun
cls
echo off
TITLE FERRAMENTAS SUPORTE SCE --- CONTIGENCIA UNICA
cls
echo.
Date /t
echo.
echo.		   
Echo.                            Ola %computername% !!  :-) 
echo.
COLOR 4F
echo.    VAMOS CONFIGURAR SEU PDV PARA EMITIR 1 UNICA VIA EM CASO DE CONTIGENCIA >
echo.
echo.                                                 AGUARDE...
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
echo.
ping localhost -n 3 >nul
cls
goto regun

:regun
color A0
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:looploadumanota
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloopumanota

cls
echo.
echo.
echo.                                         Editando Servicos... >
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
GOTO looploadumanota

:fimloopumanota

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v ImpressaoDanfeDesabilitarViaEstabelecimento /t REG_SZ /d 1 /f  >
cls
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe /v ImpressaoDanfeDesabilitarViaEstabelecimento /t REG_SZ /d 1 /f  >
cls
color F0
cls
echo.
echo.                                  Registro criado com sucesso! >
echo.      
echo.                                  Aguarde o redirecionamento... 
echo.
ping localhost -n 4 >nul
cls
goto fimmod

:corrigeimp
cls
Echo off
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGE IMPRESSORAS EM REDE
cls
echo.
Date /t
echo.
echo.		   
Echo.                                              Ola %computername% !!  :-) 
echo.
COLOR 4F
echo.                    ********************************************************************************
echo.
echo.                                                  ANTES DE COMECARMOS...
echo.                Verifique se o servidor e estacao estao com as versoes mais recentes do Windows 
ECHO.
ECHO.                      ___   _      ___   _      ___   _      ___   _      ___   _            _.-;;-._
ECHO.                     [(_)] !=!    [(_)] !=!    [(_)] !=!    [(_)] !=!    [(_)] !=!    '-..-'!   !!   !
ECHO.                      '-`  !_!     '-`  !_!     '-`  !_!     '-`  !_!     '-`  !_!    '-..-'!   !!   !
ECHO.                     /mmm/  /     /mmm/  /     /mmm/  /     /mmm/  /     /mmm/  /     '-..-'!_.-;;-._!
ECHO.                     !____________!____________!____________!____________!            '-..-'!   !!   !
ECHO.                                      !            !            !                     '-..-'!_.-''-._!
ECHO.                                 ___  \_      ___  \_      ___  \_
ECHO.                                [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                 '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                /mmm/        /mmm/        /mmm/
ECHO.
pause
cls
goto lembreteWU

:lembreteWU
color 57
echo.
echo.
echo.
echo.
echo.                               ***************************************************************************************
echo.
echo.                                   -- TODOS os computadores devem estar na versao 21H1 ou 21H2 do Windows 10 --
echo.        _.-;;-._
echo. '-..-'!   !!   !               Caso voce ja tenha atualizado para a versao 21H2 do Windows 10, ao baixar e instalar 
echo. '-..-'!_.-;;-._!               o update, o sistema operacional vai avancar para a Build 19044.1382. Porem, se voce  
echo. '-..-'!   !!   !               estiver no Windows 10 versao 21H1, tera a Build 19043.1382. Mas, se a maquina ainda 
echo. '-..-'!_.-''-._!               estiver no Windows 10 versao 20H2, ela tera a Build 19043.1382 ao atualizar.        
echo.                                                                                                              
echo.                                                                                                              
echo.                                   Apos a verificacao de versao, verifique se a build KB5007253 esta instalada.
echo.                                 Se nao estiver, baixe e instale, caso contrario, esse programa nao vai funcionar	  
echo.
echo.                             ***************************************************************************************
echo.
echo.
echo.
pause
goto regedit


:regedit
color A0
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:looploadserv1
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloopserv1


cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !_____________! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Editando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
GOTO looploadserv1

:fimloopserv1
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Print /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 0 /f
cls

color F0
echo.
echo.                                      Registro criado com sucesso!
echo.                ,---------------------------,
echo.                !  /---------------------\  !
echo.                ! !                       ! !
echo.                ! !                       ! !
echo.                ! !     AGUARDE...        ! !
echo.                ! !                       ! !
echo.                ! !                       ! !
echo.                !  \_____________________/  !
echo.                !___________________________!
echo.                ,---\_____     []     _______/------,
echo.              /         /______________\           /!
echo.            /___________________________________ /  ! ___
echo.            !                                   !   !    )
echo.            !  _ _ _                 [-------]  !   !   (
echo.            !  o o o                 [-------]  !  /    _)_
echo.            !__________________________________ !/     /  /
echo.           /-------------------------------------/!   ( )/
echo.         /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
echo.       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.                                                  Aguarde o redirecionamento... 
echo.
ping localhost -n 4 >nul
cls
goto servicesoff


:servicesoff
color B0
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:looploadserv2
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimloopserv2


cls
echo.
echo.
echo.                                         Reiniciando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Reiniciando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Reiniciando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                ! !             ! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Reiniciando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !             ! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
cls
echo.
echo.
echo.                                         Reiniciando Servicos...
echo.                ___________________
echo.                ! _______________ !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                ! !XXXXXXXXXXXXX! !
echo.                !_________________!
echo.                    _[_______]_
echo.                ___[___________]___
echo.               !         [_____] []!__
echo.               !         [_____] []!  \__
echo.               L___________________J     \ 
echo.                ___________________      /\
echo.               /###################\    (__)
ping localhost -n .2 >nul
GOTO looploadserv2

:fimloopserv2
cls
echo.
echo. 
echo.
echo.         Aguarde o servico de Spooler de Impressao ser finalizado...
ping localhost -n 3 >nul
Net stop Spooler

cls
color 1F
echo.
echo.
echo.         O servico de Spooler de Impressao foi finalizado com exito.
ping localhost -n 4 >nul

goto serviceson

:serviceson
cls
COLOR 75
echo.
echo.
echo.      Aguarde o servico de Spooler de Impressao ser iniciado...
Net start Spooler

cls
GOTO fimloop8

:fimloop8
cls
color 1F
echo.
echo.
echo. O servico de Spooler de Impressao foi iniciado com exito.
ping localhost -n 3 >nul
echo.
echo.
cls
goto final

:final
COLOR F0
echo.
echo.                  ***** TESTE SE A CONEXAO OCORRE NORMALMENTE NA ESTACAO *****
ECHO.                                                                       .------.------.    
ECHO.                        +-------------+                     ___        !      !      !    
ECHO.                        !             !                     \ /]       !      !      !    
ECHO.                        !             !        _           _(_)        !      !      !    
ECHO.                        !             !     ___))         [  ! \___    !      !      !    
ECHO.                        !             !     ) //o          ! !     \   !      !      !    
ECHO.                        !             !  _ (_    )         ! !      ]  !      !      !    
ECHO.                        !          __ ! (O)  \__(          ! ! ____/   '------'------'    
ECHO.                        !         /  o! [/] /   \)        [__!/_                          
ECHO.                        !             ! [\]!  ( \         __/___\_____                    
ECHO.                        !             ! [/]!   \ \__  ___!            !                   
ECHO.                        !             ! [\]!    \___E/%%/!____________!_____              
ECHO.                        !             ! [/]!=====__   (_____________________)             
ECHO.                        !             ! [\] \_____ \    !                  !              
ECHO.                        !             ! [/========\ !   !                  !              
ECHO.                        !             ! [\]     []! !   !                  !              
ECHO.                        !             ! [/]     []! !_  !                  !              
ECHO.                        !             ! [\]     []!___) !                  !              
ECHO.                      ====================================================================
echo.
ping localhost -n 4 >nul
              
echo.
echo.
echo.
echo.                                         A CONEXAO OCORREU NORMALMENTE?
echo.
echo                                                       1- SIM
echo.
echo                                                       2- NAO
echo.
set /p number=  SIM OU NAO? 
 
if %number% == 1 goto end1
if %number% == 2 goto reinicio

:reinicio
COLOR 4E
cls
echo.   VAMOS DESFAZER E RETORNAR O PROCESSO
echo.                       
ECHO.              _
ECHO.             ! !
ECHO.             ! !===( )   //////
ECHO.             !_!   !!!  ! o o!
ECHO.                    !!! ( c  )                  ____
ECHO.                     !!! \= /                  !!   \_
ECHO.                      !!!!!!                   !!     !
ECHO.                      !!!!!!                ...!!__/!-"
ECHO.                      !!!!!!             __!________!__
ECHO.                       !!!             !______________!
ECHO.                       !!!             !! !!      !! !!
ECHO.                       !!!             !! !!      !! !!
ECHO.-----------------------!!!-------------!!-!!------!!-!!-------
ECHO.                       !__)            !! !!      !! !! 
echo.     
echo.
echo.                AGUARDE O REINICIO DO PROGRAMA...
echo.
ping localhost -n 4 >nul
cls
goto regedit


:end1
color 0F
cls
echo.
echo.                  VAMOS REALIZAR UMA LIMPEZA DE LIXOS ANTES DE ENCERRAR
ECHO.                                                  .-.
ECHO.                                                 !_:_!
ECHO.                                                /(_Y_)\
ECHO.                           .                   ( \/M\/ )
ECHO.                            '.               _.'-/'-'\-'._
ECHO.                              ':           _/.--'[[[[]'--.\_
ECHO.                                ':        /_'  : !::"! :  '.\
ECHO.                                  ':     //   ./ !oUU! \.'  :\
ECHO.                                    ':  _:'..' \_!___!_/ :   :!
ECHO.                                      ':.  .'  !_[___]_!  :.':\
ECHO.                                       [::\ !  :  ! !  :   ; : \
ECHO.                                        '-'   \/'.! !.' \  .;.' !
ECHO.                                        !\_    \  '-'   :       !
ECHO.                                        !  \    \ .:    :   !   !
ECHO.                                        !   \    ! '.   :    \  !
ECHO.                                        /       \   :. .;       !
ECHO.                                       /     !   !  :__/     :  \\
ECHO.                                      !  !   !    \:   ! \   !   !!
ECHO.                                     /    \  : :  !:   /  !__!   /!
ECHO.                                     !     : : :_/_!  /'._\  '--!_\
ECHO.                                     /___.-/_!-'   \  \
ECHO.                                                    '-'
echo.
ping localhost -n 4 >nul

REM LIMPEZA DE TEMPORÁRIOS 

cls
del /s /f /q %windir%\temp\*.*
cls
rd /s /q %windir%\temp
cls
md %windir%\temp
cls
del /s /f /q %temp%\*.*
cls
rd /s /q %temp%
cls
md %temp%
cls
del /s /f /q %windir%\temp\*.*
cls
del /s /f /q  %windir%\prefetch\*.*
CLS
DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.*
DEL /F /S /Q %windir%\Temp\*.*
DEL /F /S /Q %windir%\Prefetch\*.*

REM FIM DA LIMPEZA DE TEMPORÁRIOS
goto fimmod


:anydesk
cls
COLOR 4F
echo off
TITLE FERRAMENTAS SUPORTE SCE --- PREPARANDO SUPORTE

IF %PC%==SERVIDOR ( goto anydeskserv ) ELSE ( goto anydeskest )

:anydeskserv
echo off
COLOR A0
echo.
ECHO.          ESTAMOS COPIANDO O ANYDESK PARA AREA DE TRABALHO
ECHO.                         AGUARDE POR FAVOR
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !                 !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !                 !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ECHO.
ping localhost -n 3 >nul


XCOPY  C:\SCE\AutoMagazine\Network\4.1\Support\Suporte\Any\AnyDesk.exe %homepath%\Desktop /C /I /G /y
cls
echo.
ECHO.          ATALHO CRIADO NA AREA DE TRABALHO
ECHO.               ABRA E INSTALE NA MAQUINA
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !                 !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !                 !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ECHO.
ping localhost -n 3 >nul
goto fimmod

:anydeskest
echo off
COLOR A0
echo.
ECHO.          ESTAMOS COPIANDO O ANYDESK PARA AREA DE TRABALHO
ECHO.                         AGUARDE POR FAVOR
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !                 !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !                 !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ECHO.
ping localhost -n 3 >nul

XCOPY  \\%servname%\Network\4.1\Support\Suporte\Any\AnyDesk.exe %homepath%\Desktop /C /I /G /y
cls
echo.
ECHO.          ATALHO CRIADO NA AREA DE TRABALHO
ECHO.               ABRA E INSTALE NA MAQUINA
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !                 !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !                 !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ECHO.
ping localhost -n 3 >nul
goto fimmod

:firewall
cls
COLOR 4F
echo off
TITLE FERRAMENTAS SUPORTE SCE --- LIBERA FIREWALL
chcp 1252
SETLOCAL 


netsh advfirewall firewall show rule name="SCE" >null
IF NOT ERRORLEVEL 1 (echo. *** As regras ja foram incluidas no firewall ***) ELSE (

echo. *** Permissões para o certificado ***
netsh advfirewall firewall add rule name="SCENFe" dir=in action=allow edge=yes protocol=TCP localport=9000  remoteport=9000
netsh advfirewall firewall add rule name="SCENFe" dir=out action=allow protocol=TCP localport=9000  remoteport=9000

echo. *** Permissões para o SQL Server ***
netsh advfirewall firewall add rule name="SCESQL" dir=in action=allow edge=yes protocol=TCP localport=1433
netsh advfirewall firewall add rule name="SCESQL" dir=out action=allow protocol=TCP localport=1433

echo. *** Permissões para o Compartilhamento ***
netsh advfirewall firewall add rule name="SCE" dir=in action=allow edge=yes protocol=any
netsh advfirewall firewall add rule name="SCE" dir=out action=allow protocol=any

)

goto fimmod

:isce
ECHO OFF
TITLE REGISTRA ISCE
COLOR 4F
Cls
echo.  REGISTRANDO ISCE
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  !REGISTRANDO...   !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !   AGUARDE       !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"

ping localhost -n 3 >nul
rem ---------------------------------------------------------------------
color B0
CLS
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO    !
echo.                                     M!@!!@) M!   _;....................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO    !
echo.                                     M!@!!@) M!   _;..........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n 4 >nul
cls
goto verisce

:verisce
IF %PC%==SERVIDOR ( GOTO isceserver ) else (goto isceest)
	
:isceserver
CD C:\
cd C:\SCE\AutoMagazine\Network\4.1\Support
start Automagazine.isce
goto fimisce

:isceest
XCOPY  /y /C /I /G \\%servname%\Network\4.1\Support\Automagazine.isce C:\SCE\AutoMagazine
start C:\SCE\AutoMagazine\Automagazine.isce

goto inv

:fimisce
COLOR F0
Cls
echo.
Echo                     ===================================================
ECHO.
Echo                           Automagazine.isce ATIVADO COM SUCESSO
ECHO.
Echo                     ===================================================
ECHO.                                        ,----------------,              ,---------,
ECHO.                                   ,-----------------------,          ,"        ,"!
ECHO.                                 ,"                      ,"!        ,"        ,"  !
ECHO.                                +-----------------------+  !      ,"        ,"    !
ECHO.                                !  .-----------------.  !  !     +---------+      !
ECHO.                                !  ! automagaizne    !  !  !     ! -==----'!      !
ECHO.                                !  !                 !  !  !     !         !      !
ECHO.                                !  !                 !  !  !/----!`---=    !      !
ECHO.                                !  !                 !  !  !   ,/!==== ooo !      ;
ECHO.                                !  !                 !  !  !  // !(((( [33]!    ,"
ECHO.                                !  `-----------------'  !," .;'! !((((     !  ,"
ECHO.                                +-----------------------+  ;;  ! !         !," 
ECHO.                                   /_)______________(_/  //'   ! +---------+
ECHO.                              ___________________________/___  `,
ECHO.                             /  oooooooooooooooo  .o.  oooo /,   \,"-----------
ECHO.                            / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
ECHO.                           /_==__==========__==_ooo__ooo=_/'   /___________,"
ping localhost -n 3 >nul
COLOR 75
Cls
echo.
Echo                      AGUARDE UM MOMENTO ATE O SCRIPT SER REGISTRADO POR COMPLETO...
ECHO.
echo.                                  _nnnn_
echo.                                 dGGGGMMb          ESSE TEMPO VARIA DE MAQUINA PARA MAQUINA PORTANTO, AGUARDE!
echo.                                @p~qp~~qMb  
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
ping localhost -n 2 >nul
COLOR DF
CLS
ECHO.             
ECHO.                       O PROGRAMA VOLTARA AUTOMATICAMENTE PARA A TELA PRINCIPAL QUANDO
ECHO.                       TERMINAR DE SER REGISTRADO... 
echo.
ECHO.
ECHO.                            Aproveite pra apreciar esse belissimo trabalho...
echo.
ECHO.                                                            .,,uod8B8bou,,.
ECHO.                                                   ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
ECHO.                                              ,=m8BBBBBBBBBBBBBBBRPFT?!!!!!!!!!!!!!!!
ECHO.                                              !...:!TVBBBRPFT!!!!!!!!!!!!^^""'   !!!!
ECHO.                                              !.......:!?!!!!!!!^^""'            !!!!
ECHO.                                              !.........!!!!                     !!!!
ECHO.                                              !.........!!!!                     !!!!
ECHO.                                              !.........!!!!                     !!!!
ECHO.                                              !.........!!!!                     !!!!
ECHO.                                              !.........!!!!                     !!!!
ECHO.                                              !.........!!!!                     !!!!
ECHO.                                              `.........!!!!                    ,!!!!
ECHO.                                               .;.......!!!!               _.-!!!!!!!
ECHO.                                        .,uodWBBBBb.....!!!!       _.-!!!!!!!!!!!!:'
ECHO.                                     !YBBBBBBBBBBBBBBb..!!!!:..-!!!!!!!!!!iof68BBBBBb....
ECHO.                                     !..YBBBBBBBBBBBBBBb!!!!!!!!!!!iof68BBBBBBRPFT?!::   `.
ECHO.                                     !....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
ECHO.                                     !......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^"`;:::       `.
ECHO.                                     !........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
ECHO.                                     `..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
ECHO.                                       `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
ECHO.                                         `........::::::::::::::::;iof688888888888888888888b.     `
ECHO.                                           `......:::::::::;iof688888888888888888888888888888b.
ECHO.                                             `....:::;iof688888888888888888888888888888888899fT!
ECHO.                                               `..::!8888888888888888888888888888888899fT!!^"'
ECHO.                                                 `' !!988888888888888888888888899fT!!^"'
ECHO.                                                     `!!8888888888888888899fT!!^"'
ECHO.                                                       `!988888888899fT!!^"'
ECHO.                                                         `!9899fT!!^"'
ECHO.                                                           `!^"'
echo.
TIMEOUT /T 180 /NOBREAK
GOTO fimmod

:limpcont
cls
ECHO OFF
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- LIMPAR CONTIGENCIA
ECHO.
ECHO.             ESTAMOS LIMPANDO A CONTIGENCIA
echo.                  .----.
echo.      .---------. ! == !
echo.      !.-"""""-.! !----!
echo.      !!       !! ! == !
echo.      !!       !! !----!
echo.      !'-.....-'! !::::!
echo.      `"")---(""` !___.!
echo;     /:::::::::::\" _  "
echo.    /:::=======:::\`\`\
echo.    `"""""""""""""`  '-'
ECHO.
ECHO.                  POR FAVOR, AGUARDE...
ping localhost -n 3 >nul

cd C:\
cd sce
cd automagazine
ren NFCeData NFX
Del /q NFX
rmdir /s /q NFX
xcopy C:\SCE\AutoMagazine\NFCeOrigin\*.* C:\SCE\AutoMagazine\NFCeData\*.*

goto fimmod

:tls
echo off
TITLE FERRAMENTAS SUPORTE SCE --- TLS 1.2
cls
COLOR 4F
echo.
echo.
echo.		   
Echo.                            Ola %computername% !!  :-) 
echo.
echo.                  VAMOS REPARAR O PROBLEMA COM O TLS 1.2
echo.                  .----.
echo.      .---------. ! == !
echo.      !.-"""""-.! !----!
echo.      !!       !! ! == !
echo.      !!       !! !----!
echo.      !'-.....-'! !::::!
echo.      `"")---(""` !___.!
echo;     /:::::::::::\" _  "
echo.    /:::=======:::\`\`\
echo.    `"""""""""""""`  '-'
echo.
echo.                                 AGUARDE...
echo.
ping localhost -n 3 >nul
goto regtls

:regtls
color 4F
cls
echo.
echo.
echo.                Editando registros...

REG ADD HKLM\SOFTWARE\Microsoft\.NETFramework\v2.0.50727 /v SystemDefaultTlsVersions /t REG_DWORD /d 00000001 /f
REG ADD HKLM\SOFTWARE\Microsoft\.NETFramework\v2.0.50727 /v SchUseStrongCrypto /t REG_DWORD /d 00000001 /f

REG ADD HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SystemDefaultTlsVersions /t REG_DWORD /d 00000001 /f
REG ADD HKLM\SOFTWARE\Microsoft\.NETFramework\v2.0.50727 /v SchUseStrongCrypto /t REG_DWORD /d 00000001 /f

REG ADD HKLM\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727 /v SystemDefaultTlsVersions /t REG_DWORD /d 00000001 /f
REG ADD HKLM\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727 /v SchUseStrongCrypto /t REG_DWORD /d 00000001 /f

REG ADD HKLM\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v4.0.30319 /v SystemDefaultTlsVersions /t REG_DWORD /d 00000001 /f
REG ADD HKLM\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727 /v SchUseStrongCrypto /t REG_DWORD /d 00000001 /f

echo off
cls
COLOR B0
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                     /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                            /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                  /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                          /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                               /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                  /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                        /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                              /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                   ////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                     M!@!!@) M!   _;...................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                     ///////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                           /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                      /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                              /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                       /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                              /////////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                                                                                 /////
echo.                                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.                                       _nnnn_                      
echo.                                      dGGGGMMb     ,"""""""""""""""""""""""".
echo.                                     @p~qp~~qMb    ! AGUARDE MAIS UM POUCO  !
echo.                                     M!@!!@) M!   _;........................'
echo.                                     @,----.JM! -'
echo.                                    JS^\__/  qKL
echo.                                   dZP        qKRb
echo.                                  dZP          qKKb
echo.                                 fZP            SMMb
echo.                                 HZM            MMMM
echo.                                 FqM            MMMM
echo.                               __! ".        !\dS"qML
echo.                               !    `.       ! `' \Zq
echo.                              _)      \.___.,!     .'
echo.                              \____   )MMMMMM!   .'
echo.                                   `-'       `--' 
echo.
echo.
ping localhost -n .10 >nul
CLS
goto fimmod

:criest
echo off
TITLE FERRAMENTAS SUPORTE SCE --- CRIAR ESTACAO
cls
COLOR 4E
echo.
echo.		   
Echo.                            Ola %computername% !!  :-) 
echo.                                                                   ,        ,
echo.                                                                  /(        )`
echo.                                                                  \ \___   / !
echo.         PENSOU QUE ISSO IA INSTALAR A ESTACAO SOZINHO?           /- _  `-/  '
echo.                                                                 (/\/ \ \   /\
echo.                                                                 / /   ! `    \
echo.                       ERROU FEIO...                              O O   ) /    !
echo.                                                                 `-^--'`(     '
echo.                                                                (_.)  _  )   /
echo.                                                                 `.___/`    /
echo.                                                                   `-----' /
echo.                                                      (----.     __ / __   \
echo.                                                  (----!====O)))==) \) /====
echo.                                                      (----'    `--' `.__,' \
echo.                                                                   !        !
echo.                                                                    \       /
echo.                                                               ______( (_  / \______
echo.                                                             ,'  ,-----'   !        \
echo.                                                             `--{__________)        \/
echo.		   
CLS
ECHO.
echo.          VAMOS ABRIR OS INSTALADORES PARA CRIAR A ESTACAO
echo.
echo.
ping localhost -n 3 >nul
cls
goto installnet

:installnet
CLS
COLOR B0
echo.
Echo.                                      ABRINDO INSTALLNET              
ECHO.                                
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb    ! APOS A INSTALACAO, TECLE ENTER
echo.                                M!@!!@) M!   _;................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 


"\\%servname%\Network\InstallNet\setup.exe"
pause
GOTO installclient

:installclient
CLS
COLOR B0
echo.
Echo.                                AGORA... ABRINDO INSTALLCLIENT             
echo.                               
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb    ! APOS A INSTALACAO, TECLE ENTER
echo.                                M!@!!@) M!   _;................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 

"\\%servname%\Network\InstallClient\setup.exe"
pause
GOTO teste

:teste
CLS
COLOR 75
echo.
echo.                          VEJA SE A ESTACAO ABRE NORMALMENTE
ping localhost -n 2 >nul
echo.
ECHO.                                     ESTA TUDO CERTO?
ECHO.
ECHO.                                         1 - SIM
ECHO.                                         2 - NAO                             
echo.
echo.
Set /p opcao= Escolha uma opcao: 
echo.
Echo. ------------------------------
If %opcao% equ 1 goto fimmod
If %opcao% equ 2 goto scriptE
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 0 goto inv

:scriptE
color 4E
cls
echo.                                            :-(
ECHO.              _
ECHO.             ! !
ECHO.             ! !===( )   //////
ECHO.             !_!   !!!  ! o o!
ECHO.                    !!! ( c  )                  ____
ECHO.                     !!! \= /                  !!   \_
ECHO.                      !!!!!!                   !!     !
ECHO.                      !!!!!!                ...!!__/!-"
ECHO.                      !!!!!!             __!________!__
ECHO.                       !!!             !______________!
ECHO.                       !!!             !! !!      !! !!
ECHO.                       !!!             !! !!      !! !!
ECHO.-----------------------!!!-------------!!-!!------!!-!!-------
ECHO.                       !__)            !! !!      !! !!
echo.                        
echo.   SE O PROBLEMA EH NO SCRIPTENGINE, VOCE PODE ESCOLHER REPARAR AUTOMATICAMENTE OU, IR PARA O MENU
ECHO.
ping localhost -n 4 >nul

CLS
COLOR 75
echo.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb    ! VOCE DESEJA REPARAR AUTOMATICAMENTE O SCRIPTENGINE OU IR PARA O MENU?
echo.                                M!@!!@) M!   _;.......................................................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL                                     1- REPARAR
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb                                 2- IR PARA MENU
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
ECHO.
Set /p opcao= Escolha uma opcao: 
echo.
Echo. ------------------------------
If %opcao% equ 1 goto fimmod
If %opcao% equ 2 goto menuSE
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 0 goto inv

:menusql
TITLE FERRAMENTAS SUPORTE SCE --- MENU SQL %sql%
COLOR E4
cls
echo.
echo.                                                        ATENCAO!!!!
ECHO.
echo.                                             VOCE TEM O SQL %sql% INSTALADO...
ECHO.
ECHO.                                                  O QUE VOCE DESEJA FAZER?
Echo.                              ==================================================================
echo.
Echo.                                          * 1. MOVER BANCOS DA NFe PARA A DATABASE *
echo.    
echo.                                          * 2. MOVER BANCOS DO POCKETPDV           *
echo.
echo.                                          * 3. EXECUTAR SCRIPTS DO POCKETPDV       *
echo.
Echo.                                          * 4. LIMPAR TABELAS LOTE/LOTEINUT        *
echo.
echo.                                          * 5. CORRIGIR BANK SUSPECT               * 
echo.
Echo.                                          * 6. CORRIGIR XPAG                       * 
echo.       
echo.                                          * 7. TAMANHO DAS TABELAS                 *
echo.
Echo.                                          * 8. TAMANHO DO MDF                      * 
echo. 
Echo.                                          * 9. COLUNAS DO XML                      * 
echo.
echo.                                          * 10. CORRIGIR SQL INSTALLNET            *
echo.    
echo.                                          * 11. Sair                               *
echo. 
Echo.                              ==================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto movenfe
If %opcao% EQU 2 goto movepocket
IF %opcao% EQU 3 goto scriptpocket
IF %opcao% EQU 4 goto limptab
If %opcao% EQU 5 goto banksuspect
If %opcao% EQU 6 goto xpag
If %opcao% EQU 7 goto tabelas
If %opcao% EQU 8 goto mdf
If %opcao% EQU 9 goto sizexml
If %opcao% EQU 10 goto runtime
If %opcao% EQU 11 goto escolhecloud
If %opcao% equ 12 goto inv
If %opcao% equ 0 goto inv

:movenfe
cls
Echo off
COLOR 30
TITLE FERRAMENTAS SUPORTE SCE --- MOVER BANCOS NFe SQL
cls
echo.
echo.
echo.                          MOVENDO BANCOS DA NFe PARA A PASTA DATABASE 
ECHO.                                               _______
ECHO.                                              ! ___  o!
ECHO.                                              ![_-_]_ !
ECHO.                           ______________     ![_____]!
ECHO.                          !.------------.!    ![_____]!
ECHO.                          !!            !!    ![====o]!
ECHO.                          !!            !!    ![_.--_]!
ECHO.                          !!            !!    ![_____]!
ECHO.                          !!            !!    !      :!
ECHO.                          !!____________!!    !      :!
ECHO.                      .==.!""  ......    !.==.!      :!
ECHO.                      !::! '-.________.-' !::!!      :!
ECHO.                      !''!  (__________)-.!''!!______:!
ECHO.                      `""`_.............._\""`______
ECHO.                         /:::::::::::'':::\`;'-.-.  `\
ECHO.                        /::=========.:.-::"\ \ \--\   \
ECHO.                        \`""""""""""""""""`/  \ \__)   \
ECHO.                         `""""""""""""""""`    '========'            
echo.
echo.********************************************************************************
ping localhost -n 2 >nul

IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\NFe_data.mdf" (GOTO naomexenfe) ELSE (GOTO verifnfesql)

:verifnfesql
IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\NFe.mdf" (GOTO naomexenfe) ELSE (GOTO movesqlnfe)

:movesqlnfe
IF %sql% == 2005 (GOTO movesql2005) ELSE (GOTO movesql2012)

:movesql2005
COLOR 30
TITLE MOVENDO BANCOS SQL %sql%
XCOPY  C:\SQLtemp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SQLtemp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y
echo.
echo.    BANCOS MOVIDOS...
ECHO.
ping localhost -n 2 >nul
goto attach

:attach
COLOR 75
ECHO.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb       DESEJA FAZER O ATTACH DOS BANCOS?
echo.                                M!@!!@) M!   _;......................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL                1 - SIM! POUPE-ME O TRABALHO
echo.                              dZP        qKRb
echo.                             dZP          qKKb             2 - NAO! NAO CONFIO EM VOCE...
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto simattach
IF %opcao% EQU 2 goto menusql

:simattach
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Attach.sql" 

goto fimsql

:movesql2012
COLOR F0
TITLE MOVENDO BANCOS SQL %sql%
XCOPY  C:\SQL2012Temp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SQL2012Temp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y
echo.
echo.                   
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! BANCOS MOVIDOS    !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
ECHO.
ping localhost -n 2 >nul
goto attach

:naomexenfe
title ERRO... BANCOS NAO MOVIDOS
color 4E
echo.
echo.                             	     ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.              BANCOS NAO MOVIDOS, VOCE JA TEM UM BANCO DA NFe EM USO NA DATABASE
ECHO.                                               )
ECHO.                                           )      ((     (
ECHO.                                          (        ))     )
ECHO.                                   )       )      //     (
ECHO.                              _   (        __    (     ~-))
ECHO.                       ,-----' !__,_~~___('__`)-~__--__-~->> (
ECHO.                       ! //  : ! -__   ~__ o)____)),__ - ') )-  )
ECHO.                       ! //  : !- \_ \ -\_\ -\ \ \ ~\_  \ -)) - ,  ))
ECHO.                       ! //  : !_~_\ -\__\ \~'\ \ \, \__ . -(-  ))
ECHO.                       `-----._! `  -__`-- - ~~ -- ` --~))
ECHO.                        _/___\_    //)_`//  ! !!]
ECHO.                  _____[_______]_[~~-_ (.L_/  !!
ECHO.                 [____________________]' `\_,/'/
ECHO.                   !!! /          !!!  ,___,'./
ECHO.                   !!! \          !!!,'______!
ECHO.                   !!! /          /!! I==!!
ECHO.                   !!! \       __/_!!  __!!__
ECHO.               -----!!-/------`-._/!!-o--o---o---
ECHO.                 ~~~~~'
ECHO.
ping localhost -n 2 >nul
cls
COLOR 75
echo.
echo.
ECHO.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""""""""""""""""".
echo.                                @p~qp~~qMb    ! VOCE DESEJA MOVER ASSIM MESMO?  !
echo.                                M!@!!@) M!   _;.................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL                  1 - SIM
echo.                              dZP        qKRb 
echo.                             dZP          qKKb               2 - NAO
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--'                            
Echo.                                  
Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto moveoldnfe
If %opcao% EQU 2 goto menusql
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:moveoldnfe
IF %sql% == 2005 (GOTO moveoldsql2005) ELSE (GOTO moveoldsql2012)

:moveoldsql2005
ECHO OFF
COLOR 30
cls
TITLE MOVENDO BANCOS SQL %sql%

NET STOP MSSQLSERVER
ping localhost -n 2 >nul

cls
color 30
ECHO.
ECHO.
ECHO.                           RENOMEANDO ARQUIVOS.... 
echo.                  .----.
echo.      .---------. ! == !
echo.      !.-"""""-.! !----!
echo.      !!       !! ! == !
echo.      !!       !! !----!
echo.      !'-.....-'! !::::!
echo.      `"")---(""` !___.!
echo;     /:::::::::::\" _  "
echo.    /:::=======:::\`\`\
echo.    `"""""""""""""`  '-'
if EXIST "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf" ( RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf" NFe_data_OLD.mdf ) ELSE (RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe.mdf" NFe_OLD.mdf)

RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_log.ldf" NFe_log_OLD.ldf
ping localhost -n 2 >nul

color 2f
NET START MSSQLSERVER

cls
COLOR 30
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:loopMOV1
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimMOV1

cls
echo.
ECHO.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !) ) ) )____________________________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !______________) ) ) )______________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                    
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_____________________) ) ) )_______________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________) ) ) )___________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/     
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________) ) ) )________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________________) ) ) )___!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________________) ) ) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                                                
ECHO.                             ___   _                                      (  ( ( ___   _ ))  ) )
ECHO.                            [(_)] !=!                                   ( ((    [(_)] !=!  ) ) ))
ECHO.                             '-`  !_!                                     (( (   '-`  !_!  )) )
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !________________________________________________) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls  
GOTO loopMOV1

:fimMOV1
XCOPY /Y /G /H /I  C:\SQLtemp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database
XCOPY /Y /G /H /I  C:\SQLtemp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database

ping localhost -n 2 >nul

cls
color F0
echo.
echo.                                                            BANCOS MOVIDOS...
echo.                                    ___      !\________/)
echo.                                   [_,_])    \ /       \!
echo.                                  /!=T=!]     /   __  __\
echo.                                  !\ " //     !_  9   p ]\
echo.                                  !!'-'/--.  / /\ =!  \!\ \
echo.                                 /!! (\/) !\ ! '._, @ @)(_)
echo.                                ! !\   !  !   \.__/(_;_)
echo.                                !  .   H  !   !  :  '='!
echo.                                !  !  _H__/  _! :      !
echo.                                 \  '.__  \ /  ;      ';
echo.                                __'-._(_}==.'  :       ;
echo.                               (___!    /-' !   :.     :
echo.                              [.-'  \   !   \   \ ;   :
echo.                             .-'     !  !    !  !   ":
echo.                            /        !==!     \  \  /  \_
echo.                           /         [  !      '._\_ -._ \
echo.                          /           \__)   __.- \ \   )\\
echo.                         /       !        /.'      )))
echo.                         !        \       !\     !
echo.                         !     .'  '-.    ! \    /
echo.                         !    /     /     / /   /
echo.                                    !    /
ECHO.
ECHO.
ECHO.
ping localhost -n 4 >nul
GOTO attach

:moveoldsql2012
ECHO OFF
COLOR 30
cls
TITLE MOVENDO BANCOS SQL %sql%

NET STOP MSSQLSERVER
ping localhost -n 2 >nul

cls
color A0
ECHO.
ECHO.
ECHO.                           RENOMEANDO ARQUIVOS....
echo.                  .----.
echo.      .---------. ! == !
echo.      !.-"""""-.! !----!
echo.      !!       !! ! == !
echo.      !!       !! !----!
echo.      !'-.....-'! !::::!
echo.      `"")---(""` !___.!
echo;     /:::::::::::\" _  "
echo.    /:::=======:::\`\`\
echo.    `"""""""""""""`  '-' 
if EXIST "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf" ( RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf" NFe_data_OLD.mdf ) ELSE (RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe.mdf" NFe_OLD.mdf)

RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_log.ldf" NFe_log_OLD.ldf
ping localhost -n 2 >nul


NET START MSSQLSERVER
cls
ECHO.
ECHO.
ECHO.                          MOVENDO ARQUIVOS
@echo off
color 30
SET num1=0
SET num2=1 
SET Terminator=6

:loopMOV2
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimMOV2

cls
echo.
ECHO.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !) ) ) )____________________________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !______________) ) ) )______________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                    
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_____________________) ) ) )_______________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________) ) ) )___________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/     
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________) ) ) )________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________________) ) ) )___!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________________) ) ) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                                                
ECHO.                             ___   _                                      (  ( ( ___   _ ))  ) )
ECHO.                            [(_)] !=!                                   ( ((    [(_)] !=!  ) ) ))
ECHO.                             '-`  !_!                                     (( (   '-`  !_!  )) )
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !________________________________________________) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls  
GOTO loopMOV2

:fimMOV2

XCOPY  C:\SQL2012Temp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SQL2012Temp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y

ping localhost -n 2 >nul

cls
color F0
echo.
echo.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! BANCOS MOVIDOS    !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
color b0
ECHO.
ping localhost -n 4 >nul
GOTO attach

:fimsql
COLOR 75
CLS
echo.
echo.
echo.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb    ! DESEJA FAZER O MOVER OS BANCOS DO POCKET?
echo.                                M!@!!@) M!   _;..........................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb            1 - SIM, NAO QUERO TER TRABALHO
echo.                             dZP          qKKb
echo.                            fZP            SMMb          2 - NAO... DEIXA QUE EU FACO
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
ECHO.                              
Set /p opcao= 
Echo. ------------------------------
IF %opcao% EQU 1 goto movepocket
IF %opcao% EQU 2 goto mtoauto
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:movepocket
cls
Echo off
COLOR 30
TITLE FERRAMENTAS SUPORTE SCE --- MOVER BANCOS SQL
cls
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb    ! MOVENDO BANCOS PARA A PASTA DATABASE 
echo.                                M!@!!@) M!   _;......................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
echo.********************************************************************************
ping localhost -n 2 >nul

IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\PocketPDV_Data.MDF" (GOTO naomexepocket) ELSE (GOTO movedbpocket)


:movedbpocket
COLOR 2f
TITLE MOVENDO BANCOS POCKETPDV

XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_Data.MDF C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_log.LDF C:\SCE\AutoMagazine\Network\4.1\Database /Y
COLOR F0
echo.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! BANCOS MOVIDOS    !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
ECHO.
ping localhost -n 3 >nul

COLOR 75
echo.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     
echo.                                @p~qp~~qMb    ! DESEJA RODAR OS SCRIPTS DO POCKET?
echo.                                M!@!!@) M!   _;....................................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb           1 - SIM, NAO QUERO TER TRABALHO
echo.                             dZP          qKKb
echo.                            fZP            SMMb         2 - NAO... DEIXA QUE EU FACO
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
Echo.           ==================================================================
echo.

Set /p opcao=
Echo. ------------------------------
IF %opcao% EQU 1 goto scriptpocket
IF %opcao% EQU 2 goto mtoauto
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv


:scriptpocket
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- POCKETPDV
echo.
echo.
echo.                          RODANDO SCRIPTS DO POCKET             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 2 >nul
cls

CLS
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\pocket1.sql" 
pause

cls
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\pocket2.sql" 
pause

cls
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\pocket3.sql" 
pause

cls
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\pocket4.sql" 
pause

cls
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\pocket5.sql" 
cls

COLOR F0
echo.
echo.
echo.                                 
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    !SCRIPTS EXECUTADOS !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
ping localhost -n 3 >nul
goto menusql

:naomexepocket
title ERRO... BANCOS NAO MOVIDOS
color 4E
echo.
echo.                                         	ERRO!!!!!!!!!!!!!!!!!!!
echo.
ECHO.                         BANCOS NAO MOVIDOS, VOCE JA TEM BANCOS EM USO NA DATABASE
ECHO.                                               )
ECHO.                                           )      ((     (
ECHO.                                          (        ))     )                   VOCE DESEJA MOVER ASSIM MESMO?
ECHO.                                   )       )      //     (
ECHO.                              _   (        __    (     ~-))                           1- SIM
ECHO.                       ,-----' !__,_~~___('__`)-~__--__-~->> (
ECHO.                       ! //  : ! -__   ~__ o)____)),__ - ') )-  )                     2- NAO
ECHO.                       ! //  : !- \_ \ -\_\ -\ \ \ ~\_  \ -)) - ,  ))
ECHO.                       ! //  : !_~_\ -\__\ \~'\ \ \, \__ . -(-  ))
ECHO.                       `-----._! `  -__`-- - ~~ -- ` --~) )
ECHO.                        _/___\_    //)_`//  ! !!]
ECHO.                  _____[_______]_[~~-_ (.L_/  !!
ECHO.                 [____________________]' `\_,/'/
ECHO.                   !!! /          !!!  ,___,'./
ECHO.                   !!! \          !!!,'______!
ECHO.                   !!! /          /!! I==!!
ECHO.                   !!! \       __/_!!  __!!__
ECHO.               -----!!-/------`-._/!!-o--o---o---
ECHO.                 ~~~~~'
ECHO.                
ECHO.
ping localhost -n 2 >nul
echo.
Set /p opcao=  Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto moveoldpocket
If %opcao% EQU 2 goto menusql
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:moveoldpocket
ECHO OFF
COLOR 4F
cls
TITLE MOVENDO BANCOS DO POCKET

NET STOP MSSQLSERVER
ping localhost -n 2 >nul


cls
color A0
ECHO.
ECHO.
ECHO.                                       RENOMEANDO ARQUIVOS.... 
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
echo.
RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\PocketPDV_Data.MDF" PocketPDV_Data_OLD.MDF
RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\PocketPDV_log.LDF" PocketPDV_log_OLD.LDF 

ping localhost -n 2 >nul
IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\PocketPDV.bak" ( GOTO backuppocket ) ELSE ( GOTO continuapocket)

:backuppocket
RENAME "C:\SCE\Automagazine\Network\4.1\Database\PocketPDV.bak" OLDbackup_PocketPDV.bak 

goto continuapocket

:continuapocket
cls
color 30
NET START MSSQLSERVER
ECHO.
ECHO.
ECHO.                                           MOVENDO ARQUIVOS
echo.                                  _nnnn_
echo.                                 dGGGGMMb
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_Data.MDF C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y
ping localhost -n 2 >nul

cls
color 64
echo.
echo.         BANCOS MOVIDOS...
ECHO.
ping localhost -n 3 >nul

COLOR 75
echo.
echo.
ECHO.                                           DESEJA RODAR OS SCRIPTS DO POCKET?
echo.                                  _nnnn_
echo.                                 dGGGGMMb          1 - SIM, NAO QUERO TER TRABALHO
echo.                                @p~qp~~qMb
echo.                                M!@!!@) M!         2 - NAO... DEIXA QUE EU FACO
echo.                                @,----.JM!
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMP!   .'
echo.                              `-'       `--'
Echo.           ==================================================================
echo.
ECHO.                              
Set /p opcao=
Echo. ------------------------------
IF %opcao% EQU 1 goto scriptpocket
IF %opcao% EQU 2 goto mtoauto
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:limptab
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- LIMPAR TABELAS 
echo.
echo.
echo.                    VAMOS LIMPAR AS TABELAS DO LOTE E LOTEINUTNFE             
echo.           
ECHO.                                        AGUARDE
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
CLS
sqlcmd -S %computername% -d nfe -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Banco_grande.sql"
goto menusql

:banksuspect
cls
Echo off
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR BANK SUSPECT
echo.
echo.
echo.                       VAMOS CORRIGIR O PROBLEMA DO BANK SUSPECT           
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
CLS
sqlcmd -S %computername% -d nfe -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Bank_suspect.sql"
goto menusql

:xpag
cls
Echo off
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR XPAG
echo.
echo.
echo.                      VAMOS CORRIGIR O PROBLEMA DO XPAG             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
CLS
sqlcmd -S %computername% -d nfe -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Xpag_NFC-e.sql"
goto menusql

:tabelas
cls
Echo off
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR TAMANHO DAS TABELAS
echo.
echo.
echo.                       VAMOS CORRIGIR TAMANHO DAS TABELAS             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

CLS
sqlcmd -S %computername% -d nfe -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Tamanho_Tabelas.sql"
goto menusql

:mdf
cls
Echo off
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR TAMANHO DO MDF
echo.
echo.
echo.                          VAMOS CORRIGIR TAMANHO DO MDF              
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
CLS
sqlcmd -S %computername% -d nfe -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Tamanho_MDF.sql"
goto menusql

:sizexml
cls
Echo off
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR TAMANHO DO XML
echo.
echo.
echo.                          CORRIGINDO TAMANHO DO XML             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
CLS
sqlcmd -S %computername% -d nfe -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Colunas_XML.sql"
goto menusql

:runtime
echo off
COLOR 4F
TITLE FERRAMENTAS SUPORTE SCE --- SQL INSTALLNET
cls
echo.
echo.
echo.                  VAMOS REPARAR O PROBLEMA COM O SQL
ECHO.              _
ECHO.             ! !
ECHO.             ! !===( )   //////
ECHO.             !_!   !!!  ! o o!
ECHO.                    !!! ( c  )                  ____
ECHO.                     !!! \= /                  !!   \_
ECHO.                      !!!!!!                   !!     !
ECHO.                      !!!!!!                ...!!__/!-"
ECHO.                      !!!!!!             __!________!__
ECHO.                       !!!             !______________!
ECHO.                       !!!             !! !!      !! !!
ECHO.                       !!!             !! !!      !! !!
ECHO.-----------------------!!!-------------!!-!!------!!-!!-------
ECHO.                       !__)            !! !!      !! !!
echo.
echo.                                 AGUARDE...
echo.
ping localhost -n 3 >nul

IF %PC%==SERVIDOR ( goto runtimeserv ) ELSE ( goto runtimeest )

:runtimeserv
"C:\SCE\Automagazine\Network\InstallNet\SQL Server Compact Edition\SSCERuntime-ENU.msi"
"C:\SCE\Automagazine\Network\InstallNet\SQL Server Compact Edition\SSCERuntime-ENU-x64.msi"
goto menusql

:runtimeest
"\\%servname%\Network\InstallNet\SQL Server Compact Edition\SSCERuntime-ENU.msi"
"\\%servname%\Network\InstallNet\SQL Server Compact Edition\SSCERuntime-ENU-x64.msi"
goto menusql

:scecloud
COLOR 16
cls
echo.
ECHO.                                     MENU  SCECLOUD
ECHO.
ECHO.                                 O QUE VOCE DESEJA FAZER?                                    _                                  
Echo.           ==================================================================              (`  ).                   _    
echo.                                                                                          (     ).              .:(`  )`.      
Echo.                         * 1. INSTALAR integracaocloud         *             )           _(       '`.          :(   .    )           
echo.                                                                                      .=(`(      .   )     .--  `.  (    ) )      
Echo.                         * 2. CRIAR TAREFA PARA O LINKER       *                    ((    (..__.:'-'   .+(   )   ` _`  ) )       
echo.                                                                             `.     `(       ) )       (   .  )     (   )  ._   
echo.                         * 3. Sair                             *               )      ` __.:'   )     (   (   ))     `-'.-(`  ) 
echo.          =================================================================== )  )  ( )       --'       `- __.'         :(      )) 
echo.                                                                             .-'  (_.'          .')                    `(    )  ))
Echo.                                                                                                (_  )                     ` __.:'      
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto integracao
IF %opcao% EQU 2 goto tarefa
If %opcao% EQU 3 goto escolhecloud
IF %opcao% EQU 4 goto inv
IF %opcao% EQU 5 goto inv
If %opcao% equ 6 goto inv
If %opcao% equ 7 goto inv
If %opcao% equ 8 goto inv
If %opcao% equ 9 goto inv
If %opcao% equ 0 goto inv


:integracao
echo off
cls
IF EXIST "C:\SCE\integracaocloud" (GOTO naomexecloud) ELSE (GOTO criarcloud)

:naomexecloud
color 4E
echo.                             	ERRO!!!!!!!!!!!!!!!!!!!
echo.                                                                   ,        ,
echo.                                                                  /(        )`
echo.            ARQUIVOS NAO MOVIDOS, VOCE JA TEM ARQUIVOS NA PASTA   \ \___   / !
echo.                                                                  /- _  `-/  '
echo.                                                                 (/\/ \ \   /\
echo.                        DESEJA ATUALIZAR OS EXISTENTES?          / /   ! `    \
echo.                                                                 O O   ) /    !
echo.                                * 1. SIM *                       `-^--'`/     '
echo.                                                                (_.)  _  )   /
echo.                                * 2. NAO *                        `.___/`    /
echo.                                                                   `-----' /
echo.                                                      (----.     __ / __   \
echo.                                                  (----!====O)))==) \) /====
echo.                                                      (----'    `--' `.__,' \
echo.                                                                   !        !
echo.                                                                    \       /
echo.                                                               ______( (_  / \______
echo.                                                             ,'  ,-----'   !        \
echo.                                                             `--{__________)        \/
echo.
Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto updatecloud
IF %opcao% EQU 2 goto scecloud
IF %opcao% EQU 3 goto inv
IF %opcao% EQU 4 goto inv
 

:criarcloud
COLOR 4F
echo off

@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:loopMOVcloud1
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimMOVcloud1

cls
COLOR 30
echo.
ECHO.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !) ) ) )____________________________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !______________) ) ) )______________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                    
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_____________________) ) ) )_______________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________) ) ) )___________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/     
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________) ) ) )________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________________) ) ) )___!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________________) ) ) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                                                
ECHO.                             ___   _                                      (  ( ( ___   _ ))  ) )
ECHO.                            [(_)] !=!                                   ( ((    [(_)] !=!  ) ) ))
ECHO.                             '-`  !_!                                     (( (   '-`  !_!  )) )
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !________________________________________________) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls  
GOTO loopMOVcloud1

:fimMOVcloud1
cls
XCOPY /Y /G /H /I  /I "C:\SCE\AutoMagazine\Network\4.1\Support\SCECloud\integracaocloud" "C:\SCE\integracaocloud"
DEL "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000 citycol.exe"
DEL "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000 velho.exe"

cls
goto scecloud

:updatecloud
COLOR 4F
cls
@echo off
SET num1=0
SET num2=1 
SET Terminator=6

:loopMOVcloud2
SET /a num1= %num1% + %num2%
IF %num1%==%Terminator% GOTO fimMOVcloud2

cls
COLOR 30
echo.
ECHO.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !) ) ) )____________________________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !______________) ) ) )______________________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                    
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_____________________) ) ) )_______________________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________) ) ) )___________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/     
ping localhost -n 1 >nul
cls
echo.
ECHO.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________) ) ) )________!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !_________________________________________) ) ) )___!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
echo.
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.                                                     
ECHO.                             ___   _                                             ___   _
ECHO.                            [(_)] !=!                                           [(_)] !=!
ECHO.                             '-`  !_!                                            '-`  !_!
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !____________________________________________) ) ) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls
ECHO.                                                     MOVENDO ARQUIVOS
ECHO.
ECHO.
ECHO.                                                                                
ECHO.                             ___   _                                      (  ( ( ___   _ ))  ) )
ECHO.                            [(_)] !=!                                   ( ((    [(_)] !=!  ) ) ))
ECHO.                             '-`  !_!                                     (( (   '-`  !_!  )) )
ECHO.                           /mmm/  /                                            /mmm/  /
ECHO.                                  !________________________________________________) )!
ECHO.                                                        !            !            !
ECHO.                                                    ___  \_      ___  \_      ___  \_
ECHO.                                                   [(_)] !=!    [(_)] !=!    [(_)] !=!
ECHO.                                                    '-`  !_!     '-`  !_!     '-`  !_!
ECHO.                                                   /mmm/        /mmm/        /mmm/
ECHO.     
ping localhost -n 1 >nul
cls  
GOTO loopMOVcloud2

:fimMOVcloud2

XCOPY /Y /G /H /I  /I "C:\SCE\AutoMagazine\Network\4.1\Support\SCECloud\integracaocloud" "C:\SCE\integracaocloud"
cls
echo.
echo.
DEL "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000 citycol.exe"
cls
echo.
echo.
DEL "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000 velho.exe"
cls
echo.
echo.
XCOPY /Y /G /H /I   /I "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000.exe" "C:\SCE\AutoMagazine\Linker Filial"

cls
goto scecloud

:errocloud
cls
color 4E
echo.                                   ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.                     PARECE QUE VOCE NAO BAIXOU A VERSAO CORRETA. 
echo.                                                                   ,        ,
echo.                                                                  /(        )`
echo.                                                                  \ \___   / !
echo.               VOLTE E BAIXE A VERSAO CORRETA E RODE O PROGRAMA   /- _  `-/  '
echo.                                                                 (/\/ \ \   /\
echo.                                                                 / /   ! `    \
echo.                                                                 O O   ) /    !
echo.                                                                 `-^--'`/     '
echo.                                                                (_.)  _  )   /
echo.                                                                 `.___/`    /
echo.                                                                   `-----' /
echo.                                                      (----.     __ / __   \
echo.                                                  (----!====O)))==) \) /====
echo.                                                      (----'    `--' `.__,' \
echo.                                                                   !        !
echo.                                                                    \       /
echo.                                                               ______( (_  / \______
echo.                                                             ,'  ,-----'   !        \
echo.                                                             `--{__________)        \/

goto sair

:tarefa
cls
ECHO OFF
TITLE FERRAMENTAS SUPORTE SCE --- CRIAR TAREFA PARA LINKER
COLOR 4F
echo.
echo.                  ESTAMOS CRIANDO A TAREFA PARA EXECUCAO DO LINKER SCECLOUD
ECHO.
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
ping localhost -n 3  >nul
CLS

NET START Schedule

schtasks /create /sc MINUTE /MO 10 /TN Linker /TR "'C:\SCE\AutoMagazine\Linker Filial\Linker 2000.exe'" /SD 01/01/1999 /ST 06:00 /k /f
goto taskfim

:taskfim
CLS
color F0
echo.
echo.                             TAREFA CRIADA!!
ECHO.
ECHO.                AGORA, ESTAMOS ABRINDO O LINKER SCECLOUD
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 

"C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000.exe"
ping localhost -n 5  >nul

GOTO fimtask

:fimtask
CLS
color F0
echo.
echo.                              PROCESSO FINALIZADO!!
ECHO.
ECHO.
ECHO.                   ABRINDO AGENDADOR DE TAREFAS PARA EDIÇÃO
echo.                                  _nnnn_                      
echo.                                 dGGGGMMb     ,""""""""""""""""""".
echo.                                @p~qp~~qMb    ! AGUARDE UM POUCO  !
echo.                                M!@!!@) M!   _;...................'
echo.                                @,----.JM! -'
echo.                               JS^\__/  qKL
echo.                              dZP        qKRb
echo.                             dZP          qKKb
echo.                            fZP            SMMb
echo.                            HZM            MMMM
echo.                            FqM            MMMM
echo.                          __! ".        !\dS"qML
echo.                          !    `.       ! `' \Zq
echo.                         _)      \.___.,!     .'
echo.                         \____   )MMMMMM!   .'
echo.                              `-'       `--' 
taskschd.msc

goto fimmod

:apps   
COLOR E1
cls
ECHO.
ECHO.
ECHO.                                 CENTRAL DE APPS
Echo.           ==================================================================
ECHO.
ECHO.                         * 1. APP - ABRIR BANCO NFCELOCALDB   * 
ECHO.    
ECHO.                         * 2. APP - AJUSTA NCM                *
ECHO.
ECHO.                         * 3. APP - BALANCA TESTE 1           *
ECHO.
ECHO.                         * 4. APP - BALANCA TESTE 2           * 
ECHO.
ECHO.                         * 5. APP - CORRIGIR AS REFERENCIAS   * 
ECHO.    
ECHO.                         * 6. APP - EXTRAIR MSI               *
ECHO.
ECHO.                         * 7. APP - REGSCE                    * 
ECHO.
ECHO.                         * 8. APP - SERIALSCE                 * 
ECHO.
ECHO.                         * 9. APAGAR ARQUIVOS DA AUDIT        *
ECHO.
ECHO.                         * 10. SAIR                           *
echo. 
Echo.          ===================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto nfcelocal
IF %opcao% EQU 2 goto ajncm
IF %opcao% EQU 3 goto balanca1
If %opcao% EQU 4 goto balanca2
If %opcao% EQU 5 goto corrref
If %opcao% EQU 6 goto msi
If %opcao% EQU 7 goto regsce
If %opcao% EQU 8 goto serialsce
If %opcao% EQU 9 goto audit
If %opcao% equ 10 goto escolhecloud
If %opcao% equ 11 goto inv
If %opcao% equ 12 goto inv
If %opcao% equ 13 goto inv
If %opcao% equ 14 goto inv
If %opcao% equ 15 goto inv
If %opcao% equ 0 goto inv

:nfcelocal
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- ABRIR BANCO NFCELOCALDB
echo.
echo.
echo.                          ABRINDO BANCO NFCELOCALDB            
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\NFCeLocalDB.exe

goto apps

:ajncm
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- AJUSTA NCM  
echo.
echo.
echo.                               VAMOS AJUSTAR OS NCM              
echo.           
ECHO.                                        AGUARDE
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

CLS
C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\Ajusta_NCM.exe
CLS
goto apps

:balanca1
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- TESTE BALANCA 01
echo.
echo.
echo.                          VAMOS FAZER O TESTE DA BALANCA 01           
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

CLS
C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\Balanca_teste1.exe
goto apps

:balanca2
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- TESTE DA BALANCA 02
echo.
echo.
echo.                      VAMOS FAZER O TESTE DA BALANCA 02            
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\Balanca_teste2.exe
CLS
goto apps

:corrref
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR REFERENCIAS
echo.
echo.
echo.                       VAMOS CORRIGIR REFERENCIAS             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\Corrigir_referencias.exe

CLS
goto apps

:msi
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- EXTRAIR MSI
echo.
echo.
echo.                                VAMOS EXTRAIR MSI              
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\Extrair_MSI.exe
CLS
goto apps

:regsce
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR REGSCE
echo.
echo.
echo.                                 CORRIGIR REGSCE             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\RegSCE.exe
CLS
goto apps

:serialsce
cls
Echo off
COLOR B0
TITLE FERRAMENTAS SUPORTE SCE --- ABRIR SERIAL SCE
echo.
echo.
echo.                                 ABRIR SERIAL SCE             
echo.          
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ***************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *****************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ****************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. ************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. **************************************************************************************
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
ECHO.               CASO DE ALGUM ERRO, REZE E FACA O PROCESSO MANUALMENTE
ECHO.
echo. *******************************************************************************************
echo.
echo.
echo.
ping localhost -n 3 >nul
cls

C:\SCE\AutoMagazine\Network\4.1\Extras\Apps\SerialSCE.exe

CLS
goto apps

:audit
cls
Echo off
COLOR 1A
TITLE FERRAMENTAS SUPORTE SCE --- LIMPANDO ARQUIVOS DA AUDIT
echo.

forfiles -p "C:\Nfe\Audit" -s -d -90 -c "cmd /c del /f /q @path"

CLS
echo.
echo.
ECHO.                              VOCE TEM PASTAS VAZIAS NO CAMINHO C:\Nfe\Audit
ECHO.                                          LOCALIZE E EXCLUA
ECHO.              _
ECHO.             ! !
ECHO.             ! !===( )   //////
ECHO.             !_!   !!!  ! o o!
ECHO.                    !!! ( c  )                  ____
ECHO.                     !!! \= /                  !!   \_
ECHO.                      !!!!!!                   !!     !
ECHO.                      !!!!!!                ...!!__/!-"
ECHO.                      !!!!!!             __!________!__
ECHO.                       !!!             !______________!
ECHO.                       !!!             !! !!      !! !!
ECHO.                       !!!             !! !!      !! !!
ECHO.-----------------------!!!-------------!!-!!------!!-!!-------
ECHO.                       !__)            !! !!      !! !!
ECHO.
ping localhost -n 6 >nul
cls
echo.
echo.
echo.
ECHO.                 DESEJA PROGRAMAR PARA O WINDOWS APAGAR AUTOMATICAMENTE ESSES ARQUIVOS?
Echo.           =================================================================================
echo.
ECHO.                              1- SIM, NAO QUERO TER TRABALHO DEPOIS
ECHO.                              2- NAO... DEIXA QUE EU FACO
echo.
Set /p opcao= E AI? O QUE VC QUER? 
Echo. ------------------------------
IF %opcao% EQU 1 goto tarefaaudit
IF %opcao% EQU 2 goto mtoauto
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 0 goto inv

:tarefaaudit         
cls
ECHO OFF
TITLE FERRAMENTAS SUPORTE SCE --- CRIAR TAREFA PARA LIMPEZA
COLOR 4F
echo.
echo.                      ESTAMOS CRIANDO A TAREFA PARA LIMPEZA DA PASTA
ECHO.
ECHO.
ECHO.                                      AGUARDE UM POUCO...
ECHO.
ECHO.
ping localhost -n 3  >nul
CLS

NET START Schedule

schtasks /CREATE /SC DAILY /MO 90  /TN Limp_Audit /TR "'C:\SCE\AutoMagazine\Network\4.1\Extras\audit.bat'" /SD 01/01/1999 /ST 14:00 /f
goto verif


:sair
CLS
title FIM... ADEUS... GODBYE... ADIOS... VOLTE LOGO

COLOR 75
cls
echo.
echo.
ECHO.                                        TENHA UM OTIMO DIA DE TRABALHO!!!
ECHO.                                                                       .------.------.    
ECHO.                        +-------------+                                !      !      !    
ECHO.                        !             !                                !      !      !    
ECHO.                        !             !        _           _ _         !      !      !    
ECHO.                        !             !     ___))         [  ! \___    !      !      !    
ECHO.                        !             !     ) //o          ! !     \   !      !      !    
ECHO.                        !             !  _ (_    )         ! !      ]  !      !      !    
ECHO.                        !          __ ! (O)  \__/         ! ! ____/   '------'------'    
ECHO.                        !         /  o! [/] /   \)        [__!/_                          
ECHO.                        !             ! [\]!  ( \         __/___\_____                    
ECHO.                        !             ! [/]!   \ \__  ___!            !                   
ECHO.                        !             ! [\]!    \___E/%%/!____________!_____              
ECHO.                        !             ! [/]!=====__   (_____________________)             
ECHO.                        !             ! [\] \_____ \    !                  !              
ECHO.                        !             ! [/========\ !   !                  !              
ECHO.                        !             ! [\]     []! !   !                  !              
ECHO.                        !             ! [/]     []! !_  !                  !              
ECHO.                        !             ! [\]     []!___) !                  !              
ECHO.                      ====================================================================

ping localhost -n 3 >nul
Exit

:inv
TITLE QUE PENA... VOCE ERROU
CLS
COLOR 4E
echo.
Echo.               ====================================================
Echo.                PARECE QUE ALGUMA COISA NAO SAIU COMO ESPERADO :(
ECHO.
ECHO.                AGORA... ERRO MEU OU SEU? EIS A QUESTAO...
ECHO.              _
ECHO.             ! !
ECHO.             ! !===( )   //////
ECHO.             !_!   !!!  ! o o!
ECHO.                    !!! ( c  )                  ____
ECHO.                     !!! \= /                  !!   \_
ECHO.                      !!!!!!                   !!     !
ECHO.                      !!!!!!                ...!!__/!-"
ECHO.                      !!!!!!             __!________!__
ECHO.                       !!!             !______________!
ECHO.                       !!!             !! !!      !! !!
ECHO.                       !!!             !! !!      !! !!
ECHO.-----------------------!!!-------------!!-!!------!!-!!-------
ECHO.                       !__)            !! !!      !! !!
ECHO.
ECHO.         De qualquer forma, voce tera que recomecar...
echo.
Pause
Goto verif

:erroarqprog
cls
color 4E
echo.                                   ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.                             EH ISSO QUE DA NAO LER OS AVISOS!!
echo.                                                                   ,        ,
echo.                                                                  /(        )`
echo.                                                                  \ \___   / !
echo.            ESSE PROGRAMA *NAO* FUNCIONA EM INSTALACOES FEITAS NO /- _  `-/  '
echo.                           ARQUIVO DE PROGRAMAS                  (/\/ \ \   /\
echo.                                                                 / /   ! `    \
echo.                                                                 O O   ) /    !
echo.                                                                 `-^--'`/     '
echo.                                                                (_.)  _  )   /
echo.                                                                 `.___/`    /
echo.        SINTO MUITO, MAS ESSAS INSTALACOES SAO VELHAS...           `-----' /
echo.                                                      (----.     __ / __   \
echo.                                                  (----!====O)))==) \) /====
echo.                                                      (----'    `--' `.__,' \
echo.                                                                   !        !
echo.                                                                    \       /
echo.                                                               ______( (_  / \______
echo.                                                             ,'  ,-----'   !        \
echo.                                                             `--{__________)        \/
pause
goto sair

:fimmod
CLS
title JA VAI SAIR? POXA, FIQUE MAIS UM POUCO...
COLOR 75
echo.
echo.                              PROCESSO FINALIZADO!!
ECHO.
ECHO.
ECHO.                           GOSTARIA DE IR PARA O MENU?
ECHO.
ECHO.                                   1 - SIM
ECHO.                                   2 - NAO                             
echo.
echo.
Set /p opcao= Escolha uma opcao:  
echo.
Echo. ------------------------------
If %opcao% equ 1 goto estouserv
If %opcao% equ 2 goto sair
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 5 goto inv
If %opcao% equ 6 goto inv
If %opcao% equ 7 goto inv
If %opcao% equ 8 goto inv
If %opcao% equ 9 goto matrix
If %opcao% equ 0 goto sw

:estouserv
IF %PC%==ESTACAO ( goto menuest ) else (goto escolhecloud)

:mtoauto
CLS
echo.
echo.
echo.                          HMMM MUITO AUTO SUFICIENTE HEIN...
echo.                                                                   ,        ,
echo.                                                                  /(        )`
echo.                                                                  \ \___   / !
echo.                         ASSIM QUE EH BOM...                      /- _  `-/  '
echo.                                                                 (/\/ \ \   /\
echo.                                                                 / /   ! `    \
echo.                                                                 O O   ) /    !
echo.                                                                 `-^--'`(     '
echo.                                                                (_.)  _  )   /
echo.                                                                 `.___/`    /
echo.                                                                   `-----' /
echo.                                                      (----.     __ / __   \
echo.                                                  (----!====O)))==) \) /====
echo.                                                      (----'    `--' `.__,' \
echo.                                                                   !        !
echo.                                                                    \       /
echo.                                                               ______( (_  / \______
echo.                                                             ,'  ,-----'   !        \
echo.                                                             `--{__________)        \/

ping localhost -n 5 >nul 
goto verif

:matrix
@echo off
color 0a
:A
echo 7 f s o 0 s 2 7 A c 9 2 D 4 h H o q 5 Q ******FORMAT C: *****O P 9 s o 1 s c x s 1 l 3 d q 5 o l p a S d 2 8 a p i 3 9 8 d 2 k i p q d z 9 2 7 x 8 s p 3 1 f S 3 a A d k
ping localhost -n 1>nul
echo 8 4 x 8 s p 3 1 f S 3 a j ia w a e v c x 2 4 f a j i k l p o 8 h i l P 0 8 4 x 8 s p 3 1 f S 3 a j i i l P 0 8 4 x 8 s p 3 1 f S 3 a j i i l P 0 8 4 x 8 s p 3 1 f S 3 a j i
ping localhost -n 1>nul 
echo  i s 8 0 A X S k p q o s 8 3 8 s a q   NAO TENTE FECHAR  P C a 2 1 c o d i l   OU  P 0 8 4 x 8 s p   SEU PC SERA FORMATADO   a l c x z p q e d v 0 3 9 D F 3 1 f x 8 s p 3 1 f S 3 a S 3 v c s
ping localhost -n 1>nul 
ECHO A c 9 2 D 4 h H o q  1 c o d i l P 0  o d i l P 0 0 8 4 x 8 s p a l c  x 8 s p 3 1 f S 3 ax z p q e d 2 8 a p i 3 9 8 d  x 8 s p a l c  z 9 2 7 A d k i q p i 
ping localhost -n 1>nul 
ECHO 8 4 x 8 s p 3 1 f S 3 a j ia w a e v c x 2 4 f a j i k l p o 8 h i l P 0 8 4 x 8 s p 3 1 f S 3 a j i i l P 0 8 4 x 8 s p 3 1 f S 3 a j i i l P 0 8 4 x 8 s p 3 1 f S 3 a j i
goto A


:sw
TITLE SCE SISTEMAS EASTER EGG APRESENTA...
cls
dism /online /Enable-Feature /FeatureName:TelnetClient
COLOR 06
goto swver

:swver

TITLE STAR WARS...

cls
telnet towel.blinkenlights.nl
