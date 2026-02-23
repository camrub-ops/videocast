
# Mi Video Podcast (Hugo + YouTube + Miniaturas + Feed con enclosure + Archetypes)

## Crear nuevos episodios con archetype
Opción 1 (interactiva vía editor):
```bash
hugo new episodes/episodio-003.md
```
Esto generará el front‑matter con los campos:
- `youtubeId`
- `videoFile`, `videoLength`
- `audio`
Rellena lo que corresponda y quita `draft: true` cuando esté listo.

Opción 2 (script):
```bash
bash scripts/new-episode.sh "Episodio 003 – Tema" dQw4w9WgXcQ
# o con archivo MP4
bash scripts/new-episode.sh "Episodio 004 – Tema" "" "https://tu-cdn.com/videos/episodio-004.mp4" 123456789
```

## Despliegue
- Push a `main` → Actions descarga miniaturas, compila y publica en `gh-pages`.

## Feeds
- `/index.xml` → RSS informativo (enlaza a YouTube)
- `/feed.xml` → Podcast con `enclosure` condicional (para Apple/Spotify necesitas `videoFile` o `audio`).
