📊 Projet RH Analytics – SQL (PostgreSQL)
👤 Contexte du projet
Ce projet simule une mission réelle de Data Analyst SQL au sein de l’entreprise fictive DataLendo, pour le compte du service Ressources Humaines (RH).
L’objectif est d’exploiter des données RH afin de fournir des indicateurs clés, des analyses de performance, et des insights décisionnels utiles à la direction RH.
Ce projet est conçu pour démontrer mes compétences en :
●	SQL avancé (PostgreSQL)
●	Analyse de données RH
●	Structuration de projet data
●	Traduction de besoins business en requêtes analytiques

Objectifs business
Le service RH souhaite :
●	Comprendre l’évolution des effectifs
●	Identifier les départements à risque (turnover)
●	Évaluer la performance des employés
●	Analyser la rétention par cohorte d’embauche
●	Disposer d’un tableau de bord RH exploitable
15 questions business ont été posées par le manager RH et résolues exclusivement avec SQL.

Données utilisées
Le projet repose sur 4 tables principales, fournies au format CSV.
1️⃣ employes
Informations individuelles des employés.
●	id_employe (PK)
●	nom, prenom
●	poste
●	departement_id (FK)
●	date_embauche
●	date_depart
●	salaire
2️⃣ departements
Référentiel des départements.
●	id_departement (PK)
●	nom_departement
●	manager
●	budget
3️⃣ performances
Évaluations trimestrielles de performance.
●	id_performance (PK)
●	id_employe (FK)
●	date_evaluation
●	score
●	objectifs_atteints
4️⃣ turnover
Historique des départs d’employés.
●	id_depart (PK)
●	id_employe
●	date_depart
●	type_depart (volontaire / involontaire)
●	anciennete

Outils & technologies
●	PostgreSQL (requêtes analytiques)
●	VS Code (environnement de travail)
●	SQL (CTE, JOIN, agrégations, fenêtres analytiques)

Transformations & enrichissement des données
Afin de rendre les données exploitables pour l’analyse RH, plusieurs colonnes dérivées ont été créées :
📌 Colonnes calculées
●	Ancienneté : durée entre la date d’embauche et aujourd’hui (ou date de départ)
●	Cohorte d’embauche : année d’entrée dans l’entreprise
●	Score moyen : moyenne des scores de performance par employé
●	Catégorie de performance :
○	Faible (< 60)
○	Moyenne (60–80)
○	Élevée (> 80)
Ces transformations permettent une analyse temporelle, comparative et stratégique.
________________________________________
📊 Analyses réalisées (questions business)
Les analyses couvrent notamment :
●	Effectif actuel
●	Turnover global et par département
●	Répartition des départs (volontaire / involontaire)
●	Salaire moyen par département
●	Employés à forte ancienneté
●	Performance moyenne par département
●	Top 10 des employés les plus performants
●	Employés en difficulté
●	Rétention par cohorte d’embauche
●	Départements qui recrutent le plus
●	Employés sans feedback récent
●	Segmentation des performances
●	Tableau KPI RH par département et cohorte
Toutes les analyses sont réalisées via des requêtes SQL documentées, sans outil de visualisation.

📈 Exemple de KPIs produits
●	Effectif par département
●	Salaire moyen
●	Score de performance moyen
●	Ancienneté moyenne
●	Turnover par type
●	Rétention par cohorte
Ces indicateurs sont ceux utilisés par les Directions RH et Finance pour orienter leurs décisions.

🧠 Insights & recommandations RH
À partir des analyses, plusieurs recommandations peuvent être formulées :
●	Mettre en place des plans de rétention pour les employés à forte ancienneté
●	Auditer les départements à turnover élevé
●	Renforcer les processus de feedback et d’évaluation
●	Adapter les politiques salariales selon la performance
●	Améliorer l’onboarding des nouvelles cohortes

👨‍💻 Auteur
Aristide Gildas Ngoma Mbambi
Data Analyst | SQL | Python | Excel




