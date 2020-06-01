Datensatz RAF
Codebuch Stand 2020-06-01  
erstellt von Hannah Bauer (hb062@hdm-stuttgart.de)

## Inhalt
- Edges.csv (Edgelist)
- Nodes.csv (Nodelist)
- Codebuch.rm (Codierung der Datensätze)

## Forschungsinteresse, Ursprung und Datenerhebung
In unserem Netzwerkforschungprojekt wollen wir die Netzwerke der ersten und zweiten RAF-Generation visualisieren, die von den 1960er bis zu den späten 1980er-Jahren aktiv waren. Die zentrale Forschungsfrage ist dabei, ob und inwieferen sich die ersten beiden Generationen unterscheiden und ob es zentrale Knoten gab, welche die Verbindung und den Shift zwischen den Generationen geschaffen haben. Die Daten haben wir anhand von Literaturrecherche erhoben und entsprechend der nachfolgenden Kriterien kategorisiert und codiert.

Das Netzwerk ist ein *ungerichtetes two-mode Akteursnetzwerk*. 

# EDGE-Attribute

**Edgelist: Grundregel** 
Die Edgelist darf pro Spalte immer nur einen Wert enthalten. Bis auf die ID und den Namen ist dieser idealerweise numerisch codiert (als Zahl).

**from**
Die Werte in der Spalte "from" definieren den Sender in gerichteten Netzwerken, beziehungsweise generell einen Ausgangspunkt einer Beziehung. Da wir ein ungerichtetes Netzwerk erhoben haben, ist die Richtung der Beziehung nicht relevant. Der eingetragene Wert entspricht einer ID in der Nodelist und enthält keine Sonderzeichen, sondern nur ein Wort.

**to**
Die Werte in der Spalte "to" definieren den Empfänger in ungerichteten Netzwerken. Der eingetragene Wert entspricht einer ID in der Nodelist und enthält keine Sonderzeichen, sondern nur ein Wort.

**relation**
Das Edge-Attribut "relationship" definiert die Art der Beziehung zwischen den Knoten, da es sich um ein multiplexes Netzwerk mit verschiedenen Beziehungsarten handelt. 

1 = *Bekanntschaft* Bekanntschaft meint, dass zwei Akteure in Kontakt waren, jedoch nur einmalig oder wenige Male, sodass von keiner Freundschaft gesprochen werden kann. 
2 = *Freundschaft* Freundschaft setzt einen mehrmaligen Kontakt voraus oder wurde dann erhoben, wenn in den verwendeten Quellen explizit davon gesprochen wurde. 
3 = *Liebesbeziehung* 
4 = *Wohngemeinschaft*
5 = *gemeinsame Haft* 
6 = *Versorgung* Versorgung bedeutet beispielsweise, dass jemand eine andere Person als Anwalt unterstützt oder seine Wohnung zur Verfügung gestellt hat 
7 = *Teilnahme / Beteiligung an der Aktion* Die Beteiligung an einer Aktion kann sowohl deren Vorbereitung, Planung oder die Beschaffung der nötigen Mittel bedeuten als auch die aktive Teilnahme und Durchführung der Aktion. 
8 = *gemeinsame Ausbildung* 
9 = *Rekrutierung*  
10 = *Verwandschaft* 

**year**  
Das Edge-Attribut "year" definiert das Jahr, in dem die jeweilige Beziehung bestand, beispielsweise wenn zwei Akteure in einem spezifischen Jahr zusammengewohnt haben. Bei mehrjährigen Beziehungen wurde entsprechend für jedes separate Jahr eine Beziehung angelegt. Die Jahreszahlen reichen von 1961 bis 1998, ergo von den Anfangsjahren der RAF bis zum Ende der 90er Jahre, da einige Mitglieder zu diesem Zeitpunkt noch gemeinsam inhaftiert waren. Bei Beziehungen, bei denen das Jahr nicht bekannt war oder bei Verwandtschaftsbeziehungen, die beständig sind, wurde statt einer Jahreszahl der Wert "99" vergeben.

# NODE-Attribute  

Da es sich um eine two mode - Akteursnetzwerk handelt, in dem sowohl natürliche Personen der RAF und aus deren Umfeld, sowie Aktionen der RAF erfasst wurden, gibt es sowohl Node-Attribute, die sich auf alle Knoten beziehen als auch solche, die nur natürliche Personen oder nur Aktionen der RAF näher definieren. Bei diesen Attributen wurde für die Knoten, die davon nicht betroffen sind, der Wert "99" vergeben.
  
**id**  
(eindeutige Codierung des Knoten)   
codiert anhand der Initialen des Akteurs ("ab" für Andreas Baader) oder einer selbstgewählten Abkürzung für die Aktionen (z.B. "ent" - Schleyer-Entführung), jede ID entspricht einer natürlichen Person oder einer Aktion der RAF.

**name**
gibt den Namen oder die Bezeichnung des Knotens an. Bei Personen wurde hier der Vor- und Nachname angegeben, bei Aktionen deren Bezeichnung, sowie das Datum der Durchführung.

