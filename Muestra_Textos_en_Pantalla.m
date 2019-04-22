
%=========Crea los parámetros de la pantalla==========%

%para el color de la pantalla:
Color_de_Pantalla = [0 0 255];

%esta linea es para la compatibilidad con cualquier tipo de computador (especialmente con mac).
%para un experimento real, deberia comentar esta linea:
Screen('Preference', 'SkipSyncTests', 1);

%=========Abre una ventana en la pantalla y crear mas parametros de la pantalla==========%

%haz la pantalla la pantalla principal
PantallaNum = 0;

%abre la ventana en la pantalla principal con el color de pantalla que elegiste 
[ventanaPunt, ventanaRect] = Screen('OpenWindow', PantallaNum, Color_de_Pantalla);

%obtiene el tamano de la pantalla principal en pixeles
[pantallaXpixeles, pantallaYpixeles] = Screen('WindowSize', ventanaPunt);

%obtiene las coordinadas del centro de la pantalla en pixeles
[xCentro, yCentro] = RectCenter(ventanaRect);

%esconde el cursor de raton en la pantalla 
HideCursor(ventanaPunt);

%=========Variables de Texto==========%


%------palabras-----%
%la primera palabra que quieres presentar
palabra1 = sprintf('bienvenidos');

%la segunda palabra que quieres presentar
palabra2 = sprintf('welcome');

%la tercera palabra que quieres presentar
palabra3 = sprintf('willkommen');


%-----colores de palabras--------%
%el color del texto para la primera palabra
Color_de_Texto1 = [255 255 255];

%el color del texto para la segunda palabra
Color_de_Texto2 = [0 255 255];

%el color del texto para la tercera palabra
Color_de_Texto3 = [255 255 0];


%----fuentes de texto----------%
%el fuente de texto para la primera palabra
Fuente_de_Texto1 = 'Arial Unicode MS';

%el fuente de texto para la segunda palabra
Fuente_de_Texto2 = 'Times';

%el fuente de texto para la tercera palabra
Fuente_de_Texto3 = 'Calibri';


%---tamanos de texto------%
%el tamano para la primera palabra
Tamano_De_Texto1 = 80;

%el tamano para la segunda palabra
Tamano_De_Texto2 = 60;

%el tamano para la tercera palabra
Tamano_De_Texto3 = 70;


%---ubicaciones de texto------%

%la ubicacion de texto para la primera palabra
palabra1_ubi_x = 'center';
palabra1_ubi_y = pantallaYpixeles*.25;
 
%la ubicacion de texto para la segunda palabra
palabra2_ubi_x = 'center';
palabra2_ubi_y = 'center';

%la ubicacion de texto para la tercera palabra
palabra3_ubi_x = 'center';
palabra3_ubi_y = pantallaYpixeles*.75;

 
%======Presenta las palabras======%

%----palabra1-----%
%pon la palabra en el fuente que elegiste
Screen('TextFont', ventanaPunt, Fuente_de_Texto1);

%pon la palabra en el tamano que elegiste
Screen('TextSize',ventanaPunt, Tamano_De_Texto1);

%pon la palabra en la ubicacion que elegiste
DrawFormattedText(ventanaPunt, palabra1, palabra1_ubi_x, palabra1_ubi_y, Color_de_Texto1);

%----palabra2-----%
%pon la palabra en el fuente que elegiste
Screen('TextFont', ventanaPunt, Fuente_de_Texto2);

%pon la palabra en el tamano que elegiste
Screen('TextSize',ventanaPunt, Tamano_De_Texto2);

%pon la palabra en la ubicacion que elegiste
DrawFormattedText(ventanaPunt, palabra2, palabra2_ubi_x, palabra2_ubi_y, Color_de_Texto2);

%----palabra3-----%
%pon la palabra en el fuente que elegiste
Screen('TextFont', ventanaPunt, Fuente_de_Texto3);

%pon la palabra en el tamano que elegiste
Screen('TextSize',ventanaPunt, Tamano_De_Texto3);

%pon la palabra en la ubicacion que elegiste
DrawFormattedText(ventanaPunt, palabra3, palabra3_ubi_x, palabra3_ubi_y, Color_de_Texto3);

%presenta la palabra en la pantalla
Screen('Flip',ventanaPunt);

%=============Espera una respuesta y cierra la pantalla==============%

%Espera una respuesta
KbStrokeWait;

%Cierra la pantalla
sca

%Muestra el cursor de raton
ShowCursor(ventanaPunt);