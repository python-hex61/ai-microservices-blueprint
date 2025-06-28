# === Schritt 1: Die Submodule hinzufügen (Die vorgefertigten Bauteile) ===
# Das holt die externen Projekte in dein Projekt.

git submodule add https://github.com/minimal-ui-kit/minimal-free.git frontend
git submodule add https://github.com/zldrobit/yolov8-fastapi-docker.git ai-services/vision-service
git submodule add https://github.com/QuivrHQ/quivr.git ai-services/rag-service
git submodule add https://github.com/jhipster/jhipster-sample-app-spring.git backend/business-service


# === Schritt 2: Unsere eigenen Ordner und Dateien erstellen ===
# Wir erstellen die Verzeichnisse für unseren eigenen Code.

mkdir -p backend/ai-orchestrator/src/main/java/com/blueprint/orchestrator/config
mkdir -p backend/ai-orchestrator/src/main/java/com/blueprint/orchestrator/service


# === Schritt 3: Alle Konfigurationsdateien mit dem richtigen Inhalt füllen ===
# Wir überschreiben die einfache README.md und erstellen alle anderen Dateien.
# Kopiere jeden dieser Blöcke einzeln, füge ihn in dein Terminal ein und drücke Enter.

# 3.1 Die professionelle README.md
cat > README.md << 'EOF'
# (Hier den kompletten Inhalt der großen README.md aus meiner vor-vorherigen Antwort einfügen)
EOF

# 3.2 Die docker-compose.yml
cat > docker-compose.yml << 'EOF'
# (Hier den kompletten Inhalt der docker-compose.yml einfügen)
EOF

# 3.3 Die .env.example
cat > .env.example << 'EOF'
OPENAI_API_KEY="HIER_DEINEN_OPENAI_SCHLÜSSEL_EINFÜGEN"
EOF

# 3.4 Das Frontend-Dockerfile
cat > frontend/Dockerfile << 'EOF'
# (Hier den Inhalt für das Frontend-Dockerfile einfügen)
EOF

# 3.5 Die pom.xml für den Orchestrator
cat > backend/ai-orchestrator/pom.xml << 'EOF'
# (Hier den Inhalt der pom.xml einfügen)
EOF

# 3.6 Das Dockerfile für den Orchestrator
cat > backend/ai-orchestrator/Dockerfile << 'EOF'
# (Hier den Inhalt für das Orchestrator-Dockerfile einfügen)
EOF

# 3.7 Die Java-Klassen...
cat > backend/ai-orchestrator/src/main/java/com/blueprint/orchestrator/AiOrchestratorApplication.java << 'EOF'
# (Hier den Inhalt der AiOrchestratorApplication.java einfügen)
EOF
cat > backend/ai-orchestrator/src/main/java/com/blueprint/orchestrator/config/WebClientConfig.java << 'EOF'
# (Hier den Inhalt der WebClientConfig.java einfügen)
EOF
cat > backend/ai-orchestrator/src/main/java/com/blueprint/orchestrator/service/VisionService.java << 'EOF'
# (Hier den Inhalt der VisionService.java einfügen)
EOF
cat > backend/ai-orchestrator/src/main/java/com/blueprint/orchestrator/OrchestrationController.java << 'EOF'
# (Hier den Inhalt des modifizierten OrchestrationController.java einfügen)
EOF


# === Schritt 4: Den großen "Update"-Commit machen und hochladen ===

# Füge alle neuen Dateien und die Submodule-Links zu Git hinzu
git add .

# Erstelle einen aussagekräftigen Commit
git commit -m "feat: Add complete project structure, services, and configuration"

# Lade die massive Aktualisierung auf GitHub hoch (diesmal ohne -u origin main, da die Verbindung schon steht)
git push