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
  <a href="https://www.blackmagicdesign.com/" target="_blank" rel="noopener" class="image-link">
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

<div class="phases">

<!-- Phase 1 (Klick 0–1): DaVinci Resolve → Mac/PC und iPad. Klick 2 blendet alles langsam aus. -->
<div v-click.hide="2" class="phase phase1">

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
<TreeReveal :at="1" class="stage-layer platforms">
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

- Mehr "Pages": Media, Cut, Edit, Fusion, Color, Fairlight, Deliver

</div>
<div class="platform right">
  <mdi-tablet-ipad class="platform-icon ipad-origin" />
  <div class="platform-label ipad-origin">iPad</div>

- Nur Cut und Color Page

</div>
  </div>
</TreeReveal>

</div>

</div>

<!-- Phase 2 (Klick 2): iPad-Icon fliegt nach oben, dann Kostenlos / Studio. Klick 3 blendet aus. -->
<div v-click="[2, 3]" class="phase phase2">

<div class="flex flex-col items-center">
  <mdi-tablet-ipad class="tree-root-icon fly-icon" />
  <h1 class="resolve-title fly-label">iPad</h1>
</div>

<div class="stage">

<!-- Nach dem Flug automatisch: links Kostenlos, dann rechts Studio -->
<TreeReveal :at="2" :duration="8000" class="stage-layer platforms after-fly">
  <svg class="arrows" viewBox="0 0 912 100">
    <path class="arrow-line left" pathLength="1" d="M456 0 V34 H238 Q218 34 218 54 V86" />
    <path class="arrow-head left" d="M208 84 L218 100 L228 84 Z" />
    <path class="arrow-line right" pathLength="1" d="M456 0 V34 H674 Q694 34 694 54 V86" />
    <path class="arrow-head right" d="M684 84 L694 100 L704 84 Z" />
  </svg>
  <div class="grid grid-cols-2 gap-10">
<div class="platform left">
  <mdi-gift-outline class="platform-icon" />
  <div class="platform-label">Kostenlos</div>

</div>
<div class="platform right studio">
  <mdi-creation class="platform-icon" />
  <div class="platform-label">Studio <span class="price">129,- €</span></div>

+ KI Tools
+ Magic Mask
+ Voice Isolation
+ Super Scale

</div>
  </div>
</TreeReveal>

</div>

</div>

<!-- Phase 3 (Klick 3): iPad fliegt zurück, DaVinci Resolve Studio – Mac/PC ≠ iPad -->
<div v-click="3" class="phase phase3">

<div class="flex flex-col items-center p3-fade">
  <img src="/images/davinci-resolve-logo.png" class="resolve-logo" alt="DaVinci Resolve Logo">
  <h1 class="resolve-title">DaVinci Resolve <span class="accent">Studio</span></h1>
</div>

<div class="stage">
<div class="stage-layer platforms tree-done">
  <svg class="arrows p3-fade" viewBox="0 0 912 100">
    <path class="arrow-line left" pathLength="1" d="M456 0 V34 H238 Q218 34 218 54 V86" />
    <path class="arrow-head left" d="M208 84 L218 100 L228 84 Z" />
    <path class="arrow-line right" pathLength="1" d="M456 0 V34 H674 Q694 34 694 54 V86" />
    <path class="arrow-head right" d="M684 84 L694 100 L704 84 Z" />
  </svg>
  <div class="neq">≠</div>
  <div class="grid grid-cols-2 gap-10">
<div class="platform left">
  <mdi-desktop-tower-monitor class="platform-icon p3-fade" />
  <div class="platform-label p3-fade">Mac / PC</div>


</div>
<div class="platform right">
  <mdi-tablet-ipad class="platform-icon fly-back-icon" />
  <div class="platform-label fly-back-label">iPad</div>


</div>
  </div>
</div>
</div>

</div>

</div>

<!--
Notizen: Klick 1 – Foto weg, Mac/PC und iPad erscheinen.
Klick 2 – iPad fliegt nach oben, Kostenlos vs. Studio.
Klick 3 – iPad fliegt zurück: DaVinci Resolve Studio, Mac/PC ≠ iPad.
Fokus auf die KI-Tools (DaVinci Neural Engine). Live in Resolve zeigen: Magic Mask.
-->

---

# Übersicht

<div class="overview">
  <div></div>
  <div class="ov-col"><mdi-tablet-ipad class="ov-icon" />iPad</div>
  <div class="ov-col"><mdi-desktop-tower-monitor class="ov-icon" />Mac / PC</div>

  <div class="ov-row"><img src="/images/davinci-resolve-logo.png" class="ov-logo" alt=""><span>DaVinci Resolve</span></div>
  <div class="ov-cell">
    <div class="ov-price">KOSTENLOS</div>
    
  </div>
  <div class="ov-cell">
    <div class="ov-price">KOSTENLOS</div>
  </div>

  <div class="ov-row"><img src="/images/davinci-resolve-logo.png" class="ov-logo" alt=""><span>DaVinci Resolve<br><span class="accent">Studio</span></span></div>
  <div class="ov-cell ov-studio">
    <div class="ov-price">129.- €</div>
  </div>
  <div class="ov-cell ov-studio">
    <div class="ov-price">236.- €</div>
    <ul>
    <li>zwei Rechner</li>
    </ul>
  </div>
</div>

<!--
Notizen: Zusammenfassung – welche Version auf welchem Gerät, was kostet sie, was kann sie.
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
