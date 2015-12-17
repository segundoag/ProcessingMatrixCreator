# ProcessingMatrixCreator
Utilidad realizada en Processing para confeccionar gráficos para la matriz de puntos del Kiwibot Basic Shield.

Para usar la utilidad:

1.- Debes descargar la libreria G4P desde el gestor de librerías de Processing 3. La librería se descarga desde el repositorio de Processing. Menú Sketch-> Importar Biblioteca -> Añadir Biblioteca -> Filtar G4P e instalar.

2.- Descargar los 5 archivos que componen la aplicación y un directorio.
arrayLed.pde  -> Aplicación principal
BAUHS93.TTF -> Fuente que usa el encabezado.
Clase_Led.pde -> Es la calse que define el control básico de la matriz (1 led).
clipboard.pde -> Este pde no es mio. Sus autores están en el encabezado. Usa el portapapeles.
gui.pde -> Fichero gennerado con el constructor del GUI.
GUI_BUILDER_DATA -> directorio con datos generado por el constructor del GUI

Para trabajar con la aplicación una vez ejecutada. Picar con el ratón encima de los leds de la matriz. Un click encoiende el led, si picas en un led encendido se apaga. En la parte inferior sale directamente el array de 5 bytes listos para ser copiados y pegados en el entorno de desarrollo de Arduino.

Processing permite compilar el programa y generar un archivo ejecutabble java. He podido comprobar que falla en algunas máquinas. Intentando resolver el problema.

Por hacer:
-Completar la documentación.

-Añadir módulo de comunicaciones para probar el resultado directamente en la panatalla del shield.

-Mejorar el formato de la pantalla.

-Comentar el programa adecuadamente.


