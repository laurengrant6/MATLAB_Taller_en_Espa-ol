
%=========Crea los parámetros de la pantalla==========%

%para el color de la pantalla:
Color_de_Pantalla = [0 0 0];

%esta linea es para la compatibilidad con cualquier tipo de computador (especialmente con mac).
%para un experimento real, deberia comentar esta linea:
Screen('Preference', 'SkipSyncTests', 1);

%ayuda con aleatorizacion - rng representa "generador de numero aleatorio":
Shuffle(rng);

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

%Cantidad de eventos
ceventos = 5;

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

%Ten un loop para presentar las palabras aleatorias en la pantalla:
for EsteEvento = 1:ceventos

%El aleatorizacion de los parámetros de las palabras:
Palabras_Aleatorias = Shuffle({palabra1 palabra2 word3});

Colores_Aleatorios = Shuffle({Color_de_Texto1 Color_de_Texto2 Color_de_Texto3});

Fuentes_Aleatorios = Shuffle({Fuente_de_Texto1 Fuente_de_Texto2 Fuente_de_Texto3});

Tamanos_Aleatorios = Shuffle({Tamano_De_Texto1 Tamano_De_Texto2 Tamano_De_Texto3});

Ubicaciones_Aleatorias_Ubi_X = Shuffle({'center' 'center' 'center'});
Ubicaciones_Aleatorias_Ubi_Y = Shuffle({pantallaYpixeles*.25 'center' pantallaYpixeles*.75});
 


%======Presenta las palabras======%

%----palabra1-----%
%pon la palabra en el fuente que elegiste
Screen('TextFont', ventanaPunt, Fuentes_Aleatorios{1});

%pon la palabra en el tamano que elegiste
Screen('TextSize',ventanaPunt, Tamanos_Aleatorios{1});

%pon la palabra en la ubicacion que elegiste
DrawFormattedText(ventanaPunt, Palabras_Aleatorias{1}, Ubicaciones_Aleatorias_Ubi_X{1}, Ubicaciones_Aleatorias_Ubi_Y{1}, Colores_Aleatorios{1});

%----palabra2-----%
%pon la palabra en el fuente que elegiste
Screen('TextFont', ventanaPunt, Fuentes_Aleatorios{2});

%pon la palabra en el tamano que elegiste
Screen('TextSize',ventanaPunt, Tamanos_Aleatorios{2});

%pon la palabra en la ubicacion que elegiste
DrawFormattedText(ventanaPunt, Palabras_Aleatorias{2}, Ubicaciones_Aleatorias_Ubi_X{2}, Ubicaciones_Aleatorias_Ubi_Y{2}, Colores_Aleatorios{2});

%----palabra3-----%
%pon la palabra en el fuente que elegiste
Screen('TextFont',ventanaPunt, Fuentes_Aleatorios{3});

%pon la palabra en el tamano que elegiste
Screen('TextSize',ventanaPunt, Tamanos_Aleatorios{3});

%pon la palabra en la ubicacion que elegiste
DrawFormattedText(ventanaPunt, Palabras_Aleatorias{3}, Ubicaciones_Aleatorias_Ubi_X{3}, Ubicaciones_Aleatorias_Ubi_Y{3}, Colores_Aleatorios{3});

%presenta la palabra en la pantalla
Screen('Flip',ventanaPunt);     

%Espera una respuesta
KbStrokeWait;
end

%Cierra la pantalla
sca

%Muestra el cursor de raton
ShowCursor(ventanaPunt);