# Architecture Decision Records ADR-<NN> — <Titre de la décision>
**Statut :** Proposed | Accepted | Rejected | Superseded  
**Date :** <YYYY-MM-DD>  
**Décideurs : Mouad El Gholabzouri Ali Bakkali Ayoub Lamine 
**Contexte projet :Systeme de Reservation Hoteliere

---

## 1. Contexte
- **Problème / besoin :L'application effectue de nombreuses requetes SQL depuis plusieurs pages ASP.NET (login, inscription, choixChambre, resume, mesReservations). Chaque page creait sa propre connexion, ce qui risquait d'ouvrir trop de connexions simultanees et rendait la chaine de connexion dupliquee partout.
- **Contraintes :Framework ASP.NET Web Forms, SQL Server LocalDB, equipe de petite taille, maintenance simplifiee.
- **Forces en présence :Coherence de la connexion, centralisation de la configuration, reduction du code duplique.
---

## 2. Décision
Nous choisissons d'implementer le Patron Singleton pour encapsuler la chaine de connexion SQL Server dans une classe unique (basedonne), qui expose une methode CreateConnection() utilisee par toutes les pages de l'application.



---

## 3. Alternatives considérées
### Option A — Singleton
- **Avantages :
+ Une seule instance de la config
+ Chaine de connexion en un seul endroit
+ Simple a utiliser depuis n'importe quelle page

- **Inconvénients :
- Necessaire de passer la connexion explicitement
- En cas d'erreur de config, toute l'app est affectee


### Option B —  Connection locale
- **Avantages :
Connexion locale	+ Simple a comprendre isolement
+ Independance de chaque page	- Chaine de connexion dupliquee dans toutes les pages
- Difficile a maintenir si le chemin du .mdf change
- Risque d'oubli de fermeture de connexion

- **Inconvénients :
- Chaine de connexion dupliquee dans toutes les pages
- Difficile a maintenir si le chemin du .mdf change
- Risque d'oubli de fermeture de connexion


---

## 4. Justification (Pourquoi cette décision ?)
•	La classe basedonne (Singleton) centralise la chaine de connexion et empeche les duplications.
•	Elle garantit une seule instance de configuration dans toute la duree de vie de l'application.
•	Le constructeur prive empeche toute instanciation externe, renforçant l'encapsulation.
•	Toutes les pages (resume, choixChambre, mesReservations, inscription) utilisent basedonne.Instance.CreateConnection() de facon uniforme.



---

## 5. Conséquences
### Positives
Modification du chemin du .mdf a faire en un seul endroit.	Uniformite du code d'acces aux donnees dans toute l'application.
Facilite l'evolution vers une vraie couche DAL si necessaire.


### Négatives / Risques
	Si la chaine de connexion est incorrecte, toute l'application cesse de fonctionner.•	Le Singleton est difficult a tester unitairement (etat global).


### Impact sur l’architecture / le code
	La classe basedonne est definie dans inscription.aspx.cs et importee via 'using static hotelerie.inscription' dans les autres pages.

---

## 6. Plan d’implémentation (court)
	Definir la classe basedonne avec constructeur prive et propriete statique Instance.
	Implementer CreateConnection() retournant une nouvelle SqlConnection avec la chaine configuree.
	Remplacer toutes les new SqlConnection() directes par basedonne.Instance.CreateConnection().
	Tester la connexion depuis login, inscription, choixChambre, resume, mesReservations.


## 7. Validation
Verification : toutes les pages executent des requetes SQL sans erreur de connexion.
Test : modifier la chaine de connexion en un seul endroit et verifier que l'ensemble de l'app se connecte correctement.

---

## 8. Liens

•	UML : Diagramme de classes — classe basedonne
•	Fichier : inscription.aspx.cs
•	Pages utilisatrices : login.aspx.cs, choixChambre.aspx.cs, resume.aspx.cs, mesReservations.aspx.cs
