function delai = calculer_delai(cluster_head, sink)
    % Simuler la transmission de données du cluster head au sink
    % Ici, vous pouvez ajouter votre propre logique pour simuler la transmission
    
    % Calculer le délai entre le cluster head et le sink
    delai = clock - cluster_head.timestamp;
end

% Structure représentant le cluster head
%cluster_head = struct('timestamp', clock);

% Structure représentant le sink
%sink = struct();

% Appeler la fonction de calcul du délai
%delai = calculer_delai(cluster_head, sink);

fprintf('Le délai entre le cluster head et le sink est de : %.2f secondes\n', delai);
