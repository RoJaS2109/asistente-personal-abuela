
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
