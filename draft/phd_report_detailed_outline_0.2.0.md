----------------------------------------------------------------------------------------------------
# 1. (introduction) INTRODUCTION À LA CONCEPTION D'UN ASSISTANT CONVERSATIONNEL


	## 1.a. (asset centrality) 
		- utilisation intensive de l'IA
		- utilisation de plus en plus fréquente des chatbots:
			> - [goasduff:2019:chatbots-will-appeal] Gartner en 2019: "By 2022, 70% of white-collar workers will interact with conversational platforms on a daily basis"
			> - [costello:2019:gartner-top-technologies]: en 2019, prédiction d'un gain de 30% de compétitivité des entreprises
			- liste des fonctionnalités:
				> - [abu-shawar-atwell:2007:chatbots-are-they]
			- liste des avantages/inconvénients:
			- liste des usages:
	
	## 1.b. (niche) 
		- conception d'un chatbot
			- **approche générative**: tendance actuelle, puissante mais coûteuse, et de nombreuses problèmes (techniques, fiabilité, hallucination, ...)
			- **approche symbolique**: historique, efficace, mais aux fonctionnalités limitées
				> - [hoyt-etal:2016:ibm-watson-analytics] WATSON
				> - [alexa-internet:2018:keyword-research-competitor] Alexa
				> - [bocklisch-etal:2017:rasa-open-source] RASA
				
			>>>>>	RQ : ne pas exclure les approches symboliques dès le début
			>>>>>		- On a tester sur les approches génératives car elles souffrnet le plus du problèmes d'annotation
			>>>>>	10 niveaux de contrôles [parasuraman-etal:2000:model-types-levels]:
			>>>>>	- sheridan et verplank : levels of automation
			>>>>>			+ avis perso à quel lvl se situent les LLMs, ...
			>>>>>	approche générative:
			>>>>>		- ne résout pas forcément tout, notamment si on veut avoir un minimum de contrôle (biais raciste, bypass des règles)
			>>>>>		- annotation de pertinence, de biais, ...
	
	
	## 1.c. (gap) 
		- peu de travaux sur la conception d'un jeu de données:
			- c'est principalement manuel !
			- défis d'organisation, de formations et de vulgarisation
			- phase extrêmement coûteuse et sensible aux erreurs
			
		>>>>>>> ca résout 1 les données, 2 la tache 3 les annotateurs/humain
		>> 
	
	## 1.d. (hypotheses) 
		- trouver une méthode pour assister la conception d'un chatbot, notamment sur les étapes de modélisation et d'annotation
	
	
>>> ```Commentaire Erwan: NOTES EN VRAC
>>> - **Fonctionnalités de chatbot**: Just chating, Accès aux bases documentaires, Pré-remplir des formulaires, Routage, ...
>>> - **Gestion du dialogue**: Task-oriented vs Chat-oriented
>>> - **Interprétation/exploitation du langage**: approche symbolique vs approche générative
>>> 		- se concentrer sur l'approche symbolique dont la modélisation des symboles est complexe/biaisé/subjectif/...
>>> 		- discuter des LLM en conclusion/ouverture
>>> - **Gap de recherche**: on met généralement la phase de modélisation sous le tapis...
>>> 		- défis d'organisation
>>> 		- défis de conception
>>> 		- ...
>>> - **Problématique de recherche**: comment assister la phase de création d'un jeu de données nécessaire à l’entraînement d'un assistant conversationnel ?
>>> ```