**type**
definiert den Typ der Knoten des two mode-Netzwerks 
1 = natürliche Person
2 = Aktion der RAF

*Node-Attribute, die Knoten des Typs 1 (natürliche Personen) näher definieren.*

**sex**    
definiert das Geschlecht der natürlichen Personen; 1= männlich, 2=weiblich, 3=divers. 
  
**religion**
definiert die Religionszugehörigkeit der natürlichen Personen
1 = katholisch
2 = evangelisch
3 = andere

**upbringing**
definiert, ob im Elternhaus der Person eine Pfarrer/in oder Pastor/in war, beispielsweise ein Elternteil, der ein kirchliches Amt inne hatte
1 = ja
2 = nein

**education**
definiert den höchsten Bildungsabschluss der natürlichen Personen 
1 = kein Abschluss 
2 = Hauptschulabschluss 
3 = Realschulabschluss
4 = Gymnasialabschluss / Abitur 
5 = Hochschulabschluss 

**job**
definiert, welcher Berufsgruppe die natürlichen Personen angehört haben 
1 = Journalist/in 
2 = Lehramt / Pädagogik
3 = Jurist/in
4 = Sonstige
5 = Student/in
6 = Künstler/in 

**generation** 
definiert, welcher der beiden ersten Generationen die natürlichen Personen angehört haben
Die dritte Generation der RAF wurde außen vor gelassen, da hinsichtlich deren Mitglieder wenig offizielle Informationen vorliegen und einige sogar noch heute im Untergrund sind, was eine Datenerhebung sehr erschwert hätte.
1 = 1. Generation
2 = 2. Generation
3 = beide Generationen
4 = Unterstützer*in (kein offizielles / aktives Mitglied einer der beiden Generationen)

**membership**
definiert bei natürlichen Personen, ob diese Mitglied der RAF waren (oder ob es sich nur um Unterstützer*innen gehandelt hat). So können beispielsweise reine Mitgliedernetzwerke erstellt werden. Bei Knoten des Typs 2 (Aktion) wurde dies nicht definiert.
1 = ja
2 = nein

**entry**
definiert das Jahr, in dem natürliche Personen in die RAF eingetreten sind. Bei dem Wert handelt es sich um eine Jahreszahl. Bei Nicht-Mitgliedern und Aktionen der RAF wurde dieser Wert nicht vergeben.

**founding member** 
definiert, ob eine natürliche Person ein Gründungsmitglied der RAF war
Bei Aktionen der RAF wurde dieser Wert nicht vergeben.
1 = Ja
2 = Nein

**different organisation**
definiert, ob die Person Mitglied in einer anderen Organisation als der RAF war
1 = SPK (Sozialistisches Patientenkollektiv)
2 = Kommune I 
3 = Zentralrat der umherschweifenden Haschrebellen
4 = Bewegung 2. Juni

**resignation**
definiert, ob ein Mitglied ausgetreten ist oder sich zurückgezogen hat
1 = Ja
2 = Nein
3 = Bis zum Tod Mitglied

**year of resignation**
Definiert das Jahr, in dem die entsprechenden Mitglieder aus der RAF ausgetreten sind. Bei dem Wert handelt es sich um eine Jahreszahl.

**symbolic death**
definiert das Todesjahr eines RAF Mitglieds, das gestorben ist, während es noch aktiv an der Sache beteiligt war (z.B. Suizid, Tod bei einem Schusswechsel etc.)


*Node-Attribute, die sich auf Knoten des Typs 2 (Aktionen der RAF) beziehen*

**place**
definitert den Ort, an dem die Aktionen durchgeführt wurden. Bei Knoten des Typs 1 (natürliche Person) wurde dies nicht definiert.
1 = Deutschland
2 = Ausland

**year** 
definiert das Jahr, in dem die jeweilige Aktion durchgeführt wurde. Der Wert besteht dabei aus einer Jahreszahl. Bei Knoten des Typs 1 (natürliche Person) wurde dies nicht definiert. 

**category**
category,"definiert die Art der Knoten, bei denen es sich um eine Aktion handelt
1 = Mord
2 = Brandstiftung
3 = Raub
4 = Bombenanschlag
5 = Geiselnahme
6 = Befreiung
7 = Andere

**motivation**
definiert die Motivation, die den Aktionen zugrunde lag
1 = politisch motiviert
2 = persönlich (zur Befreiung der ersten Generation)
3 = Versorgung (Beschaffung von Geld, Sprengstoff o.ä.)


*Fehlende Werte*
99 = fehlende Werte, etwa wenn diese nicht verfügbar waren oder wenn das Attribut nur auf Personen bezogen ist, wurde bei Knoten des Typs 2 (Aktion) dieser Wert vergeben, Eine vorherige Codierung mit "NA" hat zu Problemen bei der Netzwerkgenerierung geführt, was mit Vergabe des Werts "99" stattdessen behoben werden konnte.

##










