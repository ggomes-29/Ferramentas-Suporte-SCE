echo off
TITLE FERRAMENTAS SUPORTE SCE --- VERSAO 2022.02.16.1249
SET ver=2022.02.16.1249
SET DATE=%DATE%
IF EXIST "C:\SCE\AutoMagazine\Network\4.1\Support\SCECloud\integracaocloud" (SET vers=SCECloud) ELSE (SET vers=Automagazine)

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


goto servestver

:servestver
REM  AQUI VERIFICO SE É O SERVIDOR OU ESTAÇÃO

IF EXIST "C:\SCE\AutoMagazine\Network" (SET PC=SERVIDOR) ELSE ( SET PC=ESTACAO)

goto processver

:processver
REM  AQUI VERIFICO SE É X86 OU X64
IF %PROCESSOR_ARCHITECTURE% == x86 (SET cpu=x86) ELSE (SET cpu=x64)

goto lembrete

:lembrete
Echo off
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
echo.
ECHO.                                FERRAMENTAS DE AUXILIO AO SUPORTE
echo.
echo.                                         VERSAO: %vers%
ECHO.
Echo.                                     Ola %computername% !!  :-) 
COLOR 71
echo. **********************************************************************************************************
echo.                                   ANTES DE COMECARMOS...
echo.
echo. 1 - Nao esqueca de executar como Administrador
echo.
ECHO. 2 - Esse programa so funciona em instalacoes feitas na raiz do Windows (c:/sce)
echo.
echo. 3 - Esse programa mexe com registros do Windows portanto, ESPERE a indicacao para fechar a janela
ECHO.
ECHO. 4 - Maximize a janela pra visualizar melhor os menus e seja feliz :-)
echo.
echo. **********************************************************************************************************
echo.
PAUSE
goto verif

:verif
IF %PC%==SERVIDOR ( goto escolhecloud ) ELSE ( goto menuinest )

:escolhecloud

IF %vers%==SCECloud ( goto menuservcloud ) ELSE ( goto menuservamg )
menuservcloud

:menuservamg
Echo off
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DO SERVIDOR
COLOR 1f
cls
Echo. MENU DE TAREFAS  Automagazine Classico -  %PC%  - VERSAO %ver%
ECHO.
ECHO. WINDOWS VERSAO - %PROCESSOR_ARCHITECTURE%
ECHO.
ECHO.
ECHO.                                 O QUE VOCE DESEJA FAZER?
Echo.           ==================================================================
echo.
echo.
Echo.                         * 1. DES e REGISTRAR  SCRIPT ENGINE * 
echo.    
echo.                         * 2. REGISTRAR  SCRIPT .ISCE        *
echo.
Echo.                         * 3. LIMPAR CONTIGENCIA             * 
echo.
Echo.                         * 4. IMPRIMIR CUPOM UNICO EM CONT   * 
echo.    
echo.                         * 5. CONFIGURAR FIREWALL            *
echo.
Echo.                         * 6. CRIAR ANYDESK                  * 
echo.
Echo.                         * 7. REGISTRAR TLS 1.2              * 
echo.    
echo.                         * 8. PROBLEMA COM IMP EM REDE       *
echo.
Echo.                         * 9. CONF QUANT EMITIDA EM CONT     *
echo.
Echo.                         * 10. PING SERVIDOR - ESTACAO       *
echo.                     
echo.                         * 11. TAREFAS SQL SERVER            *
echo.
echo.                         * 12. APPS E TAREFAS                *
echo.
echo.                         * 13. Sair                          *
Echo.          ===================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto processserv
IF %opcao% EQU 2 goto isce
If %opcao% EQU 3 goto limpcont
If %opcao% EQU 4 goto contun
If %opcao% EQU 5 goto firewall
If %opcao% EQU 6 goto anydesk
If %opcao% EQU 7 goto tls
If %opcao% EQU 8 goto corrigeimp
If %opcao% EQU 9 goto quantcont
If %opcao% EQU 10 goto ping
If %opcao% EQU 11 goto menusql
If %opcao% EQU 12 goto apps
If %opcao% EQU 13 goto Sair
If %opcao% EQU 15 goto matrix
If %opcao% EQU 16 goto sw
If %opcao% equ 0 goto inv

:menuservcloud
Echo off
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DO SERVIDOR
COLOR 1f
cls
Echo. MENU DE TAREFAS SCECloud  - %PC%  - VERSAO %ver%  %vers%
ECHO.
ECHO. WINDOWS VERSAO - %PROCESSOR_ARCHITECTURE%
ECHO.
ECHO.
ECHO.                                 O QUE VOCE DESEJA FAZER?
Echo.           ==================================================================
echo.
echo.
Echo.                         * 1. DES e REGISTRAR  SCRIPT ENGINE * 
echo.    
echo.                         * 2. REGISTRAR  SCRIPT .ISCE        *
echo.
Echo.                         * 3. LIMPAR CONTIGENCIA             * 
echo.
Echo.                         * 4. IMPRIMIR CUPOM UNICO EM CONT   * 
echo.    
echo.                         * 5. CONFIGURAR FIREWALL            *
echo.
Echo.                         * 6. CRIAR ANYDESK                  * 
echo.
Echo.                         * 7. REGISTRAR TLS 1.2              * 
echo.    
echo.                         * 8. PROBLEMA COM IMP EM REDE       *
echo.
Echo.                         * 9. CONF QUANT EMITIDA EM CONT     *
echo.
Echo.                         * 10. PING SERVIDOR - ESTACAO       *
echo.                     
echo.                         * 11. TAREFAS SQL SERVER            *
echo.
echo.                         * 12. APPS E TAREFAS                *
echo.
echo.                         * 13. SCECLOUD                      *
ECHO.
echo.                         * 14. Sair                          *
Echo.          ===================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto processserv
IF %opcao% EQU 2 goto isce
If %opcao% EQU 3 goto limpcont
If %opcao% EQU 4 goto contun
If %opcao% EQU 5 goto firewall
If %opcao% EQU 6 goto anydesk
If %opcao% EQU 7 goto tls
If %opcao% EQU 8 goto corrigeimp
If %opcao% EQU 9 goto quantcont
If %opcao% EQU 10 goto ping
If %opcao% EQU 11 goto menusql
If %opcao% EQU 12 goto apps
If %opcao% EQU 13 goto scecloud
If %opcao% EQU 14 goto Sair
If %opcao% EQU 15 goto matrix
If %opcao% EQU 16 goto sw
If %opcao% equ 0 goto inv


:processserv
IF %cpu% EQU x86 goto menuservamg86
IF %cpu% NEQ x86 goto menuservamg64 

