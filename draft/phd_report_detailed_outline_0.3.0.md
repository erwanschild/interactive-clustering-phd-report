----------
## 2.3. LES NOMBREUX DÉFIS DE L'ANNOTATION:
	
	> [baledent:2022:complexite-annotation-manuelle]: cite de nombreux défis, le problème inhérent à la création d'un JDD, ...
	
	
	### 2.3.1. Les données doivent être représentatives et de bonne qualité.
		
		
		#### Représentativité
			- **Volume conséquent**
			- **Équilibrage et sur-représentativité**
			- Variabilité inter- et intra-domaines (*Exemple du langage: argot, expression contextuelles, variations régionales, humour caché, appropriation d'autres langues, coréférence, ...*)
			> `Exemple 1`: [biber:1993:representativeness-corpus-design]: propose de caractériser les features d'un dataset linguistique avant de passer à l'annotation pour bien cerner les données présentes (nombre, taille du vocabulaire, ...)
			> `Exemple 2`: [martinez-alonso-etal-2016-noisy] exemple de difficultés avec des textes de chat de jeux vidéos
		#### Bruits
			- **Bruits et dégradation**
				> flou, fautes de frappes, bruits parasites, ...
				> format, mise en page,cadrage, ...
			- **Besoin de prétraitement**
				> - [maharana-etal:2022:review-data-preprocessing]
				> - Attention, le document source doit toujours être accessible
		#### Droits
			- **Données Open Source**
				> [hugging-face:2016:hugging-face-ai]
			- **Propriété intellectuelle**
				> [les-echos:2023:ia-auteur-game]
			- **Utilisable commercialement ?**
				> [creative-commons:2013:cc-bync-legal] Licence CC BY-NC 4.0
				> [rajbahadur-etal:2022:can-use-this] stratégie de vérification
			- **Privé et Confidentialité**
				> Cas d'usage privé pour garder l'avantage compétitif d'une entreprise VS recherche avec des données publiques
				> [european-commission:2016:regulation-eu-2016]
			- **Traçabilité**
				> [european-commission:2021:proposal-regulation-european]
				
		### Avancées:
			- **Augmentation de données**: compléter un jeu de données avec des exemples fictifs
				> - [shorten-etal:2021:text-data-augmentation] Review, rappel que c'est spécifique à la tâche et qu'il y a besoin de contrôler les biais de création
				> - [shorten-khoshgoftaar:2019:survey-image-data] Review pour les images
				> - [nicoletti-bass:2023:generative-ai-takes] biais data generation
		
		
	### 2.3.2. Donc nos standards introduisent de la complexité.
		
		
		#### Modélisation complexe
			- Modélisation relève d'un choix: Leech 1993 dit que ce doit être neutre, mais c'est pas toujours facile
			
			- [fort-etal:2012:modeling-complexity-manual] et [fort:2022:manual-annotation-what]: caractérise la difficulté en:
				1. *discrimination*: plus le ratio (nb de chose à annoter) / (nb de chose annotable) est faible, plus c'est complexe.
				2. *délimitation*: ou commence et fini l'annotation sur la donnée
				3. *expressivité de l'annotation*: est-ce que l'annotation est une variable catégorielle, une variable continue, y a-t'il des relations...
				4. *dimension des annotations*: nombre de possibilité à l'annotation (degré de liberté)
					> [bayerl-paul:2011:what-determines-intercoder] plus il y a d'étiquette possible, moins ils y a d'accord
				5. *ambiguïté*: nombre de cas ambigu rencontré lors de l'annotation
					> [lefeuvre-etal:2014:annotation-temporalite-corpus] détails de la limite de la norme ISO TimeML et les cas ou la norme s'applique mal sur certaines données
				6. *poids du contexte*: attend-t-on besoin du contexte pour comprendre et annoter ?
			
			- Pour éviter des ambiguïtés, il faut être stricte, mais pour pouvoir s'adapter, il faut être souple...
				> Organiser son schéma d'annotation
				> [nedellec-etal:2006:annotation-guidelines-machine] la précision des règles d'annotation est une des raison de leur performance
				> [lefeuvre-etal:2014:annotation-temporalite-corpus] détails de la limite de la norme ISO TimeML et les cas ou la norme s'applique mal sur certaines données
			- Modélisation spécifique à un cas d'usage, donc non-réutilisable
			- Cas d'usage complexe implique des annotation multi-tâche et non scalable
				> Exemple NLP
			- Interprétation/Visualisation
			- Mise à jour constante de la modélisation
			
			> `Exemple 1`: [gut-bayerl:2004:measuring-reliability-manual]: complexité est estimée avec le score inter-annotateur.
		
		
		#### Coûts important
			- Collecte de données
			- Achat ou développement logiciel
			- Recrutement et formation des annotateurs
			- Temps d'annotation en tant que tel
			
			> `Exemple 1`: [bohmova-etal:2003:prague-dependency-treebank]: entre 1996 et 2004, 22 personnes pour 600k$, 1.8m tokens
			> `Exemple 2`: [candito-seddah:2012:corpus-sequoia-annotation] 59k€ pour 3.2k phrases (Morph.: morpho-syntactic annotation, Const: Phrase-based annotation, Dep: dependency conversion, Deep Synt: Deep syntax).
			> `Exemple 3`: [perrigo-zorthian:2023:exclusive-openai-used] Polémique OpenAI sur l'annotation par des Kényan à bas coûts
			> `Exemple 4`: [dzieza:2023:ai-lot-work] Payé pour 3 fois rien, une sous classe de travail mal payé émerge
			> `Remarque`: On passe son temps à annoter au lieu de faire le travail de l'humain, c'est parfois assez contradictoire.
		
		
	### 2.3.3. Donc il y a des différences entre annotateurs.
		
		#### Différences inter-annotateurs
			- **Subjectivité** et interprétations différentes, voire règles floues
				- Ambiguïté/Interprétation/Visualisation/Règles floues/
				> [neuendorf:2009:reliability-content-analysis] au moins deux annotateurs pour confronter les points de vue
				> [bayerl-paul:2011:what-determines-intercoder] plus il y en a, moins ils sont d'accord
				> [bayerl-paul:2011:what-determines-intercoder] plus il y a d'étiquettes possibles, moins ils y a d'accord
			- **Expertise** / **Formation**
				- maîtrise du logiciel, impact ergonomique
				> [bayerl-paul:2011:what-determines-intercoder]: influence sur le score inter-annotateur: domaine d'annotation, du nombre de catégories du schéma, du nombre d'annotateurs, de la formation et de l'expertise des annotateurs, la méthode de calcul du score
				> [bayerl-paul:2011:what-determines-intercoder] plus ils sont formés à la tâche, moins ils font de différence
				> [dandapat-etal:2009:complex-linguistic-annotation] importance de la formation et l'assistance
			- **Troubles**
				> [rowe:2023:it-destroyed-me]: modérateurs de contenus offensant
		
		
		#### Différences intra-annotateur
			- erreurs d'inattention, aléas du quotidien
			- **Régulation** de la charge de travail
				> [sperandio:1987:ergonomie-travail-mental], [sperandio:1972:charge-travail-regulation], [sperandio:1978:regulation-working-methods]: La tache est perçu comme compliquée, et mes capacités sont perçues comme "minimes" ; Donc l'opérateur va toujours s'adapter pour avoir une complexité "acceptable". Conclusion : j'adapte mes règles d'annotation pour avoir une charge "perçu" plus faible.
		
		
		#### Evaluation
			- score inter-annotateurs:
				>  [krippendorff:2004:content-analysis-introduction] alpha Krippendorff
				> [artstein-poesio:2008:intercoder-agreement-computational]: revue des métriques
				> [bayerl-paul:2011:what-determines-intercoder]: influence sur le score inter-annotateur: domaine d'annotation, du nombre de catégories du schéma, du nombre d'annotateurs, de la formation et de l'expertise des annotateurs, la méthode de calcul du score
		
		#### Autres
			- **travail ingrat / mal reconnu**: [valette:2016:analyse-statistique-donneesa] critique le TALN où l'expert linguiste est devenu un vulgaire soustraitant...
		
----------
## 2.4. TECHNIQUES AVANCÉES D'ANNOTATION ET TENDANCES:
	

		
	### 2.4.2. Donc nos standards introduisent de la complexité.
		- **Pré-annotation**: utiliser un modèle ou une heuristique pour pré-annoter
			> - [dandapat-etal:2009:complex-linguistic-annotation] importance de l'assistance, mais biais de confirmation possible
			> - [fort-sagot:2010:influence-preannotation-postagged]
		- **Transfert d'apprentissage**: ré-utiliser un modèle pour ne pas reprendre à zéro et ainsi avoir moins de données à annoter
			> - [zhuang-etal:2021:comprehensive-survey-transfer], [iman-etal:2023:review-deep-transfer]: nécessite moins de données
		- **Apprentissage actif**: utiliser un modèle pour sélectionner les données intéressante
			> - [settles:2010:active-learning-literature] base active learning
			> - [lampert-etal:2019:constrained-distance-based] A RELIRE !
		- **Subdivision de la tâche**: faire une petite partie est parfois plus efficace, mais ne permet pas toujours de résoudre le problème dans sa globalité (on n'a pas l'objectif final)
		- **Limiter le changement de contexte**: Ordonnancement par similarité ou par pertinence, Séparation des tâches, ...
			> [fort-etal:2012:modeling-complexity-manual] trop de contexte induit de la complexité
		
		
	### 2.4.3. Donc il y a des différences entre annotateurs.
		- **Création de guide**: y renseigner les règles, les définitions, les exemples, les contre-exemples, ...
			> - [fort-etal:2009:vers-methodologie-annotation] conseil pour normaliser certaines règles
			> - [dipper-etal:2004:useradaptive-annotation-guidelines] décrire le JDD, les intuitions linguistiques associées, ...
		- **Redondance et adjudications**: confronter les visions et identifier les désaccords, utiliser les votes majoritaires, Analyse des dérives, score inter-annotateurs, dérives intra-annotateurs, ...
		- **Gamification**
			> - [von-ahn:2006:games-purpose] introduire le jeu dans une tâche à faire
			> - ZombiLingo [guillaume-etal:2016:crowdsourcing-complex-language] https://zombiludik.org/
		- **Crowd sourcing**
			> - [sagot-etal:2011:turc-mecanique-pour] présentation des défauts
			> - `Amazon Mechanical Turk` [callison-burch-dredze:2010:creating-speech-language] https://www.mturk.com/
			> - `Language ARC` [fiumara-etal:2020:languagearc-developing-language] https://languagearc.com/
			> - [snow-etal:2008:cheap-fast-it] coût, performances, ...
			> - [fort:2017:experts-ou-foule] types d'experts ; une foule de naifs ou certains font 95% du travail ;  
		
		
	## 2.4.3. Aide à la modélisation
		- On aide `ANNOTATE`, mais c'est `MODELIZE` qui est complexe
			- **supervisé**: ça marche pas
			- **non-supervisé**: (clustering) c'est pas terrible !
			- **semi-supervisé**: c'est pertinent mais c'est long / beaucoup sur l'annotation
		- **Regroupement automatique**:
			> - [xu-tian:2015:comprehensive-survey-clustering] limite du clustering
		- **Apprentissage actif**: utiliser un modèle pour sélectionner les données intéressante
			> - [settles:2010:active-learning-literature] base active learning
			> - [lampert-etal:2019:constrained-distance-based] A RELIRE !