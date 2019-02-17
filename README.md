# sterevision
Stereo Vision, the next generation of sensors for cell phones, was developed using HSV in MatLab for robotic arm control.

[Contexto]
Para que o sistema detectasse a cor, com o mínimo de interferência possível, foi utilizado o sistema de cores Lab onde, mantendo-se um espectro bidimensional ab, é possível obter um espalhamento adequado de cores, evidenciando-se as diferenças de cores, e removendo a interferência L, luminosidade, do processo de detecção.

O algoritmo do sistema de detecção está dividido entre o processo de abertura prévia das câmeras, o processamento de cada câmera, individualmente, a coleta da cor correspondente, o envio dessa informação para o módulo de detecção que irá fazer o processamento da imagem de modo a reduzir a interferências e, por fim, o envio das imagens para o módulo de triangulação.

Esse processo, composto por diversas etapas de processamento foram desenvolvidas em tempo de projeto, visto que os exemplos disponíveis não conseguiam ter a flexibilidade e precisão que precisávamos.
