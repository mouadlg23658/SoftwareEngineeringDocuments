L’objectif de ce rapport est de vérifier que toutes les fonctionnalités principales du système de réservation hôtelière fonctionnent correctement, conformément aux exigences définies dans le SRS.

Environnement de test
Technologie : ASP.NET Web Forms (C#)
Base de données : SQL Server LocalDB
Serveur : IIS Express
Navigateur : Google Chrome
Machine : PC Windows



Cas de test
Test 1 — Inscription utilisateur
Description : Vérifier qu’un utilisateur peut s’inscrire
Étapes :
Aller sur la page d’inscription
Remplir les champs
Soumettre le formulaire
Résultat attendu : Utilisateur enregistré en base
Résultat obtenu :  Succès
Test 2 — Connexion utilisateur
Description : Vérifier la connexion avec identifiants valides
Résultat attendu : Accès au dashboard
Résultat obtenu :  Succès
Test 3 — Connexion invalide
Description : Connexion avec mauvais mot de passe
Résultat attendu : Message d’erreur
Résultat obtenu :  Succès
Test 4 — Choix de destination
Description : Sélection d’un hôtel
Résultat attendu : Redirection vers les chambres
Résultat obtenu :  Succès
Test 5 — Validation des dates
Description : Date de départ avant arrivée
Résultat attendu : Erreur affichée
Résultat obtenu :  Succès
Test 6 — Sélection de chambre
Description : Choix d’un type de chambre
Résultat attendu : Affichage des options
Résultat obtenu :  Succès
Test 7 — Options (Décorateur)
Description : Ajouter plusieurs options
Résultat attendu : Prix total mis à jour
Résultat obtenu :  Succès
Test 8 — Calcul du prix
Description : Vérifier le calcul total
Résultat attendu : Prix = base + options × nuits
Résultat obtenu :  Succès
Test 11 — Enregistrement réservation
Description : Sauvegarde en base
Résultat attendu : Données présentes en DB
Résultat obtenu :  Succès
Test 12 — Notifications (Observateur)
Description : Vérifier les notifications
Résultat attendu : Fichiers générés
Résultat obtenu :  Succès
Test 13 — Mes réservations
Description : Affichage historique
Résultat attendu : Liste correcte
Résultat obtenu :  Succès


. Tests des patrons de conception
Singleton
Vérification qu’une seule instance de connexion est utilisée
Résultat :  Conforme
Décorateur
Ajout dynamique d’options
Résultat :  Conforme
Facade + Fabrique
Création simplifiée des suites
Résultat :  Conforme
6. Problèmes rencontrés
Aucun bug critique détecté
Quelques ajustements mineurs possibles :
Messages d’erreur UX améliorables
Validation front-end renforçable
7. Conclusion

Le système répond correctement aux exigences fonctionnelles et non fonctionnelles définies.
Toutes les fonctionnalités principales sont opérationnelles et les patrons de conception sont correctement implémentés.