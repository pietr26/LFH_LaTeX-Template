# LaTeX-Vorlage für Codespaces inkl. Leibniz-FH-Vorgaben
Dieses Repository enthält Templates für das Schreiben von LaTeX-Dokumenten. Die Vorgaben der Handreichung zu schriftlichen Arbeiten (Stand 10/2024) wurden dabei berücksichtigt.

## Setup eines LaTeX-Codespaces mit GitHub und Zotero
1. Codespace im entsprechenden Repository öffnen
2. Anmelden bzw. Extension "LaTeX Workshop" (`james-yu.latex-workshop`) installieren
3. Installation von TeXLive:
```sh
sudo apt update
sudo apt install -y texlive-full latexmk
```

## Verbindung mit Zotero
Der Workflow mit Zotero sieht wie folgt aus: Die Zotero-Bibliothek wird online gepflegt und kann anschließend mithilfe eines Skriptes in den Codespace geladen werden.

1. Unter https://www.zotero.org/settings/security einen neuen API-Key erstellen und im Skript `ub.sh` eintragen
2. Nutzer-ID und Collection-ID (via URL) ebenfalls im Skript `ub.sh` eintragen
3. Konfiguration des Skriptes:
```sh
chmod +x ub.sh
```

## Anmerkungen zum Schreiben des Dokuments
- **Interne Unternehmensquellen:** Interne Unternehmensquellen können auch in Zotero eingetragen werden und müssen anschließend mit dem Tag `intern` markiert werden. Diese Quellen werden im Quellenverzeichnis gemäß Vorgabe automatisch gesondert gruppiert.
- **Konkretisierter APA-Stil:** Bei Kurzzitaten sind Seitenangaben sowohl in der Zitatsmarkierung als auch im Quellenverzeichnis notwendig. In Zotero kann dafür im Pages-Feld die Summe der verwendeten Seitenzahlen angegeben werden (Angabe im Quellenverzeichnis) und die Seiten der einzelnen Zitate dann entsprechend in der Zitationsmarkierung mit den `[eckigen Klammern]`.
  > Damit das Pages-Feld sichtbar ist, müssen Bücher als "Book Section" typisiert werden!