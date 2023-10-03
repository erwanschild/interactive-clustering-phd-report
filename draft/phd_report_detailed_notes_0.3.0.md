
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
		
## BIAIS:

	- **Phénomène**:
		- Modélisation relève d'un choix: Leech 1993 dit que ce doit être neutre, mais c'est pas toujours facile
		- Règles d'annotation relève d'un choix

	- **Corpus**:
		- problème de format
		- pas représentatif
		- pas accès au document source

	- **Outils**:
		- Pas adapté
		- difficile à prendre en main

	- **Schéma d'annotation**:
		- jeu d'étiquette trop grand
			% [bayerl-paul:2011:what-determines-intercoder] plus il y en a, moins ils y a d'accord
		- schéma non hiérarchisé
		- présence d’ambiguïté
			% [lefeuvre-etal:2014:annotation-temporalite-corpus] détails de la limite de la norme ISO TimeML et les cas ou la norme s'applique mal sur certaines données
		- 1 vs * vs +
		- qualité rédactionnelle du guide (entre claire et flexible)
			% [nedellec-etal:2006:annotation-guidelines-machine] la précision des règles d'annotation est une des raison de leur performance

	- **annotateurs**:
		- différence d'expertise
		- formation
			% [bayerl-paul:2011:what-determines-intercoder] plus ils sont formés à la tâche, moins ils font de différence
			% [dandapat-etal:2009:complex-linguistic-annotation] importance de la formation et l'assistance
		- nombre
			% [bayerl-paul:2011:what-determines-intercoder] plus il y en a, moins ils sont d'accord
		- caractéristiques
			
	- **annotation**:
		- pré-annotation
			% [dandapat-etal:2009:complex-linguistic-annotation] importance de l'assistance, mais biais de confirmation possible
			% [fort-sagot:2010:influence-preannotation-postagged]
		- subdivision de la tâche: faire une petite partie est parfois plus efficace, mais ne permet pas toujours de résoudre le problème dans sa globalité (on n'a pas l'objectif final)
			%
		- attention à l'ordre au déséquilibrage: ordonné = sur-représentation, pas ordonné = oubli
		- retour arrière : vérifier ou corrigé en regardant ce qui a été fait avant
		- poid du contexte:
			% [fort-etal:2012:modeling-complexity-manual] trop de contexte induit de la complexité
		- besoin de connaissance ?

	- **evaluation**
		- pas toujours de métriques disponibles
		- problème des corpus déséquilibré ou aux classes avec confusion possible
		- être juge soi-même: le problème en initialisation...
		
RESUMÉ
Modélisation du phénomène · · · •
Tâche d’annotation · · · •
Type d’annotation · · · •
Passage d’un format à un autre · · · •
Outil non adapté au phénomène · · · •
L’outil parfait n’existe pas · · · •
Schéma d’annotation · · · •
• · · · Pré-annotations
• · · · Niveaux des annotateurs
• · · · Caractéristiques des annotateurs
Facilité de prise en main · · · •
Qualité rédactionnelle du guide · · · •
Accès au document source · · · • · · · Poids du contexte
• · · · Subdivision de la tâche
Ordre des items · · · •
Distributions des catégories · · · • · · · Items proches par leur contenu
Traitement des corpus et textes longs · · · • · · · Retour arrière
• · · · Temps d’annotation
Mesure AIA non adaptée · · · •
• · · · Catégories contiguës
Prévalence des catégories · · · • · · · Biais de l’annotateur
• · · · Être annotateur et juge
Corpus non représentatif · · · •
Manque d’harmonisation · · · •


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