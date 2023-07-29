function delay = calculerDelayLeach(N, p, t)
    % Param�tres de Leach
    %N = 100;  % Nombre total de n�uds
    %p = 0.1;  % Probabilit� de devenir cluster-head
    %%t = 0;    % Nombre de rondes actuelles
    
    % Calcul du retard
    delay = t * (1 - p) * (N - 1);
end