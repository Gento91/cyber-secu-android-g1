L’URL Firebase est exposée en clair dans strings.xml.
Bien que l’accès soit actuellement protégé (Permission denied), cette exposition constitue une vulnérabilité de type "information disclosure".
Elle facilite la reconnaissance pour un attaquant et pourrait mener à une fuite massive de données si la configuration Firebase était modifiée de façon inappropriée.