----------------------------------------------------------------------------------------------------
# 2. (état de l'art) REVUE DE LITTERATURE CONCERNANT LA CRÉATION D'UN JEU DE DONNÉES
>> ```Commentaire Erwan:```

	----------
	## 2.1. DÉFINITION DE L'ANNOTATION DE DONNÉES:
	
		- **Définition**: caractériser des informations sur des données pour les rendre compréhensibles et exploitables
			> - [garside-etal:1997:corpus-annotation-linguistic]: annoter, c'est "ajouter de la valeur" à des données qui n'en n'ont pas
			> - [leech:2004:adding-linguistic-annotation]: Corpus annotation is the practice of adding interpretative linguistic information to a corpus
		- **Corpus**:  [leech:1991:state-art-corpus] definition corpus
			> - [biber:1993:representativeness-corpus-design] représentatif
			> - [sinclair:2005:corpus-text-basic] équilibré
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
	
	----------
	## 2.2. ORGANISATION D'UN PROJET D'ANNOTATION:
	
		### 2.2.1. (méthodes) Organisation _MATTER_: 
			> - [pustejovsky:2006:unifying-linguistic-annotations], [pustejovsky-stubbs:2012:natural-language-annotation] et [stubbs:2013:methodology-using-professional] formalisation MATTER
			> - [finlayson-erjavec:2016:overview-annotation-creation]
			- **Modelize**:
			- **Annotate**:
			- **Train**:
			- **Test**:
			- **Evaluate**:
			- **Revise**:
			> - [voormann-gut:2008:agile-corpus-creationa] formalisation du besoin de réviser sa modélisation
	
		### 2.2.2. (acteurs)
			- différences entre business expert, data analyst, data scientist, ...
			- besoin de formations, de transfert de compétences, ...
			- ...
		
		### 2.2.3. (logiciels)
		>> ```Commentaire Erwan: revue à faire...```
			- Glozz [Widlöcher & Mathet, 2009] http://www.glozz.org/
			- Callisto [Day et al., 2004]
			- MMAX2 [Müller, 2006] https://github.com/ottiram/MMAX2
			- PALinkA [Orăsan, 2003]
			- Gate [Cunningham_2022] https://gate.ac.uk/
			- Brat [Stenetorp et al., 2012] http://brat.nlplab.org/
			- WebAnno [Yimam et al., 2013] https://webanno.github.io/webanno/
			- Inception [Klie et al., 2018] https://inception-project.github.io/
			- Prodigy
			- Excel
			
			> tri par niveaux de fonctionnalités / d'assistance ? assistance pas adapté ?
		
		
	----------
	## 2.3. LES NOMBREUX DÉFIS DE L'ANNOTATION:
	>> ```Commentaire Erwan: très grosse section !```
		===TODO===
		> ### A. les données doivent être représentatives/qualité
		> 	> je veux des données représentatives et de qualité
		> ### B. donc c'est complexe
		> 	> parce que couts, spécifique, pas réutilisable, ...
		> ### C. parce que c'est complexe, je dois m'adapter
		> 	> ...
		
		## A TRIER
			- tache trop spécifique
				- aucun logiciel ne correspond à mon besoin...
			#### !!! régulation de la charge de travail de l'opérateur: (Sperandio 1976 ?)
				> [sperandio:1972:charge-travail-regulation], [sperandio:1978:regulation-working-methods], [sperandio:1987:ergonomie-travail-mental]
				- la tache est perçu comme compliquée, et mes capacités sont perçues comme "minimes"
				- donc l'opérateur va adaptée pour avoir une complexité "acceptable"
				- conclusion : j'adapte mes règles d'annotation pour avoir une charge "percu" plus faible
		
		
		> - [baledent:2022:complexite-annotation-manuelle]: cite de nombreux défis, le problème inhérent à la création d'un JDD, ...
		
		### 2.3.1. (données)
			On veut des problèmes représentatives => donc il peut y a voir des frictions à l'annotation
			- **problème de représentativité**:
				- déséquilibrage
				- phénomène parfois sur-représenté pour être capable de le décrire
				- phénomène parfois pas assez bien décrit à cause du manque de données en réel
				- besoin d'un gros volume pour représenter tout
				> - [biber:1993:representativeness-corpus-design] besoin de trouver une grille de description pour caractériser le contenu d'un dataset, notamment sur la représentativité des données
			- **collecte compliquée**:
			- problème de **confidentialité**: de **droits d'auteurs**, de **traçabilité**, ...
			- **problème qualité**: dégradation, ambiguïtés, flou, fautes de frappes, bruits, ...
			- **problème de format, de mise en page, ...
		
		### 2.3.2. (coûts)
			[fort:2022:manual-annotation-what], [bohmova-etal:2003:prague-dependency-treebank]
			- temps: atelier, annotation, volume traité, ...
			- argent: dev logiciel, recrutement, formation
			- investissement : demander plus de boulot à ceux à qui ont veut simplifier la vie
			- équilibre : annoter au lieu de faire son "vrai" travail
			- ...
	
		### 2.3.3. (complexité tâche)
			- **complexité**:
				> - [fort-etal:2012:modeling-complexity-manuala] et [fort:2022:manual-annotation-what]: caractérise la difficulté en expressivité, délimitation, discrimination, Poids du contexte, Ambiguïté, Dimension des annotations
			- **ambiguïté** de la modélisation:
			- **spécificité** et non réutilisation:
			- **non-scalabilité** des modélisation:
			- **mise à jour constante** du modèle:
			- **variabilité du langage**: argot, expression contextuelles, variations régionales, humour caché, appropriation d'autres langues, coréférence, ...
				> - [martinez-alonso-etal-2016-noisy] exemple de difficultés avec des textes de chat de jeux vidéos
			- texte **non visuel / non ordonné**:
	
		### 2.3.4. (biais inter-annotateurs)
			- différences d'**interprétation**:
				> - [neuendorf:2009:reliability-content-analysis] au moins deux annotateurs pour confronter les points de vue
			- différences de **compétences, d'ancienneté, d'habitude**:
			- **score inter-annotateurs**:
				> - [artstein-poesio:2008:intercoder-agreement-computational] et [bayerl-paul:2011:what-determines-intercoder]: revue des métriques, discussion sur les différentes inter-annotateurs, ...
				> - [krippendorff:2004:content-analysis-introduction] alpha Krippendorff
		
		### 2.3.5. (biais intra-annotateur)
			- **erreurs**: d'inattention, aléas du quotidien
			
		### 2.3.6. (autre)
			- **travail ingrat / mal reconnu**: [valette:2016:analyse-statistique-donneesa] critique le TALN où l'expert linguiste est devenu un vulgaire soustraitant...
			- impact ergonomie **logiciel**, outil non adapté, difficulté de prise en main:
			- **règles floues**:
			- un **annotateur plus agressif** que les autres:
			- **annoter en mono** ou multi-taches:
			- **ordre des données**:
			- **dérives approches incrémentales**:
			
		...
		>> ```Commentaire Erwan: il faudra certainement que je la réorganise```
		
	
	----------
	## 2.4. TECHNIQUES AVANCÉES D'ANNOTATION ET TENDANCES:
	
		> ### A. les données doivent être représentatives/qualité  (données)
		> 	data augmentation, ...
		> ### B. donc c'est complexe  (tache)
		> 	distribution, préannotation
		> ### C. parce que c'est complexe, je dois m'adapter  (humain/annotateur)
		> 	règles, gamification
		
		
		### 2.4.1. Avancées techniques:
			- **Pré-annotation**: utiliser un modèle ou une heuristique pour pré-annoter
			- **Apprentissage actif**: utiliser un modèle pour sélectionner les données intéressante
				> - [settles:2010:active-learning-literature] base active learning
				> - [lampert-etal:2019:constrained-distance-based] A RELIRE !
			- **Regroupement automatique**:
				> - [xu-tian:2015:comprehensive-survey-clustering] limite du clustering
			- **Transfert d'apprentissage**: ré-utiliser un modèle pour ne pas reprendre à zéro
			- **Augmentation de données**: compléter un jeu de données avec des exemples fictifs
			- **Étiquetage faible**: autoriser des données annotées avec des poids moindre ou du bruit
			- **Annotation multi-modale**: annoter plusieurs types de données (image + texte)
		
		### 2.4.1. Avancées organisationnelles:
			- **Création de guide**: y renseigner les règles, les définitions, les exemples, les contre-exemples, ...
				> - [perrotin-etal:2018:annotation-actes-dialogue] dont manuel d’annotation est disponible en [asher-etal:2017:manuel-annotation-actes]
				> - [fort-etal:2009:vers-methodologie-annotation] conseil pour normaliser certaine srègles
				> - [dipper-etal:2004:useradaptive-annotation-guidelines] décrire le JDD, les intuitions linguistiques associées, ...
			- **Redondance et adjudications**: confronter les visions et identifier les désaccords, utiliser les votes majoritaires, ...
			- **Limiter le changement de contexte**: Ordonnancement par similarité ou par pertinence, Séparation des tâches, ...
			- **Analyse des dérives**: score inter-annotateurs, dérives intra-annotateurs, ...
			- **Gamification**
				> - (von Ahn, 2006)
				> - Phrase Detective (Poesio et al., 2013) https://anawiki.essex.ac.uk/phrasedetectives/
				> - JeuxDeMots (Lafourcade & Joubert, 2008) http://www.jeuxdemots.org/jdm-accueil.php
				> - ZombiLingo (Guillaume et al., 2016) https://zombiludik.org/
			- **Crowd sourcing**
				> - Def ? [Howe 2006] ou myriadisation [Sagot et al., 2011][Geiger et al., 2011]
				> - Amazon Mechanical Turk [Callison-Burch & Dredze, 2010] https://www.mturk.com/
				> - LanguageARC [Fiumara et al., 2020] https://languagearc.com/
				> - [snow-etal:2008:cheap-fast-it] coût, performances, ...
				> - [fort:2017:experts-ou-foule] différents types d'experts
	
	----------
	## 2.5. RETOURS D'EXPÉRIENCES (CM-CIC):
		- **Déploiement progressif**: agrandir le périmètre du chatbot petit à petit
		- **Rôle business analyst**: à mi chemin entre le business expert et le data scientist
		- **Amélioration continue ciblée**: sur ce qu'il ne fonctionne pas, sur les feedbacks utilisateurs, intégration de parcours clients, ...


