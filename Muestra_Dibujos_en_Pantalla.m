
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
[CentroX, CentroY] = RectCenter(ventanaRect);

%-------hay que preparar los parametros para dibujar cuatro lineas-----------%

%color y ancho de las lineas
Ancho_de_Linea = 6;
Color_de_Linea = [255 255 255];

%coordinadas para las lines
CentroX_Comienzo1 = -171.33-61;
CentroX_Comienzo2 = -34.66-61;
CentroX_Comienzo3 = 104.01-61;
CentroX_Comienzo4 = 242.68-61;

CentroX_Fin1 = -121.33-61;
CentroX_Fin2= 17.34-61;
CentroX_Fin3= 156.01-61;
CentroX_Fin4= 294.68-61;

%coordinadas para el punto centro de cada linea
CentroX1 = -147.33-61;
CentroX2 = -8.66-61;
CentroX3 = 130.01-61;
CentroX4 = 268.68-61;
CentroY_Espacio_Abajo = 50;

%------hay que preparar los parametros para dibujar un oval----------%

%Haz un rect de 200 por 250 pixeles para centrar el ovalo
Rect = [0 0 100 100];

%Pon el color del oval
rectColor = [255 255 255];

%para ovales tenemos que usar un diametro maximo para hacer la forma
%correctamente
maxDiametro = max(Rect) * 1.01;

%Centra el ovalo en la pantalla sobre cada linea
centroRect1 = CenterRectOnPointd(Rect, CentroX + CentroX1, CentroY);
centroRect2 = CenterRectOnPointd(Rect, CentroX + CentroX2, CentroY);
centroRect3 = CenterRectOnPointd(Rect, CentroX + CentroX3, CentroY);
centroRect4 = CenterRectOnPointd(Rect, CentroX + CentroX4, CentroY);


%Cantidad de eventos
cEventos = 5;
     
for EsteEvento = 1:cEventos
    
%Shuffle oval position
Ovalo_Ubi_Aleatoria = Shuffle({centroRect1 centroRect2 centroRect3 centroRect4});

%Dibuja las lineas y los ovales con los parametros que elegiste
Screen('DrawLine',ventanaPunt, Color_de_Linea, CentroX + CentroX_Comienzo1, CentroY + CentroY_Espacio_Abajo, CentroX + CentroX_Fin1 , CentroY + CentroY_Espacio_Abajo, Ancho_de_Linea);
Screen('DrawLine',ventanaPunt, Color_de_Linea, CentroX + CentroX_Comienzo2, CentroY + CentroY_Espacio_Abajo, CentroX + CentroX_Fin2, CentroY + CentroY_Espacio_Abajo, Ancho_de_Linea);
Screen('DrawLine',ventanaPunt, Color_de_Linea, CentroX + CentroX_Comienzo3, CentroY + CentroY_Espacio_Abajo, CentroX + CentroX_Fin3, CentroY + CentroY_Espacio_Abajo, Ancho_de_Linea);
Screen('DrawLine',ventanaPunt, Color_de_Linea, CentroX + CentroX_Comienzo4, CentroY + CentroY_Espacio_Abajo, CentroX + CentroX_Fin4 , CentroY + CentroY_Espacio_Abajo, Ancho_de_Linea);
Screen('FillOval', ventanaPunt, rectColor, Ovalo_Ubi_Aleatoria{1}, maxDiametro);

%Presenta las lineas y el oval en la pantalla
Screen('Flip', ventanaPunt);

%espera una respuesta
KbWait;

%agrega una cantidad de tiempo entre cada evento con estas lineas:

%presenta una pantalla vacia y guarda el tiempo de presentarla
Screen('DrawText', ventanaPunt,' ');  
[Tiempo] = Screen('Flip', ventanaPunt);

%presenta una pantalla vacia de nuevo y usa la variable "tiempo" para
%esperar un poco entre eventos
Screen('DrawText', ventanaPunt,' ');
Screen('Flip',ventanaPunt, Tiempo + 0.200);

end

%=============Espera una respuesta y cierra la pantalla==============%

%Cierra la pantalla
sca

%Muestra el cursor de raton
ShowCursor(ventanaPunt);