:menuinest
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DA ESTACAO
COLOR b0
CLS
ECHO.                    
ECHO.                                        ANTES DE COMECARMOS...
ECHO.

Set /p servname=                       DIGITE O NOME DO SERVIDOR, POR FAVOR:  
goto menuest

:menuest 
Echo off 
servname==%servname%
CLS
TITLE FERRAMENTAS SUPORTE SCE --- MENU PRINCIPAL DA ESTACAO 
COLOR 9f
cls
Echo. MENU DE TAREFAS  %PC%  - VERSAO %ver%
ECHO.
ECHO. WINDOWS VERSAO - %PROCESSOR_ARCHITECTURE%
ECHO.
ECHO.
ECHO.                                 O QUE VOCE DESEJA FAZER?
Echo.           ==================================================================
echo.
echo.
Echo.                         * 1. CRIAR ESTACAO                   * 
echo.    
echo.                         * 2. DES e REGISTRAR  SCRIPT ENGINE  *
echo.
Echo.                         * 3. REGISTRAR  SCRIPT .ISCE         *
echo.
echo.                         * 4. LIMPAR CONTIGENCIA              * 
echo.
Echo.                         * 5. IMPRIMIR CUPOM UNICO EM CONT    * 
echo.    
echo.                         * 6. CONFIGURAR FIREWALL             *
echo.
Echo.                         * 7. ABRIR ANYDESK                   * 
echo.
Echo.                         * 8. REGISTRAR TLS 1.2               * 
echo.    
echo.                         * 9. PROBLEMA COM IMP EM REDE        *
echo.
Echo.                         * 10. CONF QUANT EMITIDA EM CONT     *
echo.
Echo.                         * 11. PING SERVIDOR - ESTACAO        *
echo.
echo.                         * 12. Sair                           *
echo. 
Echo.          ===================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto criest
IF %opcao% EQU 2 goto processest
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

:processest

IF %cpu% EQU x86 goto menuestin86
IF %cpu% NEQ x86 goto menuestin64 

:menuservamg86
TITLE FERRAMENTAS SUPORTE SCE --- DESREGISTRA
ECHO off
TITLE DESREGISTRA - SERVIDOR
COLOR CF
cls
ECHO.
ECHO.
ECHO.                                VOCE ESTA NO MENU DO %PC% %cpu%
ECHO.
ECHO.                           CARREGANDO MODULOS, POR FAVOR AGUARDE
ping localhost -n 3  >nul
CLS
ECHO.
ECHO.
ECHO.                    VOCE JA VAI SER REDIRECIONADO AO MODULO DESREGISTRA
ECHO.
ECHO.                                          AGUARDE... 
ping localhost -n 4  >nul
GOTO desserv86


:desserv86
rem ---------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO.
ECHO                     ===================================================
ECHO                     * DESREGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%  *
ECHO                     ===================================================
ping localhost -n .10 >nul
ECHO off

CD C:\
CD C:\Windows\System32

regsvr32 C:\Windows\System32\SCEScriptEngine.dll /u

rem ---------------------------------------------------------------------------
COLOR 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

rem ------------------------------------------------------------------------------------
COLOR DF
cls
ECHO.
ECHO.
ECHO.                                    **SCRIPT ENGINE DESREGISTRADA**
ECHO.
ECHO.                                AGUARDE ATE SER REDIRECIONADO AO REGISTRO
ECHO.
ping localhost -n 3 >nul
cls
goto reserv86
rem --------------------------------------------------------------------------------------

:reserv86
TITLE FERRAMENTAS SUPORTE SCE --- REGISTRANDO
rem --------------------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO                        =================================================
ECHO                        * REGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%   *
ECHO                        =================================================
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul

rem --------------------------------------------------------------------------------------
color 90
ECHO.
ECHO.
ECHO.
ECHO                             SUBSTITUINDO DLL ORIGINAL PELA NOVA...
ping localhost -n 2  >nul
ECHO.
ECHO.
ECHO.


XCOPY /Y C:\SCE\AutoMagazine\Network\4.1\Support\SCEScriptEngine.dll  C:\Windows\System32

rem --------------------------------------------------------------------------------------
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL**
CLS
CD C:\
CD C:\Windows\System32

regsvr32 C:\Windows\System32\SCEScriptEngine.dll 
ping localhost -n 3  >nul

rem --------------------------------------------------------------------------------------
color 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

rem -----------------------------------------------------------------------------
color 1F
ECHO.
ECHO.
ECHO.                                ** ScriptEngine REGISTRADA com sucesso! **
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul

goto fimmod

:menuservamg64
ECHO off
TITLE DESREGISTRA - SERVIDOR
COLOR CF
cls
ECHO.
ECHO.
ECHO.                               VOCE ESTA NO MENU DO %PC% %cpu%
ECHO.
ECHO.                           CARREGANDO MODULOS, POR FAVOR AGUARDE
ping localhost -n 3  >nul
CLS
ECHO.
ECHO.
ECHO.                    VOCE JA VAI SER REDIRECIONADO AO MODULO DESREGISTRA
ECHO.
ECHO.                                         AGUARDE... 
ping localhost -n 4  >nul
GOTO desserv64

:desserv64
rem ---------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO.
ECHO.                     ===================================================
ECHO.                     * DESREGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%  *
ECHO.                     ===================================================
ECHO.
ECHO.                      SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.
ping localhost -n 3  >nul
ECHO off

CD C:\
CD C:\Windows\System32

regsvr32 C:\Windows\SysWOW64\SCEScriptEngine.dll /u

regsvr32 C:\Windows\System32\SCEScriptEngine.dll /u


rem ---------------------------------------------------------------------------
COLOR 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
rem ------------------------------------------------------------------------------------
COLOR DF
ECHO.
ECHO.
ECHO.                                    **SCRIPT ENGINE DESREGISTRADA**
ECHO.
ECHO.                                AGUARDE ATE SER REDIRECIONADO AO REGISTRO
ECHO.
ping localhost -n 3 >nul
cls
goto reserv64
rem --------------------------------------------------------------------------------------

:reserv64
rem --------------------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO                        =================================================
ECHO                        * REGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%   *
ECHO                        =================================================
ECHO.
ECHO.
ECHO.


rem --------------------------------------------------------------------------------------
color 90
ECHO.
ECHO.
ECHO.
ECHO                             SUBSTITUINDO DLL ORIGINAL PELA NOVA...
ECHO.
ECHO.                      SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.
ping localhost -n 3 >nul
ECHO.
ECHO.
ECHO.


XCOPY /Y C:\SCE\AutoMagazine\Network\4.1\Support\SCEScriptEngine.dll  C:\Windows\SysWOW64
XCOPY /Y C:\Windows\SysWOW64\SCEScriptEngine.dll  C:\Windows\System32


