
%=========Crea los parámetros de la pantalla==========%

%para el color de la pantalla:
Color_de_Pantalla = [0 0 0];

%para el color del texto:
Color_de_Texto = [255 255 255];

%para el fuente del texto
Fuente_de_Texto = 'Arial Unicode MS';

%para el tamano del texto
Tamano_de_Texto = 80;

%esta linea es para la compatibilidad con cualquier tipo de computador (especialmente con mac).
%para un experimento real, deberia comentar esta linea:
Screen('Preference', 'SkipSyncTests', 1);


%=========Abre una ventana en la pantalla y crear mas parametros de la pantalla==========%
 
%haz la pantalla la pantalla principal
ScreenNum = 0;

%abre la ventana en la pantalla principal con el color de pantalla que elegiste 
[ventanaPunt, ventanaRect] = Screen('OpenWindow', ScreenNum, Color_de_Pantalla);

%esconde el cursor de raton en la pantalla 
HideCursor(ventanaPunt);

%pon todo el texto en el fuente que elegiste 
Screen('TextFont', ventanaPunt, Fuente_de_Texto);

%Haz un variable con la palabra que quieres presentar
Hola = sprintf('Hola');

%prepara la palabra para presentarla en la pantalla con los parametros que quieres
DrawFormattedText(ventanaPunt, Hola, 'Center', 'Center', Color_de_Texto);

%presenta la palabra en la pantalla
Screen('Flip',ventanaPunt);

%=============Espera una respuesta y cierra la pantalla==============%

%Espera una respuesta
KbStrokeWait;

%Cierra la pantalla
sca

%Muestra el cursor de raton
ShowCursor(ventanaPunt);