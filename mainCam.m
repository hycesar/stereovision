%%
% PASSO B: remover codigo antigo, preferencialmente desconecte as cameras
%   clear all no terminal;

%
% As cameras s�o sens�veis, n�o se desconectam facilmente.
%
%%
% PASSO O: Conectar as c�meras e ver seu estado.
[cam1, cam2] = connectStereoCams;

%
% Recebe os par�metros da C�mera que ser�o utilizados em fun��o que ir�
% retornar a dist�ncia da c�mera para a da cor-objetivo na tela.
%

%%
% PASSO P: Calibrar a c�mera que pode estar em posi��o alterada.
%stereoParams = quickStereoCalibration(cam1, cam2);

%
% Recebe os par�metros da C�mera que ser�o utilizados em fun��o que ir�
% retornar a dist�ncia da c�mera para a da cor-objetivo na tela.
%

%%
% PASSO N: Use getHSVColor(path) para estimar a m�dia do valor de HSV.
%LAB = getLABColor(cam1, 81);

%
% Recebe uma imagem ao qual o usu�rio far� a sele��o manual da cor, por
% meio de cliques no monitor, de modo a detectar cor e faixa de toler�ncia.
% Recebe a �rea em pixels� a ser considerada reduzindo ru�do e imprecis�o
% do clique. No fim, haver� uma matriz com M linhas (quantidade de cores a
% serem detectadas) e N colunas (cada cor detectada em cada clique).
%

vetorPos = zeros(1, 3);

while 1
    %%
    % PASSO M: Use a m�dia de cada cor para detec��o na imagem passada e passe
    % para fun��o colorDetectHSV(imagem, corLab)
    stat1 = detectLABColor(cam1, LAB);
    debug('b', vetorPos);       %apenas debug.REMOVER
    stat2 = detectLABColor(cam2, LAB);
    debug('w', vetorPos);       %apenas debug.REMOVER
    %
    % Ao fim, ser� repassada a posi��o relativa de cada cor em uma matriz, onde
    % linha M � cada uma das posi��es da cor, em ordem de �rea, e cada coluna N
    % � uma posi��o no plano cartesiano X, Y, Z, no quarto quadrante, apenas Z
    % positivo.
    %

    %%
    % PASSO K: Verificar consist�ncia e s� depois disso, triangular.

    vetorPos = triangular(stat1, stat2, stereoParams);

    %
    % Faz algumas checagens para ver se t� tudo ok, para ent�o retornar uma
    % posi��o X, Y e Z v�lida.
    %

    %%
    % PASSO V: Guardar em arquivo que ser� enviado a Ardu�no

end


