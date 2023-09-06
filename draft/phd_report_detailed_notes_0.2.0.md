## FONCTIONNALITÉS D'UN CHATBOT:
	- Just chating
	- Accès aux bases documentaires
	- Pré-remplir des formulaires
	- Routage
	- ...
	
## INTERPRÉTATION DU LANGAGE:
	- **Approche symbolique**: Modélisation d'intentions, entités, sentiments, relations, ...
		- Approche historique avec règles
		- Diverses modélisations entre inadaptées et complexes
	- **Approche numérique**: Architecture encodeur/décodeur, Mécanisme d'attention
		- Nécessite deep learning, GPU, ...

## GESTION DU DIALOGUE:
	- **Task-oriented**:
		- NLU (Natural Language Understanding): détections
		- DST (Dialog State): Gestion des règles de dialogue et du contexte
		- PL (Policy Learning): ?????????????????????
	- **Chat-oriented**:
		-
		
## ANNOTATION:
	- **Définition**: caractériser des informations sur des données pour les rendre compréhensibles et exploitables
	- **Objectifs**:
		- modélisation et compréhension:
		- entraînement ou améliorer un modèle:
	- **Informations**: labels, objets, données, textes, ...
	- **Exemples**:
		- tableau: régression  linéaire d'un prix, d'une surface, ...
		- textes: classification de sentiments, extraction d'entités nommées
		- images: classification de documents, détection d'objets
		- audio: transcription de la parole, classification de sentiment, extraction de séquence
		- vidéo: détection de séquence, reconnaissance de geste
		- multi-modale: donner une description à une image, génération et alignements des sous-titres dans une vidéo
		
## TYPE D'ANNOTATION:  ????????????
	- **supervisé**:
	- **non-supervisé**:
	- **semi-supervisé**:

## ORGANISATION "MATTER"
	- **(Collect)**:
	- **Modelize**:
	- **Annotate**:
	- **Train**:
	- **Test**:
	- **Evaluate**:
	- **(Deploy)**:
	- **Revise**:
	
## REMISE EN CAUSE ORGANISATION "MATTER"
	- **Modelize**: trop abstrait ! ça se ressent dans **Annotate**
	- 

## AMELIORATION DE LA METHODOLOGIE DE TRAVAIL:
	- **Techniques**:
		- Pré-annotation: utiliser un modèle ou une heuristique pour pré-annoter
		- Apprentissage actif: utiliser un modèle pour sélectionner les données intéressante
		- Transfert d'apprentissage: ré-utiliser un modèle pour ne pas reprendre à zéro
		- Augmentation de données: compléter un jeu de données avec des exemples fictifs
		- Étiquetage faible: autoriser des données annotées avec des poids moindre ou du bruit
		- Annotation multi-modale: annoter plusieurs types de données (image + texte)
	- **Organisation**:
		- Création de guide (règles d'annotations)
		- Revue de modélisation
		- Redondance et adjudications: vote majoritaire, annotateur expert, ...
		- Ordonnancement par similarité
		- Séparation des tâches
		- Gamification

## DEFIS DE L'ANNOTATION:
	- **Liées aux différences**:
		- variabilités inter-annotateurs: différences d'interprétation, de compétences, d'ancienneté, d'habitude, ...
		- variabilités intra-annotateur: erreurs d'inattention, aléas du quotidien, ...
		- impact ergonomie logiciel, outil non adapté, difficulté de prise en main
	- **Liés à la modélisation**:
		- ambiguïté de la modélisation
		- spécificité et non réutilisation
		- complexité et non-scalabilité des modélisation
		- mise à jour constante du modèle
	- **Liés à l'organisation**:
		- règles floues
		- annotateurs plus fort que les autres
		- mono ou multi-taches
		- ordre des données
		- dérives approches incrémentales
	- **Liés aux coûts**:
		- temps
		- recrutement
		- développement logiciel
		- formation
	- **Liés au NLP**:
		- variabilité du langage: argot, expression contextuelles, variations régionales, humour caché, appropriation d'autres langues, coréférence, ...
		- non visuel / non ordonné
	- **Liés aux données**:
		- déséquilibrage
		- confidentialité
		- origine / droit d'auteur
		- qualité: fautes de frappes, flou, dégradation, ...
		- mise en page, format brut, problème de format, pas d'accès à la source

## DIVERSES QUESTIONS D'ORGANISATION
	- **Rôles**: Business expert, Business analyst, Data scientist, Data analyst, Machine Leaning engineer, ...
	- **Logiciels**: Prodigy, ...
		- fonctionnalités, biais, limites
	- **Crowd-sourcing**: AMT, Figure Eight
		- gestion des flux, consensus, gestion des conflits, ...

## RETOUR EXPÉRIENCE CM-CIC:  (??)
	- Organisation initialisation
	- Organisation amélioration continue
	- Déploiement progressif
	- Rôle de Data Analyst
	- Création d'un centre de compétence pour l'annotation