# Variables
README=README.md
SCRIPT=guessinggame.sh

# Cible principale pour générer le README
all: $(README)

# Créer le fichier README.md
$(README): $(SCRIPT)
	@echo "# Guessing Game" > $(README)
	@echo "Date d'exécution: $(shell date)" >> $(README)
	@echo "Nombre de lignes de code dans $(SCRIPT): $(shell wc -l < $(SCRIPT))" >> $(README)
	@echo "Le projet est un jeu où l'utilisateur doit deviner le nombre de fichiers dans le répertoire actuel." >> $(README)
	@echo "Essayez d'exécuter le script avec 'bash $(SCRIPT)'." >> $(README)

# Cible pour supprimer les fichiers générés
clean:
	rm -f $(README)
