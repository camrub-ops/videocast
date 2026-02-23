
#!/usr/bin/env bash
# Uso:
# new-episode.sh "Titulo" [YOUTUBE_ID] [VIDEO_FILE_URL] [VIDEO_LENGTH_BYTES]
set -e
title="$1"; youtube="$2"; videofile="$3"; videolen="${4:-0}"
if [ -z "$title" ]; then
  echo "Uso: $0 "Titulo" [YOUTUBE_ID] [VIDEO_FILE_URL] [VIDEO_LENGTH_BYTES]" >&2
  exit 1
fi
slug=$(echo "$title" | iconv -t ascii//TRANSLIT | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g;s/^-+|-+$//g')
file="content/episodes/${slug}.md"
date=$(date +"%Y-%m-%dT%H:%M:%S%z")
mkdir -p content/episodes
cat > "$file" <<EOF
---
title: "$title"
date: $date
description: ""
youtubeId: "$youtube"
videoFile: "$videofile"
videoLength: $videolen
audio: ""
draft: true
---

{{< youtube id=.Params.youtubeId >}}

Notas del episodio:
- 
EOF
echo "Creado: $file"
echo "Edita el archivo, rellena campos y cambia draft a false cuando publiques."
