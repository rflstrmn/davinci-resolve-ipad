# DaVinci Resolve for iPad – Folien

Slidev-Präsentation für den Workshop. Live: https://rflstrmn.github.io/davinci-resolve-ipad/

## Befehle

```bash
npm install        # einmalig
npm run dev        # lokal bearbeiten (http://localhost:3030)
npm run remote     # im WLAN fürs iPad freigeben (http://<Mac-IP>:3030)
npm run build      # statischer Build nach dist/
npm run export     # PDF (benötigt einmalig: npm i -D playwright-chromium)
```

Jeder Push auf `main` baut und veröffentlicht die Folien automatisch über GitHub Pages.

## Am iPad präsentieren

1. Live-URL in Safari öffnen → Teilen → **Zum Home-Bildschirm** (läuft dann im Vollbild wie eine App).
2. Blättern: wischen oder die ‹ › Buttons unten rechts.
3. Zu DaVinci Resolve wechseln per Dock / App-Umschalter – die aktuelle Folie bleibt erhalten (Foliennummer steht in der URL).

## Dateien

- `slides.md` – alle Folien (neue Folie mit `---`)
- `style.css` – Resolve-Dark-Look
- `components/LinkButton.vue` – Button für externe Links (`<LinkButton href="…">Text</LinkButton>`)
- `global-bottom.vue` – Tap-Navigation
- `public/images/` – Screenshots, im Markdown als `/images/datei.png` einbinden

## Synology Drive

`node_modules`, `dist` und `.slidev` sollten nicht synchronisiert werden:
Synology Drive Client → Synchronisierungsaufgabe → Einstellungen → Filter → Ordnernamen ausschließen.
