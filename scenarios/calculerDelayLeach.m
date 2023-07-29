function delay = calculerDelayLeach(N, p, t)
    % Paramètres de Leach
    %N = 100;  % Nombre total de nœuds
    %p = 0.1;  % Probabilité de devenir cluster-head
    %%t = 0;    % Nombre de rondes actuelles
    
    % Calcul du retard
    delay = t * (1 - p) * (N - 1);
end