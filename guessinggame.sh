#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
guess_number_of_files() {
    # Obtenir le nombre de fichiers dans le répertoire actuel
    local correct_answer=$(ls -1 | wc -l)

    while true; do
        # Demander à l'utilisateur combien de fichiers sont dans le répertoire
        echo "Devine combien de fichiers se trouvent dans le répertoire actuel :"
        read user_guess

        # Vérifier la réponse de l'utilisateur
        if [[ $user_guess -lt $correct_answer ]]; then
            echo "Trop bas! Essaie encore."
        elif [[ $user_guess -gt $correct_answer ]]; then
            echo "Trop haut! Essaie encore."
        else
            echo "Félicitations! Vous avez deviné le bon nombre de fichiers."
            break
        fi
    done
}

# Appeler la fonction
guess_number_of_files

