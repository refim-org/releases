<p align="center">
  <img src="refi.png" alt="Refi" width="140">
</p>

<h1 align="center">Refim</h1>

<p align="center">
  <b>Kontinuierliche Verbesserung, die tatsächlich im Alltag ankommt.</b><br>
  Refim macht aus der KI, die du ohnehin nutzt, einen Kollegen, der mit dir
  reflektiert, Lösungen erarbeitet, umsetzt, was sich umsetzen lässt – und
  zurückkommt, um zu sehen, ob sich tatsächlich etwas verändert hat.
</p>

<p align="center">
  <a href="#installieren">Installieren</a> ·
  <a href="#so-funktioniert-refim">So funktioniert Refim</a> ·
  <a href="#in-english">English</a>
</p>

---

## Kommt dir das bekannt vor?

**Der Rückblick, der nie stattfindet.**
Die Woche war voll, die nächste ist es auch. Niemand stupst an, niemand fragt
nach – und von allein setzt man sich nicht hin, um zurückzuschauen.

**Die Retrospektive, aus der nichts folgt.**
Am Ende stehen sechs zutreffende Erkenntnisse an der Wand. Drei Wochen später
arbeitet niemand anders als zuvor.

**Das Thema, das man vor sich herschiebt.**
Du weißt seit Monaten, dass ein Teil deiner Arbeit besser laufen müsste. Es ist
nie dringend genug für heute und nie unwichtig genug, um es zu vergessen.

**Die Lösung, die man nicht umsetzen kann.**
Die Lösung ist klar, aber sie verlangt eine Vorlage, ein Skript, eine saubere
Struktur – etwas, das nicht dein Fach ist. Also bleibt es bei der Absicht.

In keinem dieser Fälle fehlt es an Einsicht. Es fehlt an dem, was drumherum
passieren müsste: der Anstoß, das Nachfassen, die Umsetzung.

## Was Refi anders macht

KI-Werkzeuge sind leistungsfähig. Systematisch besser machen sie dich trotzdem
nicht – es fehlt ein Verfahren, das über Wochen trägt, ein Gedächtnis zwischen
den Gesprächen und ein Anlass, von sich aus zu beginnen. Genau das bringt Refim mit.

- **Es dringt bis zur Ursache vor.** Refi arbeitet weiter, bis der Mechanismus
  hinter einem Problem benannt ist – heraus kommen wenige Handlungsfelder, keine
  Liste von Beobachtungen.
- **Es baut, was du nicht baust.** Eine Lösung endet nicht als Hausaufgabe. Was
  sich mit den Werkzeugen deiner KI erledigen lässt, erledigt Refi sofort: die
  Kalenderblöcke, die Vorlage, das Skript.
- **Es fängt das Gespräch an.** Du musst nicht daran denken zurückzuschauen.
  Refi meldet sich zu den Zeiten, die du festlegst, mit einem vorbereiteten
  Check-in – und hakt nach bei dem, was du dir vorgenommen hast.

## Vier Gespräche – ein Kreislauf

| | Gespräch | Worum es geht |
|---|---|---|
| 1 | **Kennenlernen** | Refi lernt dich, deine Arbeit und deine Ziele kennen. Du korrigierst, statt aufzuzählen. |
| 2 | **Retro** | Du sprichst zuerst, Refi ergänzt die Muster, die es sieht – bis die Ursache benannt ist. |
| 3 | **Co-Design** | Ihr arbeitet ein Problem zu einer Änderung aus, die du wirklich umsetzt – und Refi baut, was sich bauen lässt. |
| 4 | **Check-in** | Refi meldet sich von selbst und prüft, ob die vereinbarten Lösungen tragen. |

Du sprichst, Refi führt. Und es ist der Kreislauf, der etwas bewegt – nicht die
einzelne Sitzung.

## So funktioniert Refim

- **Eine App auf deinem Rechner** – für Windows, macOS folgt in Kürze. Du
  sprichst mit Refi in Refim; im Hintergrund meldet es sich zum Check-in.
- **Deine eigene KI.** Refi arbeitet über [Claude Code](https://code.claude.com/docs/en/setup)
  oder [Codex](https://developers.openai.com/codex/cli) – mit deinem Abo und den
  Diensten, die du dort verbunden hast, etwa Kalender oder Notion. Refim bringt
  kein eigenes Modell mit.
- **Deine Daten bleiben bei dir.** Profil, Handlungsfelder, Lösungen und alle
  Gespräche liegen als Dateien in einem Ordner deiner Wahl – gern auch in
  iCloud oder OneDrive. Was du mit Refi besprichst, verarbeitet deine KI so wie
  jede andere Anfrage, nach den Bedingungen deines Abos.
- **Eine offene Methode.** Wie Refi arbeitet, ist öffentlich:
  [refim-org/Refi](https://github.com/refim-org/Refi). Refim holt neue Versionen
  der Methode selbst.
- **Auf Wunsch mit Coach.** Du kannst einen Refim-Coach einladen, der mitliest
  und im Gespräch dazukommt. Seine Nachrichten laufen Ende-zu-Ende-verschlüsselt
  über einen Treffpunkt in der EU. Ohne Coaching meldest du dich dort gar nicht
  erst an.

## Installieren

**Voraussetzung:** Claude Code oder Codex ist installiert und du bist dort
angemeldet.

**Windows** – in PowerShell:

```powershell
irm https://raw.githubusercontent.com/refim-org/releases/main/install.ps1 | iex
```

**macOS** – im Terminal (sobald die Mac-Version da ist):

```bash
curl -fsSL https://raw.githubusercontent.com/refim-org/releases/main/install.sh | bash
```

Refim installiert sich in deinen Benutzerordner, braucht keine
Administratorrechte und hält sich danach selbst aktuell. Jede Version ist
signiert; Refim installiert nur Updates mit gültiger Signatur.

**Entfernen:** Windows – *Einstellungen → Apps → Installierte Apps → Refim →
Deinstallieren*. macOS – Refim in den Papierkorb legen. Dein Refim-Ordner mit
Gesprächen und Record bleibt dabei erhalten.

---

## In English

**Refim** turns the AI you already use into a colleague who reflects with you,
works out solutions, builds what can be built – and comes back to see whether
anything actually changed. Four conversations – getting to know you, retro,
co-design and check-in – form one loop, and Refi starts the check-in on its own.

Refim is an app on your computer (Windows; macOS soon). It works through your
own [Claude Code](https://code.claude.com/docs/en/setup) or
[Codex](https://developers.openai.com/codex/cli) on your own plan, keeps your
record and conversations as files in a folder you choose, and follows an open
method: [refim-org/Refi](https://github.com/refim-org/Refi). A Refim coach can
join if you invite one; their messages are end-to-end encrypted.

Install on Windows (PowerShell):

```powershell
irm https://raw.githubusercontent.com/refim-org/releases/main/install.ps1 | iex
```

Builds and `latest.json` (the newest build per platform) are in this repository.
