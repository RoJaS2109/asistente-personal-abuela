# Asistente Personal para Adultos Mayores

Un asistente de voz local para Raspberry Pi 5, diseñado para acompañar a personas con Alzheimer.

## 🛠️ Tecnologías
- **STT:** Vosk (offline)
- **TTS:** Piper (voz en español)
- **NLP:** TinyLlama (1.1B, 4-bit)
- **Memoria:** SQLite + FAISS

## ⚡ Instalación
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/asistente-personal-abuela.git

    Instalar dependencias:
    bash

pip install -r requirements.txt

Descargar modelos:
bash

    bash scripts/download_models.sh

🚀 Uso
python

python src/main.py --modo voz

📌 Roadmap

    Fase 1: STT + TTS básico

    Fase 2: Integración NLP local

    Fase 3: Análisis emocional

text


---

### **5. Scripts Útiles**
#### **`scripts/download_models.sh` (descargar modelos):**
```bash
#!/bin/bash

# Modelo Vosk (español)
wget https://alphacephei.com/vosk/models/vosk-model-small-es-0.42.zip
unzip vosk-model-small-es-0.42.zip -d config/modelos/

# Modelo Piper (voz en español)
wget https://github.com/rhasspy/piper/releases/download/v0.0.2/piper_es_ES.tar.gz
tar -xzf piper_es_ES.tar.gz -C config/modelos/

# TinyLlama (4-bit quantizado)
wget https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF/resolve/main/tinyllama-1.1b-chat-v1.0.Q4_K_M.gguf -P config/modelos/

scripts/start_service.sh (ejecutar como servicio):
bash

#!/bin/bash

# Configurar el asistente como servicio en Raspberry Pi
sudo cp scripts/asistente.service /etc/systemd/system/
sudo systemctl enable asistente.service
sudo systemctl start asistente.service
