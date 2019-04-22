
%=========Crea los parámetros de la pantalla==========%

%para el color de la pantalla:
Color_de_Pantalla = [0 0 0];

%esta linea es para la compatibilidad con cualquier tipo de computador (especialmente con mac).
%para un experimento real, deberia comentar esta linea:
Screen('Preference', 'SkipSyncTests', 1);

%=========Abre una ventana en la pantalla y crear mas parametros de la pantalla==========%
 
%haz la pantalla la pantalla principal
PantallaNum = 0;

%abre la ventana en la pantalla principal con el color de pantalla que elegiste 
[ventanaPunt, ventanaRect] = Screen('OpenWindow', PantallaNum, Color_de_Pantalla);

%esconde el cursor de raton en la pantalla 
HideCursor(ventanaPunt);

%obtiene las coordinadas del centro de la pantalla en pixeles
[CentroX, yCentro] = RectCenter(ventanaRect);

%------variables para el dibujo------%

%Haz un rect de 200 por 250 pixeles para centrar el ovalo
Rect = [0 0 100 100];

%Pon el color del ovalo
rectColor = [255 255 255];

%para ovales tenemos que usar un diametro maximo para hacer la forma
%correctamente
maxDiametro = max(Rect) * 1.01;

%Centra el ovalo en la pantalla
centroRect1 = CenterRectOnPointd(Rect, CentroX, yCentro);

%prepara el ovalo para presentarlo en la pantalla con los parametros que
%quieres
Screen('FillOval', ventanaPunt, rectColor, centroRect1, maxDiametro);

%pesenta la palabra en la pantalla
Screen('Flip', ventanaPunt);

%=============Espera una respuesta y cierra la pantalla==============%

%Espera una respuesta
KbStrokeWait;

%Cierra la pantalla
sca

%Muestra el cursor de raton
ShowCursor(ventanaPunt);
