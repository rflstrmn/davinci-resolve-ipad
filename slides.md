---
theme: default
colorSchema: dark
title: DaVinci Resolve for iPad
info: |
  Workshop: DaVinci Resolve auf dem iPad
aspectRatio: 4/3
canvasWidth: 1024
transition: slide-left
drawings:
  persist: false
fonts:
  sans: Inter
  mono: JetBrains Mono
exportFilename: davinci-resolve-ipad
layout: cover
class: cover-slide
---

<div class="resolve-stripes"><span /><span /><span /><span /></div>

# DaVinci Resolve<br><span class="accent">for iPad</span>

Videoschnitt und Color Grading am iPad

<div class="meta">Rafael Starman · 17.10.2026</div>

<!--
Notizen: Begrüßung, kurz vorstellen, Ablauf des Workshops.
-->

---

# Was ist Blackmagic Design?

<div class="grid grid-cols-2 gap-10 items-center mt-6">
<div>

- **Kameras**
- **Live-Produktion (ATEM)**
- **DaVinci Resolve**
- **Hardware-Panels**

</div>
<div class="flex flex-col items-center gap-6">
  <a href="https://www.blackmagicdesign.com/" target="_blank" rel="noopener">
    <img src="/images/blackmagic.jpg" class="screenshot" alt="Webseite von Blackmagic Design">
  </a>
  <LinkButton href="https://www.blackmagicdesign.com/">Webseite öffnen</LinkButton>
</div>
</div>

<!--
Notizen: Die Webseite lässt sich nicht einbetten (Blackmagic verbietet iframes).
Button öffnet sie in einem neuen Safari-Tab – danach zurück zum Folien-Tab.
Tippen auf den Screenshot öffnet ebenfalls die Webseite.
-->

---

<div class="flex flex-col items-center">
  <img src="/images/davinci-resolve-logo.png" class="resolve-logo" alt="DaVinci Resolve Logo">
  <h1 class="resolve-title">DaVinci Resolve</h1>
</div>

<div class="stage">

<!-- Startansicht: Foto vom alten DaVinci Resolve, verschwindet beim Klick -->
<div v-click.hide="1" class="stage-layer flex justify-center">
  <img src="/images/hero-lg.jpg" class="stage-photo" alt="DaVinci Resolve am Schnittplatz mit Monitoren und Panels">
</div>

<!-- Nach dem Klick: läuft automatisch ab – links Pfeil → PC → Liste, dann rechts Pfeil → iPad → Liste -->
<div v-click="1" class="stage-layer platforms">
  <svg class="arrows" viewBox="0 0 912 100">
    <path class="arrow-line left" pathLength="1" d="M456 0 V34 H238 Q218 34 218 54 V86" />
    <path class="arrow-head left" d="M208 84 L218 100 L228 84 Z" />
    <path class="arrow-line right" pathLength="1" d="M456 0 V34 H674 Q694 34 694 54 V86" />
    <path class="arrow-head right" d="M684 84 L694 100 L704 84 Z" />
  </svg>
  <div class="grid grid-cols-2 gap-10">
<div class="platform left">
  <mdi-desktop-tower-monitor class="platform-icon" />
  <div class="platform-label">Mac / PC</div>

- Media, Cut, Edit, Fusion, Color, Fairlight, Deliver
- Maus, Tastatur, Panels
- TODO

</div>
<div class="platform right">
  <mdi-tablet-ipad class="platform-icon" />
  <div class="platform-label">iPad</div>

- TODO
- Touch, Pencil, Tastatur
- TODO

</div>
  </div>
</div>

</div>

<!--
Notizen: TODO
-->

---
class: compare-slide
---

# iPad: Kostenlos vs. Studio

<div class="compare">
  <div class="card">
    <h3>Kostenlos</h3>
    <ul>
      <li>TODO</li>
      <li>TODO</li>
      <li>TODO</li>
    </ul>
  </div>
  <div class="card card-studio">
    <h3>Studio <span class="price">TODO €</span></h3>
    <ul>
      <li>✨ Magic Mask</li>
      <li>✨ Voice Isolation</li>
      <li>✨ Super Scale</li>
      <li>TODO</li>
    </ul>
  </div>
</div>

<!--
Notizen: Fokus auf die KI-Tools (DaVinci Neural Engine). Live in Resolve zeigen: Magic Mask.
-->

---
layout: center
class: text-center
---

# Weitere Folien folgen …

<div class="opacity-60">TODO</div>

<!--
Notizen: Platzhalter – neue Folien mit `---` anlegen.
-->

---
layout: cover
class: cover-slide
---

<div class="resolve-stripes"><span /><span /><span /><span /></div>

# Fragen?

<div class="meta">Danke!</div>