rem --------------------------------------------------------------------------------------
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL**
CLS


regsvr32 C:\Windows\SysWOW64\SCEScriptEngine.dll 


regsvr32 C:\Windows\System32\SCEScriptEngine.dll


ping localhost -n .10 >nul

rem --------------------------------------------------------------------------------------
color 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

rem -----------------------------------------------------------------------------
color 1F
ECHO.
ECHO.
ECHO.                                **ScriptEngine REGISTRADA com sucesso!**
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul

goto fimmod

:menuestin86
ECHO off
TITLE DESREGISTRA - ESTACAO
COLOR CF
cls

echo.
ECHO. 			                     VOCE ESTA NO MENU %PC%
ECHO.
ECHO. 				 	     CARREGANDO MODULOS, POR FAVOR AGUARDE
ping localhost -n 2  >nul
CLS

ECHO.                    
ECHO.                    VOCE JA VAI SER REDIRECIONADO AO MODULO DESREGISTRA
ECHO.
ECHO.                                          AGUARDE... 
ping localhost -n 2  >nul
CLS
COLOR 02
ECHO.                    
ECHO.                              AGUARDE ENQUANTO CARREGAMOS O MODULO...
ECHO.

GOTO desest86


:desest86
COLOR 5F
Cls
ECHO.
ECHO.
ECHO                     ===================================================
ECHO                     * DESREGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%  *
ECHO                     ===================================================
ping localhost -n 3  >nul
ECHO off

CD C:\
cd c:\
CD C:\Windows\System32

regsvr32 C:\Windows\System32\SCEScriptEngine.dll /u

COLOR 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

rem ------------------------------------------------------------------------------------
COLOR DF
cls
ECHO.
ECHO.
ECHO.                                    **SCRIPT ENGINE DESREGISTRADA**
ECHO.
ECHO.                                                AGUARDE...
ECHO.
ping localhost -n 3 >nul
cls
goto reest86

:reest86
rem --------------------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO                        =================================================
ECHO                        * REGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%   *
ECHO                        =================================================
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul
cls

rem --------------------------------------------------------------------------------------
color 90
ECHO.
ECHO.
ECHO.
ECHO                             SUBSTITUINDO DLL ORIGINAL PELA NOVA...
ping localhost -n 3  >nul
ECHO.
ECHO.
ECHO.

MOVE /Y \\%servname%\Network\4.1\Support\SCEScriptEngine.dll  C:\Windows\System32

rem --------------------------------------------------------------------------------------
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL**
CLS
CD C:\
CD C:\Windows\System32

regsvr32 C:\Windows\System32\SCEScriptEngine.dll 
ping localhost -n 2  >nul

rem --------------------------------------------------------------------------------------
color 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
goto simnaoest86

:simnaoest86
rem -----------------------------------------------------------------------------
color 1F
ECHO.
ECHO.
ECHO.                                **ScriptEngine REGISTRADA com sucesso!**
ECHO.
ECHO.
ECHO.                                     O SISTEMA ABRE NORMALMENTE?
ECHO.
ECHO.
ECHO.                                                1- SIM
ECHO.                                                2- NAO
ECHO.
Set /p opcao= Digite a opcao                 
Echo. ------------------------------
If %opcao% EQU 1 goto menuest
IF %opcao% EQU 2 goto erroSE86


