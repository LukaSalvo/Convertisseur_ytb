# Convertisseur_ytb


# Convertisseur YouTube en Ruby

## Description

Ce projet est un script Ruby qui permet de télécharger des vidéos YouTube directement depuis le terminal.  
Il offre le choix de télécharger soit la **vidéo au format MP4**, soit uniquement l'**audio au format MP3**.  

Le script utilise [`yt-dlp`](https://github.com/yt-dlp/yt-dlp) pour effectuer les téléchargements.

## Fonctionnalités

- Entrer un lien YouTube directement dans le terminal.
- Choisir entre vidéo (MP4) ou audio (MP3).
- Téléchargement automatique dans le dossier de votre choix.
- Vérifie si le fichier existe déjà pour éviter les doublons.
- Facile à exécuter sur Linux, macOS ou tout système avec Ruby et yt-dlp installés.

## Installation

1. Cloner le dépôt :  
   ```bash
   git clone <URL_DE_VOTRE_DEPOT>
   cd Convertisseur_ytb
   ```

2. Installer Ruby (si nécessaire) :  
   ```bash
   sudo apt install ruby   # Debian/Ubuntu
   # ou
   brew install ruby       # macOS/Asahi Linux
   ```

3. Installer `yt-dlp` :  
   ```bash
   brew install yt-dlp     # macOS/Asahi Linux
   # ou
   pip install -U yt-dlp  # via Python
   ```

## Utilisation

1. Rendre le script exécutable :  
   ```bash
   chmod +x youtube_dowloader.rb
   ```

2. Lancer le script :  
   ```bash
   ./youtube_dowloader.rb
   ```

3. Suivre les instructions dans le terminal :  
   - Entrer le lien YouTube.  
   - Choisir le format :  
     - `1` pour vidéo MP4  
     - `2` pour audio MP3  

4. Le fichier sera téléchargé dans le dossier par défaut (`~/Downloads/YouTube`).

## Structure du projet

```
Convertisseur_ytb/
│
├── youtube_dowloader.rb   # Script principal
└── iso/                   # (Optionnel) pour d'autres fichiers liés
```

## Contributions

Les contributions sont les bienvenues !  
Pour proposer des modifications, faites un fork du projet et envoyez une pull request.

## Licence

Ce projet est sous licence MIT. Consultez le fichier `LICENSE` pour plus de détails.
