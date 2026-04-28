# Cahier des charges (SRS léger) — <Nom du projet>
**Équipe : Mouad El Gholabzouri
**Date :** 2026-04-28
**Version :** <v0.1 / v1.0>

---

## 1. Contexte & objectif
- **Contexte :Le projet est une application web de gestion de reservations hotelières pour 4 destinations internationales (Montreal, Dubai, New York, Tanger). Elle permet a des utilisateurs inscrits de consulter les chambres disponibles, de selectionner des options, puis de finaliser une reservation avec paiement en ligne.
- **Objectif principal :Permettre a un utilisateur de reserver une chambre d'hotel en ligne, du choix de la destination jusqu'a la confirmation du paiement, en passant par la selection d'options (linge, minibar, pet-friendly, room service, taxi).
- **Parties prenantes :Utilisateurs (clients qui reservent), administrateur du systeme, hotels partenaires (notifies automatiquement).

---

## 2. Portée (Scope)
### 2.1 Inclus (IN)
	IN-1 : Inscription et connexion d'un membre (email + mot de passe)
	IN-2 : Choix parmi 4 hotels dans 4 destinations differentes
	IN-3 : Selection des dates d'arrivee et de depart avec verification de disponibilite
	IN-4 : Choix du type de chambre (simple, double, familiale, suite executive, penthouse, etc.)
	IN-5 : Selection d'options par chambre via le Patron Decorateur (linge, minibar, pet-friendly, room service, taxi)
	IN-6 : Affichage des details pour les suites via le Patron Fabrique
	IN-7 : Page de paiement avec validation de format de carte bancaire
	IN-8 : Sauvegarde de la reservation en base de donnees SQL Server
	IN-9 : Notification automatique client + hotel via le Patron Observateur
	IN-10 : Consultation des reservations passees (Mes Reservations)


### 2.2 Exclu (OUT)
	OUT-1 : Paiement reel (pas d'integration de passerelle de paiement comme Stripe ou PayPal)
	OUT-3 : Application mobile native
	OUT-4 : Systeme de notation ou d'avis sur les hotels
	OUT-5 : Gestion des annulations ou modifications de reservations


---

## 3. Acteurs / profils utilisateurs
	Visiteur (non connecte) : Peut acceder a la page de connexion et d'inscription uniquement.
	Membre connecte : Peut naviguer dans le dashboard, reserver une chambre, choisir des options, payer et consulter ses anciennes reservations.
	Systeme (Observateur) : Envoie automatiquement des notifications au client et a l'hotel lors de chaque confirmation de reservation (fichiers texte).



---

## 4. Exigences fonctionnelles (FR)
> Forme recommandée : “Le système doit…”
- **FR-1 :Le systeme doit permettre a un utilisateur de s'inscrire avec nom, prenom, email, telephone et mot de passe.
- **FR-2 :Le systeme doit authentifier un membre via email et mot de passe grace a une requete SQL securisee avec parametres.
- **FR-3 :Le systeme doit stocker la session de l'utilisateur (IdMembre, Nom, Prenom) apres connexion reussie.
- **FR-4 :Le systeme doit afficher un dashboard avec les boutons Reserver et Mes Reservations.
- **FR-5 :Le systeme doit permettre de choisir parmi 4 hotels (Montreal, Dubai, New York, Tanger).
- **FR-6 :Le systeme doit afficher les chambres disponibles selon les dates saisies via verification en base de donnees.
- **FR-7 :Le systeme doit appliquer le Patron Decorateur pour calculer le prix et la description d'une chambre avec options.
- **FR-8 :Le systeme doit afficher les details d'une suite via le Patron Facade et le Patron Fabrique.
- **FR-9 :Le systeme doit valider le format du numero de carte bancaire avant d'accepter le paiement.
- **FR-10 :Le systeme doit inserer la reservation en base de donnees (table Reservation) apres confirmation.
- **FR-11 :Le systeme doit notifier automatiquement le client et l'hotel via le Patron Observateur.
- **FR-12 :Le systeme doit afficher toutes les reservations passees d'un membre connecte, triees par date.
---

## 5. Exigences non fonctionnelles (NFR)
> Performance / sécurité / disponibilité / UX / maintenabilité…
- **NFR-1 (Performance) :Les pages doivent se charger en moins de 3 secondes sur un reseau local standard.
- **NFR-2 (Sécurité) :Toutes les requetes SQL doivent utiliser des parametres ADO.NET pour prevenir les injections SQL. L'acces au dashboard est conditionne par une session active.
- **NFR-3 (UX) :Le parcours de reservation complet (choix hotel -> dates -> chambre -> options -> paiement -> confirmation) doit etre realisable en moins de 6 etapes/clics.

---

## 6. Contraintes
•	C-1 (Technologie) : Langage C# avec ASP.NET Web Forms (.aspx). Obligatoire par le cadre du cours.
•	C-2 (Plateforme) : Application web desktop uniquement.
•	C-3 (Base de donnees) : SQL Server LocalDB (fichier .mdf), connexion via ADO.NET avec le Patron Singleton.
•	C-4 (Patrons de conception) : Minimum 4 patrons requis : Singleton, Decorateur, Facade + Fabrique, Observateur.


---

## 7. Données & règles métier (si applicable)
- **Entités principales :** <Membrer, Reservation,Chambre>
- **Règles métier :
	La date de depart doit etre strictement posterieure a la date d'arrivee.
	Une chambre ne peut pas etre reservee sur des dates qui se chevauchent avec une reservation existante.
	Le prix total = prix unitaire de la chambre decoree x nombre de nuits.
	La devise est automatiquement attribuee selon la destination (CAD=Montreal, AED=Dubai, USD=NewYork, MAD=Tanger).
	Le paiement est accepte si le numero de carte respecte un format numerique valide.
	Un telephone deja enregistre empeche une nouvelle inscription avec ce numero.



---

## 8. Hypothèses & dépendances
### 8.1 Hypothèses
	H-1 : L'utilisateur possede un navigateur web moderne.
	H-2 : SQL Server LocalDB est installe et le fichier .mdf est accessible au chemin configure.
	H-3 : Un utilisateur doit s'inscrire avant de pouvoir effectuer une reservation.




### 8.2 Dépendances
	D-1 : SQL Server LocalDB (moteur de base de donnees local).
	D-2 : ASP.NET Web Forms (.NET Framework 4.7+).
	D-3 : IIS Express (serveur web integre a Visual Studio).
	D-4 : Systeme de fichiers local pour l'ecriture des fichiers de notifications (notifications_client.txt, notifications_hotel.txt).



---

## 9. Critères d’acceptation globaux (Definition of Done – mini)
	Toutes les fonctionnalites FR-1 a FR-12 implementees et testables manuellement.
	Les 4 patrons de conception sont presents et fonctionnels dans le code source.
	La verification de disponibilite des chambres fonctionne correctement (pas de double reservation).
	Le fichier notifications_client.txt et notifications_hotel.txt sont generes apres une reservation.
	La page Mes Reservations affiche correctement les reservations de l'utilisateur connecte.


