## Annexes : Documentation des captures d'écran

Les démonstrations visuelles de ce laboratoire sont documentées dans le dossier `screenshots/` avec des descriptions détaillées :

### 📸 Capture 1 : Exécution de lab10-1
**Fichier :** `screenshots/1.txt`  
**Description :** Démonstration du programme `lab10-1` qui écrit une chaîne saisie par l'utilisateur dans le fichier `readme.txt`.  
**Commandes testées :** `./lab10-1`, `cat readme.txt`, `ls -l readme.txt`  
**Compétences :** Appels système `sys_open`, `sys_write`, `sys_close`.

### 🔒 Capture 2 : Tests des permissions d'exécution  
**Fichier :** `screenshots/2.txt`  
**Description :** Test du mécanisme de permissions Linux avec `chmod`.  
**Séquence :** 
1. `chmod a-x lab10-1` → Échec d'exécution
2. `chmod +x lab10-1` → Succès d'exécution  
**Démonstration :** Importance du bit 'x' pour les fichiers exécutables.

### ❌ Capture 3 : Erreur d'exécution du fichier source
**Fichier :** `screenshots/3.txt`  
**Description :** Tentative d'exécution directe d'un fichier source `.asm`.  
**Résultat :** Multiples erreurs "commande introuvable".  
**Conclusion :** Un fichier source NASM doit être compilé avant exécution.

### 📝 Capture 4 : Permissions des fichiers de test
**Fichier :** `screenshots/4.txt`  
**Description :** Application des permissions selon la variante 1.  
**Commandes :**
- `chmod u=x,g=wx,o=wx readme-1.txt` (forme symbolique)
- `chmod 062 readme-2.txt` (forme octale)  
**Vérification :** `ls -l readme-1.txt readme-2.txt`

### 💻 Capture 5 : Code source du programme indépendant
**Fichier :** `screenshots/5.txt`  
**Description :** Présentation du code source de `lab10-2.asm`.  
**Fonctionnalité :** Programme qui demande le nom de l'utilisateur et crée un fichier `name.txt`.  
**Structure :** Demande → Lecture → Création fichier → Écriture → Fermeture.

### ✅ Capture 6 : Exécution et vérification de lab10-2
**Fichier :** `screenshots/6.txt`  
**Description :** Test complet du programme indépendant.  
**Séquence :**
1. Exécution : `./lab10-2`
2. Saisie : "lissomnathanael"
3. Vérification : `cat name.txt`  
**Résultat :** Fichier créé avec le contenu "Je m appelle lissomnathanael".