TR:
	Problème de modélisation

----------------------------------------------------------------------------------------------------
# 3. (proposition) MODÉLISER ET ANNOTER UN JEU DE DONNÉES AVEC LE _CLUSTERING INTERACTIF_:
>> ```Commentaire Erwan: présenter le clustering interactif, nos intuitions, nos choix, notre implémentation.```

	----------
	## 3.1. INTUITIONS À L'ORIGINE DE LA MÉTHODE:
		- **Annotation de contraintes**: Faire annoter par similarité
		- **Apprentissage actif**: Promouvoir l'interaction homme-machine
	
	----------
	## 3.2. DESCRIPTION THÉORIQUE:
		- **cycle** sampling > annotation > clustering > redo
	
	----------
	## 3.3. DESCRIPTION TECHNIQUES ET IMPLÉMENTATION:
		- **cognitivefactory.interactive-clustering**: prétraitements, vectorisation, échantillonnage, annotation, gestion des contraintes, clustering, 
			> - Prétraitement:
			>	- [nothman-etal:2018:stop-word-lists] stopwords
			>	- [manning-schutze:2000:foundations-statistical-natural] stemming
			>	- [nivre:2006:inductive-dependency-parsing] dependency parsing pour couper une phrase
			> - Vectorization:
			>	- [ramos:2003:using-tfidf-determine] TFIDF
			>	- [honnibal-montani:2017:spacy-natural-language] Spacy
			> - Contraintes:
			>	- [wagstaff-cardie:2000:clustering-instancelevel-constraints] MUST-LINK, CANNOT-LINK
			>	- []
			> - Clustering:
			>   - [lampert-etal:2018:constrained-distance-based] revue clustering sous contraintes
			>	- [macqueen:1967:methods-classification-analysis] KMeans, devenant COP-KMeans [wagstaff-etal:2001:constrained-kmeans-clustering] ou MPC-KMeans [khan-etal:2012:multiple-parameter-based]
			>	- [murtagh-contreras:2012:algorithms-hierarchical-clustering] hiérarchique, devenant [davidson-ravi:2005:agglomerative-hierarchical-clustering]
			>	- [ng-etal:2002:spectral-clustering-analysis] spectral, devenant SPEC-Spectral [kamvar-etal:2003:spectral-learning]
			>	- [] DBScan, devenant C-DBScan [ruiz-etal:2010:densitybased-semisupervised-clustering]
			>	- [] affinity propagation, devenant [givoni-frey:2009:semisupervised-affinity-propagation] 
			>	- [] 
			>	- [] 
			>	- [] 
			>	- [] 
			
	
	----------
	## 3.4. ESPOIRS SUR LA MÉTHODE:
		- plus intuitif (mois de formation, moins abstrait, ...)
		- temps d'annotation comparable
		- moins de biais de conception
		- méthode réaliste / pas trop coûteuse


