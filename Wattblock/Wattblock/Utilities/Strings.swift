//
//  Strings.swift
//  Wattblock
//
//  Created by Pascal Mönch on 31.08.23.
//

import SwiftUI

enum Strings {
    static let appName = "Wattblock"
    static let vs1 = "1 vs 1"
    static let vs2 = "2 vs 2"
    static let stats = "Statistiken"
    static let players = "Spieler"
    static let weather = "Wetter"
    static let rules = "Regeln"
    static let settings = "Einstellungen"
    static let profile = "Profil"
    static let email = "E-Mail"
    static let password = "Passwort"
    static let repeatPassword = "Passwort wiederholen"
    static let signIn = "Anmelden"
    static let signOut = "Abmelden"
    static let signUp = "Registrieren"
    static let design = "Design"
    static let general = "Allgemein"
    static let user = "Benutzer"
    static let lightMode = "Hell"
    static let darkMode = "Dunkel"
    static let systemCapitalized = "System"
    static let light = "light"
    static let dark = "dark"
    static let system = "system"
    static let colorScheme = "Farbschema"
    static let termsOfUse = "Nutzungsbedingungen"
    static let dataProtection = "Datenschutz"
    static let plus2 = "+2"
    static let plus3 = "+3"
    static let plus4 = "+4"
    static let plus5 = "+5"
    static let plus6 = "+6"
    static let minus2 = "-2"
    static let minus3 = "-3"
    static let name = "Name"
    static let save = "Speichern"
    static let delete = "Löschen"
    static let choosePlayer = "Spielerwahl"
    static let choosePlayerHead = "Wähle dich, deinen Mitspieler und deine Gegner aus:"
    static let chooseEnemy = "Wähle dich und deinen Gegner aus:"
    static let done = "Weiter"
    
