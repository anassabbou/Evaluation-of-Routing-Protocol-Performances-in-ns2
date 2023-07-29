function delai = calculer_delai(cluster_head, sink)
    % Simuler la transmission de donn�es du cluster head au sink
    % Ici, vous pouvez ajouter votre propre logique pour simuler la transmission
    
    % Calculer le d�lai entre le cluster head et le sink
    delai = clock - cluster_head.timestamp;
end

% Structure repr�sentant le cluster head
%cluster_head = struct('timestamp', clock);

% Structure repr�sentant le sink
%sink = struct();

% Appeler la fonction de calcul du d�lai
%delai = calculer_delai(cluster_head, sink);

fprintf('Le d�lai entre le cluster head et le sink est de : %.2f secondes\n', delai);