:erroSE86
COLOR CF
cls
ECHO.
ECHO.
ECHO                                            QUE PENA :( 
ECHO. 
ECHO.                                 VAMOS FAZER O PROCESSO DE FORMA MANUAL
ECHO.
echo.                 **COPIE O SCRIPTENGINE DO SERVIDOR PARA A PASTA C:\SCE\ NA ESTACAO**
ECHO.
ECHO.                         SEM ISSO, O PROGRAMA NAO VAI FUNCIONAR CORRETAMENTE
ping localhost -n 4 >nul
COLOR 5F
CLS
ECHO.
ECHO.                                     DLL COPIADA? TECLE ENTER...
ECHO.
Pause
cls
Goto reest86man

:reest86man
rem --------------------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO                        =================================================
ECHO                        * REGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%   *
ECHO                        =================================================
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul
cls

rem --------------------------------------------------------------------------------------
color 90
ECHO.
ECHO.
ECHO.
ECHO                             SUBSTITUINDO DLL ORIGINAL PELA NOVA...
ping localhost -n 3  >nul
ECHO.
ECHO.
ECHO.

MOVE /Y C:\SCE\SCEScriptEngine.dll  C:\Windows\System32

rem --------------------------------------------------------------------------------------
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL**
CLS
CD C:\
CD C:\Windows\System32

regsvr32 C:\Windows\System32\SCEScriptEngine.dll 
ping localhost -n 2  >nul

rem --------------------------------------------------------------------------------------
color 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

goto simnaoest86

:menuestin64
ECHO off
TITLE DESREGISTRA - ESTACAO
COLOR CF
cls
ECHO.
ECHO.
ECHO.                                     VOCE ESTA NO MENU %PC%
ECHO.
ECHO.                                CARREGANDO MODULOS, POR FAVOR AGUARDE
ping localhost -n 2  >nul
CLS
COLOR 02
ECHO.                    
ECHO.                                AGUARDE ENQUANTO CARREGAMOS O MODULO...
ECHO.

GOTO desest64


:desest64
COLOR 5F
Cls
ECHO.
ECHO.
ECHO.                           ===================================================
ECHO.                     * DESREGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%  *
ECHO.                           ===================================================
ECHO.
ECHO.                      SE APARECER ALGUMA MSG DE ERRO, DESCONSIDERE E PROSSIGA
ECHO.
ping localhost -n 3 >nul
ECHO off

CD C:\
cd c:\
CD C:\Windows\SysWOW64

regsvr32 C:\Windows\SysWOW64\SCEScriptEngine.dll /u

cd c:\
CD C:\Windows\System32
regsvr32 C:\Windows\System32\SCEScriptEngine.dll /u

CD C:\Windows\SysWOW64

COLOR 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

rem ------------------------------------------------------------------------------------
COLOR DF
cls
ECHO.
ECHO.
ECHO.                                    **SCRIPT ENGINE DESREGISTRADA**
ECHO.
ECHO.                                                AGUARDE...
ECHO.
ping localhost -n 3 >nul
cls
Goto reest64

:reest64
rem --------------------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO                        =================================================
ECHO                        * REGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%   *
ECHO                        =================================================
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul
cls

rem --------------------------------------------------------------------------------------
color 90
ECHO.
ECHO.
ECHO.
ECHO                             SUBSTITUINDO DLL ORIGINAL PELA NOVA...
ping localhost -n 3  >nul
ECHO.
ECHO.
ECHO.

XCOPY /Y \\%servname%\Network\4.1\Support\SCEScriptEngine.dll  C:\Windows\SysWOW64
XCOPY /Y C:\Windows\SysWOW64\SCEScriptEngine.dll  C:\Windows\System32




rem --------------------------------------------------------------------------------------
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL**
ping localhost -n 3  >nul
CLS


regsvr32 C:\Windows\SysWOW64\SCEScriptEngine.dll 

regsvr32 C:\Windows\System32\SCEScriptEngine.dll 




rem --------------------------------------------------------------------------------------
color 80
cls
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
goto simnaoest64

:simnaoest64
rem -----------------------------------------------------------------------------
color 1F
TITLE FERRAMENTAS SUPORTE SCE --- FUNCIONOU?
ECHO.
ECHO.
ECHO.                                **ScriptEngine REGISTRADA com sucesso!**
ECHO.
ECHO.
ECHO.                                     O SISTEMA ABRE NORMNALMENTE?
ECHO.
ECHO.
ECHO.                                          1- SIM
ECHO.                                          2- NAO
ECHO.
Set /p opcao= Digite a opcao                 
Echo. ------------------------------
If %opcao% EQU 1 goto menuest
IF %opcao% EQU 2 goto erroSE64
If %opcao% equ 0 goto inv


:erroSE64
TITLE FERRAMENTAS SUPORTE SCE --- QUE PENA...
COLOR CF
cls
ECHO.
ECHO.
ECHO                                            QUE PENA :( 
ECHO. 
ECHO.                                 VAMOS FAZER O PROCESSO DE FORMA MANUAL
ECHO.
echo.                COPIE O SCRIPTENGINE DO **SERVIDOR** PARA A PASTA **C:\SCE\ NA ESTACAO**
ECHO.
ECHO.                         SEM ISSO, O PROGRAMA NAO VAI FUNCIONAR CORRETAMENTE
ping localhost -n 4 >nul
COLOR 5F
CLS
ECHO.
ECHO.                                     DLL COPIADA? TECLE ENTER...
ECHO.
Pause
cls
Goto rees64man

:rees64man
rem --------------------------------------------------------------------------------------
COLOR 5F
Cls
ECHO.
ECHO                        =================================================
ECHO                        * REGISTRANDO SCRIPT ENGINE -> WINDOWS %PROCESSOR_ARCHITECTURE%   *
ECHO                        =================================================
ECHO.
ECHO.
ECHO.
ping localhost -n 3 >nul
cls

rem --------------------------------------------------------------------------------------
color 90
ECHO.
ECHO.
ECHO.
ECHO                             SUBSTITUINDO DLL ORIGINAL PELA NOVA...
ping localhost -n 2  >nul
ECHO.
ECHO.
ECHO.

MOVE /Y C:\SCE\SCEScriptEngine.dll  C:\Windows\SysWOW64
XCOPY /Y C:\Windows\SysWOW64\SCEScriptEngine.dll  C:\Windows\System32

rem --------------------------------------------------------------------------------------
CLS
ECHO.
ECHO.
ECHO.                                      **REGISTRANDO DLL**
CLS

CD C:\
CD C:\Windows\SysWOW64

regsvr32 C:\Windows\SysWOW64\SCEScriptEngine.dll

CD c:\
CD C:\Windows\System32

regsvr32 C:\Windows\System32\SCEScriptEngine.dll 
ping localhost -n 3  >nul

rem --------------------------------------------------------------------------------------
color 80
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

goto simnaoest64

:quantcont
cls
echo off
TITLE FERRAMENTAS SUPORTE SCE --- CORRIGIR QUANTIDADE DE NOTAS EMITIDAS EM CONTIGENCIA
cls
echo.
Date /t
echo.
echo.		   
Echo.                            Ola %computername% !!  :-) 
echo.
COLOR 4F
echo.         CONFIGURANDO A QUANTIDADE DE NOTAS EMITIDAS QUANDO EM CONTIGENCIA
echo.
echo.                                 AGUARDE...
echo.
pause
cls
goto regquant

:regquant
cls
color 16

cls
echo.
echo.
echo.                Editando registros...
ping localhost -n 3 >nul
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v TransmitirNFCeContigenciaQtdeCiclo /t REG_SZ /d 5 /f 
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe  /v TransmitirNFCeContigenciaQtdeCiclo /t REG_SZ /d 5 /f 

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v TransmitirNFCeContigenciaQtdeLimit /t REG_SZ /d 480 /f
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe /v TransmitirNFCeContigenciaQtdeLimit /t REG_SZ /d 480 /f

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v CorrigeDhContigencia /t REG_SZ /d -1 /f
REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe /v CorrigeDhContigencia /t REG_SZ /d -1 /f

color 4F
echo.
echo.                                    Registro criado com sucesso!
echo.      
echo.        AGORA, CASO ENTRE EM CONTIGENCIA, SEU PDV VAI TRANSMITIR UMA QUANTIDADE SEGURA DE NOTAS ... 
echo.
ping localhost -n 4 >nul
cls
goto fimmod

:ping
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
Echo.                            Ola %computername% !!  :-) 
echo.
COLOR 4F
echo.                  VAMOS TESTAR A CONEXAO ENTRE SERVIDOR E ESTACAO
echo.
echo.                           AGUARDE! ESSE PROCESSO VAI DEMORAR
echo.
ping localhost -n 2  >nul
cls

coLOR 02

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
echo.    VAMOS CONFIGURAR SEU PDV PARA EMITIR 1 UNICA VIA EM CASO DE CONTIGENCIA
echo.
echo.                                 AGUARDE...
echo.
ping localhost -n 3 >nul
cls
goto regun

:regun
color 16
cls
echo.
echo.
echo.                Editando registros...
ping localhost -n 3 >nul
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

REG ADD HKLM\SOFTWARE\SCE\SCEExec\NFe /v ImpressaoDanfeDesabilitarViaEstabelecimento /t REG_SZ /d 1 /f
cls

REG ADD HKLM\SOFTWARE\WOW6432Node\SCE\SCEExec\NFe /v ImpressaoDanfeDesabilitarViaEstabelecimento /t REG_SZ /d 1 /f
cls

color 4F
echo.
echo.        Registro criado com sucesso!
echo.      
echo.        Aguarde o redirecionamento... 
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
Echo.                          Ola %computername% !!  :-) 
echo.
COLOR 4F
echo.********************************************************************************
echo.
echo.                          ANTES DE COMECARMOS...
echo.
echo.Verifique se o servidor e estacao estao com as versoes mais recentes do Windows 
echo.
echo.********************************************************************************
pause
cls
goto lembreteWU

