# Application RH en JEE  

## Description du projet  
L'application RH en JEE modernise la gestion des ressources humaines pour une entreprise en croissance, en remplaçant l'ancien système basé sur Excel. Elle centralise et automatise les processus RH tels que la gestion des employés, le suivi des congés, le recrutement, le calcul des allocations familiales, et la génération de rapports stratégiques.  

## Problématique  
L'entreprise fait face à plusieurs défis :  
- Suivi inefficace des demandes de congés.  
- Recrutement désorganisé.  
- Manque de transparence sur les allocations familiales.  
- Génération de rapports complexe et chronophage.  

## Solution  
Une application web offrant :  
- Gestion centralisée des employés.  
- Suivi optimisé des recrutements.  
- Gestion des congés fluide avec notifications automatisées.  
- Calcul des allocations familiales basé sur des règles préétablies.  
- Tableaux de bord et rapports détaillés.  

## Fonctionnalités principales  
### Gestion des employés  
- Ajouter, modifier, et supprimer des employés.  
- Historique des modifications pour audit.  

### Recrutement  
- Création et gestion des offres d’emploi.  
- Suivi et filtrage des candidatures par statut et compétences.  

### Gestion des congés  
- Demandes avec validation et suivi.  
- Notifications pour les managers et employés.  

### Calcul des allocations familiales  
- Calcul automatique selon les paramètres définis (salaire, enfants).  
- Résumé des droits affiché dans le profil de l’employé.  

### Reporting  
- Rapports mensuels sur les absences et les allocations.  
- Tableau de bord RH avec statistiques clés.  

### Notifications  
- Alertes email pour demandes de congés, mises à jour des recrutements, et échéances RH.  

## Gestion du projet avec Jira  
- **Suivi des tâches et des sprints** : Jira a été utilisé pour organiser et suivre le développement du projet.  
- **Branches Git liées à Jira** : Chaque branche correspond à une tâche identifiée par un ID Jira, par exemple : `ET2-41`.  

### Exemple de workflow  
1. Une tâche est créée dans Jira (ex. : "Ajouter une fonctionnalité de calcul des allocations familiales").  
2. Une branche Git est créée en suivant le format `ET2-41-ajout-allocation`.  
3. Après le développement, la branche est fusionnée dans la branche principale via une Pull Request.  

## Technologies utilisées  
- **Backend** : Servlets, JSP, JSTL, JAAS (authentification), JPA (persistence).  
- **Frontend** : HTML5 / CSS3.  
- **Outils** : Maven, Tomcat, JUnit.  
- **Gestion de projet** : Jira.  

## Prérequis  
- **Java** : Version 8 ou supérieure.  
- **Maven** : Installé et configuré.  
- **Serveur d'applications** : Tomcat 9 ou supérieur.  
- **Base de données** : PgSql (ou autre base compatible avec JPA).  
