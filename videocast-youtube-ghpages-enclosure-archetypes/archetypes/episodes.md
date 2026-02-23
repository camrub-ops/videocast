
---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
description: ""
# Opciones de publicación del episodio (elige al menos una)
youtubeId: ""        # p.ej. "dQw4w9WgXcQ"
videoFile: ""        # p.ej. "https://tu-cdn.com/videos/episodio-003.mp4"
videoLength: 0        # tamaño en bytes del archivo de vídeo (recomendado)
audio: ""            # alternativa en audio MP3 si publicas versión solo audio
draft: true
---

{{/* Si usas YouTube: */}}
{{ with .Params.youtubeId }}
{{< youtube id=. >}}
{{ end }}

Notas del episodio:
- 