:lembreteWU
color 57
echo.
echo.
echo.
echo.
echo. ***************************************************************************************
echo.
echo.   -- TODOS os computadores devem estar na versao 21H1 ou 21H2 do Windows 10 --
echo.
echo.  Caso voce ja tenha atualizado para a versao 21H2 do Windows 10, ao baixar e instalar 
echo.  o update, o sistema operacional vai avancar para a Build 19044.1382. Porem, se voce 
echo.  estiver no Windows 10 versao 21H1, tera a Build 19043.1382. Mas, se a maquina ainda 
echo.  estiver no Windows 10 versao 20H2, ela tera a Build 19043.1382 ao atualizar.
echo.
echo.
echo.    Apos a verificacao de versao, verifique se a build KB5007253 esta instalada.
echo.  Se nao estiver, baixe e instale, caso contrario, esse programa nao vai funcionar	  
echo.
echo. ***************************************************************************************
echo.
echo.
echo.
pause
goto regedit


:regedit
color 16
cls
echo.
echo.
echo.                Editando registros...
ping localhost -n 3 >nul

echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Print /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 0 /f
cls

color 4F
echo.
echo.        Registro criado com sucesso!
echo.      
echo.        Aguarde o redirecionamento... 
echo.
ping localhost -n 4 >nul
cls
goto servicesoff


:servicesoff
color 81
cls
echo.
echo.
echo.            Reiniciando Servicos...
ping localhost -n 2 >nul
cls
echo.
echo. 
echo.
echo.         Aguarde o servico de Spooler de Impressao ser finalizado...
ping localhost -n 3 >nul
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

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
color 81
echo.
echo.
echo.      Aguarde o servico de Spooler de Impressao ser iniciado...
cls
echo off
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls

Net start Spooler

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
echo.
echo.    ***** TESTE SE A CONEXAO OCORRE NORMALMENTE NA ESTACAO *****
ping localhost -n 4 >nul
              
echo.
echo.
echo.
echo. A CONEXAO OCORREU NORMALMENTE?
echo.
echo 1- SIM
echo.
echo 2- NAO
echo.
set /p number=
 
if %number% == 1 goto end1
if %number% == 2 goto reinicio