----------------------------------------------------------------------------------------------------
# 4. (études) ETUDE DE FONCTIONNEMENT DU _CLUSTERING INTERACTIF_:
	
	----------
	## 4.1. HYPOTHÈSE D'EFFICACITÉ:
	=== déjà écrit ===
	
	----------
	## 4.2. HYPOTHÈSE D'EFFICIENCE:
	=== déjà écrit ===
	
	----------
	## 4.3. HYPOTHÈSE DE COÛTS:
	=== déjà écrit ===
	
	----------
	## 4.4. HYPOTHÈSE DE PERTINENCE:
	=== déjà écrit ===
	
	----------
	## 4.5. HYPOTHÈSE DE RENTABILITÉ:
	=== déjà écrit ===
	
	----------
	## 4.6. HYPOTHÈSE DE ROBUSTESSE:
	=== en cours d'écriture ===
	
	----------
	## 4.7. AUTRES ÉTUDES À MENER:
	=== en cours d'écriture ===


----------------------------------------------------------------------------------------------------
# 5. (application) UTILISATION DU _CLUSTERING INTERACTIF_ EN PRATIQUE:
>> ```Commentaire Erwan: faire le point sur les études, assembler les conclusions et proposer un guide d'utilisation accompagné de bonnes pratiques.```

	----------
	## 5.1. ORGANISATION _ITTER_:
	>> ```Commentaire Erwan: à affiner```
		- Interact
		- Train
		- Test
		- Evaluate
		- Revise
		
	----------
	## 5.2. DIVERS CONSEILS:
		- organisation
		- formation
		- paramétrage
		- ...
		
	## AVANTAGES ET LIMITES