    static let rulesPart1 = "Regeln des Bayerischen Wattens"
    static let rulesPart2 = "An dem Spiel nehmen vier Spieler teil, wobei die Gegenübersitzenden jeweils zusammenspielen. Es wird meist mit dem Deutschen Blatt oder einer regionalen Abwandlung gespielt, wobei jeder Spielteilnehmer fünf Karten erhält. Ziel jedes Paares ist es, pro Spiel drei Stiche zu erzielen und damit zu gewinnen."
    static let rulesPart3 = "Die Farben des deutschen Blatts:"
    static let rulesPart4 = "Die drei stichwertig höchsten Karten sind die drei Kritischen, die regional unterschiedlich auch als Kritten, Griechische oder Griechen bezeichnet werden:"
    static let rulesPart5 = "- Herz-König ist die höchste Karte im Spiel und wird als Max bezeichnet."
    static let rulesPart6 = "- Schellen 7 ist die zweithöchste Karte, der sogenannte Belle."
    static let rulesPart7 = "- Eichel 7 ist die dritthöchste Karte, der sogenannte Spitz."
    static let rulesPart8 = "Danach folgen die vier Schläge, vier Karten einer bestimmten Zahl. Die nächstniedrigere Kategorie nach dem Schlag sind die Karten in der Trumpf-Farbe. Trümpfe stechen alle restlichen Karten, die nicht kritisch oder Schläge sind. Unter den Trümpfen existiert folgende Stichreihenfolge:"
    static let rulesPart9 = 
    """
        - Ass
        - König
        - Ober
        - Unter
        - 10
        - 9
        - 8
        - 7
    """
    static let rulesPart10 = "Die Karte, die sowohl Schlag als auch Trumpf ist, nennt man Hauwe. Sie ist die vierthöchste Karte nach den Kritischen. Bei den drei restlichen Schlägen gibt es keine Stichreihenfolge, es sticht immer die zuerst gespielte Karte."
    static let rulesPart11 = "Im Gegensatz zu vielen anderen Kartenspielen herrscht beim Watten weder Stich- noch Farbzwang. Eine Ausnahme ist das Ausspielen des Hauwes als erste Karte eines Spiels. In diesem Fall müssen alle Spielbeteiligten in dieser Runde der Aufforderung 'Trumpf oder Kritisch' nachkommen. Wurde der Hauptschlag mit einem Kritischen gestochen, müssen die weiteren Spieler keinen Trumpf mehr ausspielen."
    static let rulesPart12 = "Hat ein Spieler alle drei Kritischen in seiner Hand, eine sogenannte Maschine, muss er seine Karten vor Spielbeginn aufdecken und gewinnt automatisch das Spiel mit 2 Punkten. Eine andere Regelvariante sieht vor, dass er auch weiterspielen darf, wenn er hofft, durch Bluff-Technik 3 oder mehr Punkte zu erreichen."
    static let rulesPart13 = "Spielverlauf"
    static let rulesPart14 = "Vor dem Austeilen der Karten werden diese gemischt und vom hinter (rechts) dem Geber sitzenden Spieler abgehoben. Falls die unterste Karte des abgehobenen Stapels ein Kritischer ist, darf er diese behalten (so genanntes Schlecken). Daraufhin hat der Geber das Recht, die nächstfolgende Karte anzusehen und ebenfalls zu entnehmen, wenn diese kritisch ist. Im seltenen Fall eines dritten darunter liegenden Kritischen steht dieser wieder dem Abhebenden zu. Verzichtet der Abhebende auf sein Entnahmerecht, ist dies auch für den Geber aufgehoben. Der Abhebende kann aber auch eine Karte, die nicht kritisch ist, als Bluff entnehmen. Werden aber alle fünf Spielzüge des Spiels ausgeführt ohne dass der Abhebende einen Kritischen vorgewiesen hat, kann dessen Team um 2 Punkte gestraft werden."
    static let rulesPart15 = "Der Schlag wird vom ersten Spieler nach dem Geber (Vorhand) angesagt. Der Geber sagt daraufhin die Trumpffarbe an. Verbreitet ist die Möglichkeit der Vorhand, dem Geber einen sogenannten Schlagwechsel anzubieten, den dieser annehmen oder ablehnen kann. Im ersten Fall sagt dann der Geber den Schlag, die Vorhand die Farbe an; die Vorhand spielt weiterhin aus. Bei Ablehnung bleibt alles beim Alten."
    static let rulesPart16 = "Nach dem Ansagen spielt der Spieler links (Vorhand) vom Geber als Erster eine Karte aus, danach folgen im Uhrzeigersinn die übrigen Spieler. Der Spieler, der die höchste Karte in der Runde ausgeworfen hat, gewinnt diesen Stich und nimmt ihn zu sich. Anschließend muss dieser Spieler als Erster auswerfen, die restlichen Spieler folgen im Uhrzeigersinn. Wird ein Stich ohne Kritische, Trumpf oder Schlag, also nur mit einer höherwertigen Karte in der ausgespielten Farbe gewonnen, nennt man dies dant gestochen."
    static let rulesPart17 = "Das Paar, das als erstes drei Stiche hat, gewinnt das Spiel. Ein einfach gewonnenes Spiel erbringt zwei Punkte."
    static let rulesPart18 = " Fühlt sich eine Partei überlegen, kann sie während des Spiels die Zahl der Punkte, um die gespielt wird, um eins erhöhen (ausschaffen). Die andere Partei kann dann entweder kampflos aufgeben, wobei das Spiel mit der alten Punktzahl gewertet wird, oder die Herausforderung annehmen und um die erhöhte Punktzahl weiterspielen. Das Ausschaffen darf beliebig oft wiederholt werden, aber nur abwechselnd von beiden Parteien. Durch diese Steigerungsmöglichkeit entsteht - ähnlich zum Pokern - die Möglichkeit zum bluffen. Das Ausschaffen erfolgt mit der Frage 'Gehst?' (bzw. 'Gehts?'; Rückfrage: 'Gehst du?/Gehts ihr?') oder indem man eine verdeckte (also umgedreht liegende) Karte spielt. Deckt die andere Partei die Karte auf, nimmt sie die Herausforderung an."
    static let rulesPart19 = "Eine Runde ist normalerweise mit 15 Punkten gewonnen. Ab 13 Punkten ist man gespannt, das heißt, man darf nicht mehr ausschaffen. Jedes Spiel geht dann um drei Punkte, die gespannte Partei darf jedoch, wenn sie sich unterlegen fühlt, nach dem Ansagen von Trumpf und Schlag die Runde aufgeben (gehen), wobei die Gegner nur zwei Punkte erhalten. Die gespannte Partei wird markiert, indem ihre bisherigen Punkte auf dem Punktezettel durchgestrichen werden, daher wird sie auch als 'gestrichen' bezeichnet. In einer Variante dürfen in dieser Situation beide Parteien nicht mehr ausschaffen; die gespannte Partei erhält für den Sieg 2 Punkte, die zurückliegende erhält, wenn die gespannte Partei aufgibt 2 Punkte und für jeden Sieg automatisch 3 Punkte. Die zurückliegende Partei kann aber, durch ausschaffen, auf 4 erhöhen."
    static let rulesPart20 = "Nach Ende eines Spiels erhält die Gewinnerpartei auf dem Punktzettel einen schwarzen Punkt, das sogenannte Bummerl bzw. eine Mass."
    static let rulesPart21 = "Für Spielfehler wird oft eine Strafe von 2 oder 3 Punkten erteilt, beispielsweise wenn ein gespannter Spieler dennoch ausschafft."
    static let rulesPart22 = "Spielvarianten für weniger Spieler"
    static let rulesPart23 = "Weiterhin existieren auch Varianten für zwei Spieler (die Vorhand sagt den Schlag an, der Geber den Trumpf)."
}