:reinicio
cls
echo.                    :-(
echo.                        
echo.     VAMOS DESFAZER E RETORNAR O PROCESSO
echo.
echo.        AGUARDE O REINICIO DO PROGRAMA...
echo.
ping localhost -n 4 >nul
cls
goto lembreteWU


:end1
color 0F
cls
echo.
echo. VAMOS REALIZAR UMA LIMPEZA ANTES DE ENCERRAR
echo.
ping localhost -n 4 >nul

REM LIMPEZA DE TEMPORÁRIOS 

cls
del /s /f /q c:\windows\temp\*.*
cls
rd /s /q c:\windows\temp
cls
md c:\windows\temp
cls
del /s /f /q %temp%\*.*
cls
rd /s /q %temp%
cls
md %temp%
cls
del /s /f /q c:\windows\temp\*.*
cls
del /s /f /q  c:\windows\prefetch\*.*
CLS
DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.*
DEL /F /S /Q C:\WINDOWS\Temp\*.*
DEL /F /S /Q C:\WINDOWS\Prefetch\*.*

REM FIM DA LIMPEZA DE TEMPORÁRIOS
goto fimmod


:anydesk
cls
echo off
TITLE FERRAMENTAS SUPORTE SCE --- PREPARANDO SUPORTE

IF %PC%==SERVIDOR ( goto anydeskserv ) ELSE ( goto anydeskest )

:anydeskserv
echo off
echo.
ECHO.          ESTAMOS COPIANDO O ANYDESK PARA AREA DE TRABALHO
ECHO.                         AGUARDE POR FAVOR
ECHO.
ping localhost -n 3 >nul


XCOPY  C:\SCE\AutoMagazine\Network\4.1\Support\Suporte\Any\AnyDesk.exe %homepath%\Desktop /C /I /G /y
cls
echo.
ECHO.          ATALHO CRIADO NA AREA DE TRABALHO
ECHO.               ABRA E INSTALE NA MAQUINA
ECHO.
ping localhost -n 3 >nul
goto fimmod

:anydeskest
echo off
echo.
ECHO.          ESTAMOS COPIANDO O ANYDESK PARA AREA DE TRABALHO
ECHO.                         AGUARDE POR FAVOR
ECHO.
ping localhost -n 3 >nul

XCOPY  \\%servname%\Network\4.1\Support\Suporte\Any\AnyDesk.exe %homepath%\Desktop /C /I /G /y
cls
echo.
ECHO.          ATALHO CRIADO NA AREA DE TRABALHO
ECHO.               ABRA E INSTALE NA MAQUINA
ECHO.
ping localhost -n 3 >nul
goto fimmod

:firewall
cls
echo off
TITLE FERRAMENTAS SUPORTE SCE --- LIBERA FIREWALL
chcp 1252
SETLOCAL 


netsh advfirewall firewall show rule name="SCE" >null
IF NOT ERRORLEVEL 1 (

echo. *** As regras ja foram incluidas no firewall ***

) ELSE (

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
COLOR DF

Cls
echo.
Echo                     ===================================================
ECHO.
Echo                              * REGISTRANDO Automagazine.isce 
ECHO.
Echo                     ===================================================

rem ---------------------------------------------------------------------
color 80
CLS
echo.
echo.
echo.
echo.               AGUARDE
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.   
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               AGUARDE
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               AGUARDE
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               AGUARDE
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.
echo.               AGUARDE
echo.
echo.
echo.
ping localhost -n .10 >nul
cls
goto fimisce

:fimisce
CD C:\
cd C:\SCE\AutoMagazine\Network\4.1\Support

start Automagazine.isce

COLOR 1F
Cls
echo.
Echo                     ===================================================
ECHO.
Echo                           Automagazine.isce ATIVADO COM SUCESSO
ECHO.
Echo                     ===================================================
ping localhost -n 2 >nul

COLOR 5F
Cls
echo.
Echo                      AGUARDE UM MOMENTO ATE O SCRIPT SER REGISTRADO POR COMPLETO...
ECHO.
ECHO.                     ESSE TEMPO VARIA DE MAQUINA PARA MAQUINA PORTANTO, AGUARDE!
ping localhost -n 2 >nul

COLOR DF
CLS
ECHO.             
ECHO.                       O PROGRAMA VOLTARA AUTOMATICAMENTE PARA A TELA PRINCIPAL QUANDO
ECHO.                       TERMINAR DE SER REGISTRADO... 
ECHO.
ECHO.                                     POR FAVOR, NAO FECHE A JANELA
Echo                     ===================================================================
TIMEOUT /T 180 /NOBREAK
GOTO fimmod

:limpcont
cls
ECHO OFF
TITLE FERRAMENTAS SUPORTE SCE --- LIMPAR CONTIGENCIA
ECHO.
ECHO.             ESTAMOS LIMPANDO A CONTIGENCIA
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
echo.
echo.                                 AGUARDE...
echo.
ping localhost -n 3 >nul
goto regtls

:regtls
color 16
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
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo. /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.     /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.        /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.          /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.            /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.               /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                 /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                    /////
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
echo.
echo.
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.                      ///
echo.$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
ping localhost -n .10 >nul
cls
goto fimmod

:criest
echo off
TITLE FERRAMENTAS SUPORTE SCE --- CRIAR ESTACAO
cls
COLOR 5F
Date /t
echo.
echo.		   
Echo.                            Ola %computername% !!  :-) 
echo.
echo.             PENSOU QUE ISSO IA INSTALAR A ESTACAO SOZINHO? CLARO QUE NAO...
echo.		   
echo.                  VAMOS ABRIR OS INSTALADORES PARA CRIAR A ESTACAO
echo.
echo.
pause
cls
goto installnet

:installnet
CLS
COLOR 90
echo.
Echo.                                      ABRINDO INSTALLNET              
echo.
ECHO.                                APOS A INSTALACAO, TECLE ENTER


"\\%servname%\Network\InstallNet\setup.exe"
pause
GOTO installclient

:installclient
CLS
COLOR 90
echo.
Echo.                                AGORA... ABRINDO INSTALLCLIENT             
echo.
ECHO.                                APOS A INSTALACAO, TECLE ENTER
echo.

"\\%servname%\Network\InstallClient\setup.exe"
pause
GOTO teste

:teste
CLS
COLOR 4f
echo.
echo.                          VEJA SE A ESTACAO ABRE NORMALMENTE
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
color 4f
cls
echo.                                            :-(
echo.                        
echo.   SE O PROBLEMA EH NO SCRIPTENGINE, VOCE PODE ESCOLHER REPARAR AUTOMATICAMENTE OU, IR PARA O MENU
ECHO.
ping localhost -n 4 >nul

CLS
echo.
ECHO.     VOCE DESEJA REPARAR AUTOMATICAMENTE O SCRIPTENGINE OU IR PARA O MENU?
ECHO.
ECHO.                    1- REPARAR
ECHO.                    2- IR PARA MENU
ECHO.
Set /p opcao= Escolha uma opcao: 
echo.
Echo. ------------------------------
If %opcao% equ 1 goto fimmod
If %opcao% equ 2 goto processest
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 0 goto inv

:menusql
IF EXIST "C:\SQL2012Temp" (SET sql=2012) ELSE (SET sql=2005)
TITLE FERRAMENTAS SUPORTE SCE --- MENU SQL %sql%
COLOR 60
cls
echo.
echo.                                           ATENCAO!!!!
ECHO.
echo.                                VOCE TEM O SQL %sql% INSTALADO...
ECHO.
ECHO.                                  O QUE VOCE DESEJA FAZER?
Echo.             ==================================================================
echo.
echo.
Echo.                         * 1. MOVER BANCOS DA NFe PARA A DATABASE *
echo.    
echo.                         * 2. MOVER BANCOS DO POCKETPDV           *
echo.
echo.                         * 3. EXECUTAR SCRIPTS DO POCKETPDV       *
echo.
Echo.                         * 4. LIMPAR TABELAS LOTE/LOTEINUT        *
echo.
echo.                         * 5. CORRIGIR BANK SUSPECT               * 
echo.
Echo.                         * 6. CORRIGIR XPAG                       * 
echo.       
echo.                         * 7. TAMANHO DAS TABELAS                 *
echo.
Echo.                         * 8. TAMANHO DO MDF                      * 
echo.
Echo.                         * 9. COLUNAS DO XML                      * 
echo.
echo.                         * 10. CORRIGIR SQL INSTALLNET             *
echo.    
echo.                         * 11. Sair                               *
echo. 
Echo.          ===================================================================
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
If %opcao% EQU 11 goto menuservamg
If %opcao% equ 12 goto inv
If %opcao% equ 0 goto inv

:movenfe
cls
Echo off
COLOR 65
TITLE FERRAMENTAS SUPORTE SCE --- MOVER BANCOS NFe SQL
cls
echo.
echo.
echo.                          MOVENDO BANCOS DA NFe PARA A PASTA DATABASE             
echo.
echo.********************************************************************************
ping localhost -n 2 >nul

IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\NFe_data.mdf" (GOTO naomexenfe) ELSE (GOTO verifnfesql)

:verifnfesql
IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\NFe.mdf" (GOTO naomexenfe) ELSE (GOTO movesqlnfe)

:movesqlnfe
IF %sql% == 2005 (GOTO movesql2005) ELSE (GOTO movesql2012)

:movesql2005
COLOR 65
TITLE MOVENDO BANCOS SQL %sql%
XCOPY  C:\SQLtemp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SQLtemp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y
echo.
echo.    BANCOS MOVIDOS...
ECHO.
ping localhost -n 2 >nul
goto attach

:attach
color 64
ECHO.
ECHO.                   DESEJA FAZER O ATTACH DOS BANCOS?
ECHO.
ECHO.                   1- SIM! POUPE-ME O TRABALHO
ECHO.                   2- NAO! NAO CONFIO EM VOCE...
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto simattach
IF %opcao% EQU 2 goto menusql

:simattach
sqlcmd -S %computername% -d master -U sa -P sa -i "C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\Attach.sql" 

rem -- sqlcmd
rem USE [master]
rem GO
rem CREATE DATABASE [NFe] ON 
rem ( FILENAME = N'C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf' ),
rem ( FILENAME = N'C:\SCE\AutoMagazine\Network\4.1\Database\NFe_log.ldf' )
rem FOR ATTACH
rem GO

goto fimsql

:movesql2012
COLOR 65
TITLE MOVENDO BANCOS SQL %sql%
XCOPY  C:\SQL2012Temp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SQL2012Temp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y
echo.
echo.   BANCOS MOVIDOS...
ECHO.
ping localhost -n 2 >nul
goto attach

:naomexenfe
title ERRO... BANCOS NAO MOVIDOS
color 4f
echo.
echo.                             	     ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.              BANCOS NAO MOVIDOS, VOCE JA TEM UM BANCO DA NFe EM USO NA DATABASE
ECHO.
ping localhost -n 2 >nul
ECHO.                            
Echo.                                  VOCE DESEJA MOVER ASSIM MESMO?
ECHO.
ECHO.                                           1- SIM
ECHO.                                           2- NAO
ECHO.
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
COLOR 65
cls
TITLE MOVENDO BANCOS SQL %sql%

NET STOP MSSQLSERVER
ping localhost -n 2 >nul

cls
color 30
ECHO.
ECHO.
ECHO.                           RENOMEANDO ARQUIVOS.... 
if EXIST "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf"
	( RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf" NFe_data_OLD.mdf )
ELSE (RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe.mdf" NFe_OLD.mdf)

RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_log.ldf" NFe_log_OLD.ldf
ping localhost -n 2 >nul

color 2f
NET START MSSQLSERVER
cls
ECHO.
ECHO.
ECHO.                          MOVENDO ARQUIVOS
XCOPY /Y C:\SQLtemp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database
XCOPY /Y C:\SQLtemp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database

ping localhost -n 1 >nul

cls
color 64
echo.
echo.      BANCOS MOVIDOS...
color b0
ECHO.
ECHO.
ECHO.
ping localhost -n 4 >nul
GOTO attach

:moveoldsql2012
ECHO OFF
COLOR 65
cls
TITLE MOVENDO BANCOS SQL %sql%

NET STOP MSSQLSERVER
ping localhost -n 2 >nul

cls
color 30
ECHO.
ECHO.
ECHO.                           RENOMEANDO ARQUIVOS.... 
if EXIST "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf"
	( RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf" NFe_data_OLD.mdf )
ELSE (RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe.mdf" NFe_OLD.mdf)

RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\NFe_log.ldf" NFe_log_OLD.ldf
ping localhost -n 2 >nul

color 2f
NET START MSSQLSERVER
cls
ECHO.
ECHO.
ECHO.                          MOVENDO ARQUIVOS
XCOPY  C:\SQL2012Temp\SCE\NFe_data.mdf C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SQL2012Temp\SCE\NFe_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y


ping localhost -n 1 >nul

cls
color 64
echo.
echo.      BANCOS MOVIDOS...
color b0
ECHO.
ping localhost -n 4 >nul
GOTO attach

:fimsql
color 5f
CLS
echo.
echo.
echo.
ECHO.                            DESEJA FAZER O MOVER OS BANCOS DO POCKET?
Echo.           ==================================================================
echo.
ECHO.                              1- SIM, NAO QUERO TER TRABALHO
ECHO.                              2- NAO... DEIXA QUE EU FACO
Set /p opcao= 
Echo. ------------------------------
IF %opcao% EQU 1 goto movepocket
IF %opcao% EQU 2 goto menuservamg
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:movepocket
cls
Echo off
COLOR 65
TITLE FERRAMENTAS SUPORTE SCE --- MOVER BANCOS SQL
cls
echo.
echo.
echo.                          MOVENDO BANCOS PARA A PASTA DATABASE             
echo.
echo.********************************************************************************
ping localhost -n 2 >nul

IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\PocketPDV_Data.MDF" (GOTO naomexepocket) ELSE (GOTO movedbpocket)


:movedbpocket
COLOR 2f
TITLE MOVENDO BANCOS POCKETPDV

XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_Data.MDF C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_log.LDF C:\SCE\AutoMagazine\Network\4.1\Database /Y
echo.
echo.         BANCOS MOVIDOS...
ECHO.
ping localhost -n 3 >nul

color 80
echo.
echo.
ECHO.                                DESEJA RODAR OS SCRIPTS DO POCKET?
Echo.           ==================================================================
echo.
ECHO.                              1- SIM, NAO QUERO TER TRABALHO
ECHO.                              2- NAO... DEIXA QUE EU FACO
Set /p opcao=
Echo. ------------------------------
IF %opcao% EQU 1 goto scriptpocket
IF %opcao% EQU 2 goto fimmod
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv


:scriptpocket
cls
Echo off
COLOR 65
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
ping localhost -n 1 >nul
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
echo.
echo.
echo.                                 SCRIPTS EXECUTADOS...
ping localhost -n 3 >nul
goto menusql

:naomexepocket
title ERRO... BANCOS NAO MOVIDOS
color 4f
echo.
echo.                             	ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.                BANCOS NAO MOVIDOS, VOCE JA TEM BANCOS EM USO NA DATABASE
ECHO.
ping localhost -n 2 >nul
ECHO.                            
Echo.                                  VOCE DESEJA MOVER ASSIM MESMO?
ECHO.
ECHO.                                           1- SIM
echo.
ECHO.                                           2- NAO
ECHO.
Set /p opcao=  Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto moveoldpocket
If %opcao% EQU 2 goto menusql
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:moveoldpocket
ECHO OFF
COLOR 65
cls
TITLE MOVENDO BANCOS DO POCKET

NET STOP MSSQLSERVER
ping localhost -n 2 >nul


cls
color 30
ECHO.
ECHO.
ECHO.                           RENOMEANDO ARQUIVOS.... 
RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\PocketPDV_Data.MDF" PocketPDV_Data_OLD.MDF
RENAME "C:\SCE\AutoMagazine\Network\4.1\Database\PocketPDV_log.LDF" PocketPDV_log_OLD.LDF 

ping localhost -n 2 >nul
IF EXIST "C:\SCE\Automagazine\Network\4.1\Database\PocketPDV.bak" ( GOTO backuppocket ) ELSE ( GOTO continuapocket)

:backuppocket
RENAME "C:\SCE\Automagazine\Network\4.1\Database\PocketPDV.bak" OLDbackup_PocketPDV.bak 

goto continuapocket

:continuapocket
cls
color 2f
NET START MSSQLSERVER
ECHO.
ECHO.
ECHO.                          MOVENDO ARQUIVOS
XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_Data.MDF C:\SCE\AutoMagazine\Network\4.1\Database /Y
XCOPY  C:\SCE\AutoMagazine\Network\4.1\Extras\SQL\PocketPDV\PocketPDV_log.ldf C:\SCE\AutoMagazine\Network\4.1\Database /Y
ping localhost -n 1 >nul

cls
color 64
echo.
echo.         BANCOS MOVIDOS...
ECHO.
ping localhost -n 3 >nul

COLOR 80
echo.
echo.
ECHO.                                DESEJA RODAR OS SCRIPTS DO POCKET?
Echo.           ==================================================================
echo.
ECHO.                              1- SIM, NAO QUERO TER TRABALHO
echo.
ECHO.                              2- NAO... DEIXA QUE EU FACO
Set /p opcao=
Echo. ------------------------------
IF %opcao% EQU 1 goto scriptpocket
IF %opcao% EQU 2 goto fimmod
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv

:limptab
cls
Echo off
COLOR 65
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
COLOR 65
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
COLOR 65
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
COLOR 65
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
COLOR 65
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
COLOR 65
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
COLOR 65
TITLE FERRAMENTAS SUPORTE SCE --- SQL INSTALLNET
cls
echo.
echo.
echo.                  VAMOS REPARAR O PROBLEMA COM O SQL
echo.
echo.                                 AGUARDE...
echo.
ping localhost -n 3 >nul

"\\%servname%\Network\InstallNet\SQL Server Compact Edition\SSCERuntime-ENU.exe"
goto menusql

:scecloud

COLOR 30
cls
echo.
ECHO.                                     MENU  SCECLOUD
ECHO.
ECHO.                                 O QUE VOCE DESEJA FAZER?
Echo.           ==================================================================
echo.
echo.
Echo.                         * 1. INSTALAR integracaocloud         * 
echo.
Echo.                         * 2. CRIAR TAREFA PARA O LINKER       *
echo.
echo.                         * 3. Sair                             *
echo. 
Echo.          ===================================================================
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto integracao
IF %opcao% EQU 2 goto tarefa
If %opcao% EQU 3 goto menuservcloud
IF %opcao% EQU 4 goto inv
IF %opcao% EQU 5 goto inv


:integracao
echo off
cls
IF EXIST "C:\SCE\integracaocloud" (GOTO naomexecloud) ELSE (GOTO criarcloud)


:naomexecloud
color 4F
echo.                             	ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.                  ARQUIVOS NAO MOVIDOS, VOCE JA TEM ARQUIVOS NA PASTA
Echo.                            DESEJA ATUALIZAR OS EXISTENTES?
ECHO.
echo.
Echo.                                     * 1. SIM * 
echo.
Echo.                                     * 2. NAO *
echo.
echo.

Set /p opcao=    Escolha uma opcao: 
Echo. ------------------------------
If %opcao% EQU 1 goto updatecloud
IF %opcao% EQU 2 goto scecloud
IF %opcao% EQU 3 goto inv
IF %opcao% EQU 4 goto inv
 

:criarcloud
COLOR 35
echo off
cls
XCOPY /Y /I "C:\SCE\AutoMagazine\Network\4.1\Support\SCECloud\integracaocloud" "C:\SCE\integracaocloud"
DEL "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000 citycol.exe"
DEL "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000 velho.exe"

cls
goto scecloud

:updatecloud
COLOR 35
cls
echo.
echo.
XCOPY /Y /I "C:\SCE\AutoMagazine\Network\4.1\Support\SCECloud\integracaocloud" "C:\SCE\integracaocloud"
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
XCOPY /Y  /I "C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000.exe" "C:\SCE\AutoMagazine\Linker Filial"

cls

goto scecloud

:errocloud
cls
color 4f
echo.                                   ERRO!!!!!!!!!!!!!!!!!!!
echo. 
ECHO.                     PARECE QUE VOCE NAO BAIXOU A VERSAO CORRETA. 
ECHO.
echo.
Echo.                     VOLTE E BAIXE A VERSAO CORRETA E RODE O PROGRAMA
echo.
echo.
goto sair

:tarefa
cls
ECHO OFF
TITLE FERRAMENTAS SUPORTE SCE --- CRIAR TAREFA PARA LINKER
COLOR 35
echo.
echo.                  ESTAMOS CRIANDO A TAREFA PARA EXECUCAO DO LINKER SCECLOUD
ECHO.
ECHO.
ECHO.                                      AGUARDE UM POUCO...
ECHO.
ECHO.
ping localhost -n 3  >nul
CLS

NET START Schedule

schtasks /create /sc MINUTE /MO 10 /TN Linker /TR "'C:\SCE\AutoMagazine\Linker Filial\Linker 2000.exe'" /SD 01/01/1999 /ST 06:00 /k /f
goto taskfim

:taskfim
CLS
color 2F
echo.
echo.                             TAREFA CRIADA!!
ECHO.
ECHO.                AGORA, ESTAMOS ABRINDO O LINKER SCECLOUD
ECHO.
ECHO.
ECHO.                             AGUARDE UM POUCO...
ECHO.
ECHO.

"C:\SCE\AutoMagazine\Network\4.1\Support\Linker Filial\Linker 2000.exe"
ping localhost -n 5  >nul

GOTO fimtask

:fimtask
CLS
color 1F
echo.
echo.                              PROCESSO FINALIZADO!!
ECHO.
ECHO.
ECHO.                   ABRINDO AGENDADOR DE TAREFAS PARA EDIÇÃO
taskschd.msc

goto fimmod

:apps   
COLOR b0
cls
ECHO.
ECHO.
ECHO.                                 CENTRAL DE APPS
Echo.           ==================================================================
echo.
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
If %opcao% equ 10 goto menuservamg
If %opcao% equ 11 goto inv
If %opcao% equ 0 goto inv

:nfcelocal
cls
Echo off
COLOR B1
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
COLOR B1
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
COLOR B1
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
COLOR B1
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
COLOR B1
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
COLOR B1
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
COLOR B1
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
COLOR B1
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
COLOR B1
TITLE FERRAMENTAS SUPORTE SCE --- LIMPANDO ARQUIVOS DA AUDIT
echo.

forfiles -p "C:\Nfe\Audit" -s -d -90 -c "cmd /c del /f /q @path"

CLS
echo.
echo.
ECHO.                              VOCE TEM PASTAS VAZIAS NO CAMINHO C:\Nfe\Audit
ECHO.                                          LOCALIZE E EXCLUA
ECHO.
ping localhost -n 2 >nul
color 5f
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
IF %opcao% EQU 2 goto apps
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 0 goto inv

:tarefaaudit
cls
ECHO OFF
TITLE FERRAMENTAS SUPORTE SCE --- CRIAR TAREFA PARA LIMPEZA
COLOR 35
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
goto menuservamg


:sair
CLS
title FIM... ADEUS... GODBYE... ADIOS... VOLTE LOGO

color 0F
cls
echo.             
cls
echo.
echo.
echo.
echo.
echo.                           TENHA UM BOM DIA DE TRABALHO
echo.
echo.                                        :-)
echo.
echo.
ping localhost -n 3 >nul
Exit

:inv
TITLE QUE PENA... VOCE ERROU
CLS
COLOR CF
echo.
Echo.               ===============================================
Echo.               * Opcao Invalida! Escolha outra opcao do menu *
Echo.               ===============================================
Pause
Goto servestver

:fimmod
CLS
title JA VAI SAIR? POXA, FIQUE MAIS UM POUCO...
color 1F
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
If %opcao% equ 1 goto escolhecloud
If %opcao% equ 2 goto sair
If %opcao% equ 3 goto inv
If %opcao% equ 4 goto inv
If %opcao% equ 5 goto inv
If %opcao% equ 6 goto inv
If %opcao% equ 7 goto inv
If %opcao% equ 8 goto inv
If %opcao% equ 9 goto matrix
If %opcao% equ 0 goto sw

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