----------------------------------------------------------------------------------------------------
# 6. (conclusion) CONCLUSION ...
>> ```Commentaire Erwan: faire le point sur les travaux menés et ouvrir sur d'autres aspects.```
	
	----------
	## 6.a. (hypotheses) 
		- on a trouver une approche permettant de modéliser et d'annoter des données en étant au plus proche des compétences d'un expert métier
		- (cf. chapitre 4.)
	
	----------
	## 6.b. (gap) 
		- on est capable d'assister la conception d'un chatbot (approche symbolique)
		- (cf. chapitre 5.)
		>>>>>>> ca résout 1 les données, 2 la tache 3 les annotateurs/humain
	
	----------
	## 6.c. (niche) 
	>> ```Commentaire Erwan: ouverture sur les LLM.```
		- on pourrait adapter certains passages pour la conception d'un chatbot (approche générative)
			- cf. annotation par feedback, par pertinence, par équivalence, ...
			- cf. besoin d'échantillonnage, d'active learning, ...
		>> rappel intro qui réduisent les problèmes de l'annotation mais ne les annulent pas
		>> aller au dela du NLP
	
	----------
	## 6.d. (asset centrality)
		- on peut ainsi développer l'IA en faisant intervenir des experts métiers avec un minimum de formation et de noeuds au cerveau !


----------------------------------------------------------------------------------------------------
# ABSTRACT:
>> ```Commentaire Erwan:```