��    c      4  �   L      p  (   q  5   �  1   �  1   	  g   4	     �	     �	  
   �	     �	     �	  	   

     
     
     !
     6
     M
     [
  	   j
  �   t
     �
          %  B   7  d   z  _   �  `   ?  B   �  i   �  u   M  C   �             %   =     c  '   �     �  q   �  >        ^  }   e     �     �          +     7     T     X     [     g     o  G   �  B   �  d     _   x  `   �  ]   9  `   �  e   �  %   ^     �  
   �  b   �          '      7     X     w     �     �     �     �     �     �     �     �            
        *     0     >     N     _  '   f     �  *   �     �     �  o   �  	   [     e  .   {     �     �  	   �     �     �     �  "    6   .  4   e  1   �  .   �  y   �     u     �  
   �     �     �     �     �               &     F     V     d  �   u     �          #  [   5     �  u     v   �  [   �  Y   Z  Y   �  u        �  #   �  +   �  !   �  0        F  {   N  B   �        �         �   )   �      �      �      !     (!     ,!     /!     C!     L!  w   g!  X   �!  |   8"  x   �"  y   .#  X   �#  Y   $  V   [$  &   �$  #   �$     �$  n   %     {%     �%  "   �%  #   �%     �%     
&     &     .&     F&     X&     j&     z&     �&     �&     �&     �&     �&     �&     �&     '     '     &'     D'  /   J'     z'  .   �'  �   �'     O(      X(  @   y(     �(     �(  
   �(     )     	)     )     .   #   c   0   G       N   &   ^                    1   7          M   '                        `   P   !          	   E   b   4          /         )   -      O       5   +              @          X             K                    $   U                  Y   6           I   S   W           (              _   J   F       H       a   :   %   R   L   2   ]                  *   <          ?   \       3   C   B   =       ;   D   ,       A   V   8   T   Q             
       [   Z   >          "       9              -- enter or copy commands from help page 1. Place one 'cmnd' sign to be
    used as template.
 2. Add 'blank signs' to
    the input inventory.
 3. Take the copies
    from the output inventory. Add <num> items to a chest like node
taken from the item inventory.
<slot> is the inventory slot (1..8) Bot Chest: Sends signal to  Bot Control Unit Bot Sensor Bot Sensor: Connected with  Bot Sensor: Not connected Bot Timer Cancel Check Checked and approved Command error in line  Commands,Help Connected with Copy Cmnd Copy the nodes from
the stored pattern position
<size> is: 3x1, 3x2, 3x3,
5x1, 5x2, 5x3 (wide x deep)
<lvl> pattern level offset (0..4) Crop Sensor Crop Sensor: Connected with  Cycle time [min]: Dig the block above the robot.
<slot> is the inventory slot (1..8) Dig the block in front of the robot
<slot> is the inventory slot (1..8)
<lvl> is one of: -1   0   +1 Dig the block on the left side
<slot> is the inventory slot (1..8)
<lvl> is one of: -1   0   +1 Dig the block on the right side
<slot> is the inventory slot (1..8)
<lvl> is one of: -1   0   +1 Dig the block under the robot.
<slot> is the inventory slot (1..8) Dig the sign in front of the robot
and add it to the signs inventory.
<slot> is the inventory slot (1..6) Dig the sign in front of the robot
and add the cleared sign to
the item iventory.
<slot> is the inventory slot (1..8) Drop items in front of the bot.
<slot> is the inventory slot (1..8) Error: No sign available Error: Position is protected Error: Position protected or occupied Error: Signs inventory empty Error: Signs inventory slot is occupied Exit Go to the next sign
to be executed as a sub-process.
After that it will go on with the next command
on this sign. Harvest farming products
in front of the robot
on a 3x3 field. Input: Move the robot 1..99 steps forward
without paying attention to any signs.
Up and down movements also become
counted as steps. Move the robot down Move the robot one step back Move the robot upwards Node Sensor Node Sensor: Connected with  Off On Other items Output: Parameter error in line  Pick up all objects
in a 3x3 field.
<slot> is the inventory slot (1..8) Place a block above the robot.
<slot> is the inventory slot (1..8) Place a block in front of the robot
<slot> is the inventory slot (1..8)
<lvl> is one of: -1   0   +1 Place a block on the left side
<slot> is the inventory slot (1..8)
<lvl> is one of: -1   0   +1 Place a block on the right side
<slot> is the inventory slot (1..8)
<lvl> is one of: -1   0   +1 Place a block under the robot.
Hint: use 'move_up' first.
<slot> is the inventory slot (1..8) Place a sign behind the robot
taken from the signs inventory
<slot> is the inventory slot (1..6) Place a sign in front of the robot
taken from the signs inventory
<slot> is the inventory slot (1..6) Plant a sapling
in front of the robot Punch a rail cart to start it Robot Box  Rotate the block in front of the robot
<lvl> is one of:  -1   0   +1
<steps> is one of:  1   2   3 Sensor Connection Tool Sensor Extender Sensor Extender: Connected with  Sensor Extender: Not connected Sign "add item" Sign "blank" Sign "command" Sign "copy 3x3x3" Sign "farming" Sign "pattern" Sign "stop" Sign "take item" Sign "turn left" Sign "turn right" Sign "user" Sign name: Signs Signs Bot Box Signs Bot Chest Signs Duplicator Signs: Sow farming seeds
in front of the robot Start Stop the robot for <sec> seconds
(1..9999) Stop the robot. Store pattern to be cloned. Take <num> items from a chest like node
and put it into the item inventory.
<slot> is the inventory slot (1..8) Template: Turn the robot around Turn the robot off
and put it back in the box. Turn the robot to the left Turn the robot to the right commands: running stopped unknown command Project-Id-Version: 
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2019-05-22 15:05+0200
Last-Translator: 
Language-Team: 
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 2.0.6
Plural-Forms: nplurals=2; plural=(n != 1);
 -- Kommandos eingeben oder von der Hilfeseite kopieren 1. Verwende ein Kommando-
     Zeichen als Vorlage.
 2. Füge 'leere Zeichen'
     als Eingabe hinzu.
 3. Entnehme die Kopieren
     aus der Ausgabe. Lege <num> Gegenstände aus dem
eigenen Inventar in die andere Kiste.
<slot> ist die Position im
eigenen Inventar (1--8). Roboter Kiste: Sende Signal zu  Roboter Steuerungseinheit Bot Sensor Bot Sensor: Verbunden mit  Bot Sensor: Nicht verbunden Roboter Timer Abbruch Prüfen geprüft und genehmigt Kommandozeilen Fehler in Zeile  Kommandos,Hilfe Verbunden mit Kopiere Kommando Kopiere die Blöcke von der
"Vorlage" Position.
<size> ist: 3x1, 3x2, 3x3,
5x1, 5x2, 5x3 (Breite x Tiefe)
<lvl> Vorlagenebene (0..4) Ernte Sesor Ernte Sensor: Verbunden mit  Zykluszeit [min]: Entferne einen Block über dem
Roboter.
<slot> ist die Position im
eigenen Inventar (1--8). Entferne einen Block vor den Roboter.
<slot> ist die Position im
eigenen Inventar (1--8).
Für <lvl> ist zulässig: -1   0   +1 Entferne einen links vorne.
<slot> ist die Position im
eigenen Inventar (1--8).
Für <lvl> ist zulässig: -1   0   +1 Entferne einen rechts vorne.
<slot> ist die Position im
eigenen Inventar (1--8).
Für <lvl> ist zulässig: -1   0   +1 Entferne einen Block unter dem
Roboter.
<slot> ist die Position im
eigenen Inventar (1--8). Entferne das Zeichen vor den Roboter.
<slot> ist die Position im
eigenen Inventar (1--6). Entferne das Zeichen vor den Roboter.
<slot> ist die Position im
eigenen Inventar (1--6). Lasse ein Objekt aus dem eigenen
Inventar vor dem Roboter fallen.
<slot> ist die Position im
eigenen Inventar (1--8). Fehler: Kein Zeichen verfügar Fehler: Die Position ist geschützt Fehler: Position ist geschützt oder belegt Fehler: Zeichen Inventar ist leer Fehler: Die Zeicheninventar Position ist belegt- Beenden Gehe bis zum nächsten Zeichen,
das dann als Unterprogramm
bearbeitet wird. Mache danach mit
dem nächsten Kommando weiter. Ernte Früchte/Getreide
in einem 3x3 großem Feld
vor dem Roboter. Eingabe: Bewege den Roboter 1..99 Schritte
vorwärts ohne auf Zeichen zu achten.
Auf- und Ab-Bewegungen werden auch
als Schritte gezählt. Bewege den Roboter
nach unten. Bewege den Roboter
einen Schritt zurück. Bewege den Roboter
nach oben Block Sensor Block Sensor: Verbunden mit  Aus An Andere Gegenstände Ausgabe: Parameter Fehler in Zeile  Hebe alle Objekte in einem
3x3 Blöcke großen Feld auf
und lege diese in das eigene
Inventar an Position <slot> (1--8) Setze einen Block über den Roboter.
<slot> ist die Position im
eigenen Inventar (1--8). Setze einen Block vor den Roboter.
<slot> ist die Position im
eigenen Inventar (1--8).
Für <lvl> ist zulässig: -1   0   +1 Setze einen Block links vorne.
<slot> ist die Position im
eigenen Inventar (1--8).
Für <lvl> ist zulässig: -1   0   +1 Setze einen Block rechts vorne.
<slot> ist die Position im
eigenen Inventar (1--8).
Für <lvl> ist zulässig: -1   0   +1 Setze einen Block unter den Roboter.
<slot> ist die Position im
eigenen Inventar (1--8). Setze ein Zeichen hinter den Roboter.
<slot> ist die Position im
eigenen Inventar (1--6). Setze ein Zeichen vor den Roboter.
<slot> ist die Position im
eigenen Inventar (1--6). Pflanze einen Setzling
vor den Roboter Schlage den Wagen um ihn zu starten Roboter Kiste  Rotiere den Block vor dem Roboter.
Für <lvl> ist zulässig: -1   0   +1
Für <steps> ist zulässig: 1   2   3 Sensor Verbindungswerkzeug Sensor Erweiterung Sensor Erweiterung: Verbunden mit  Sensor Erweiterung: Nicht verbunden Zeichen "Lege Gegenstand" "Leeres" Zeichen Zeichen "Kommando" Zeichen "kopiere 3x3x3" Zeichen "Farming" Zeichen "Vorlage" Zeichen "Stopp" Zeichen "Nehme Gegenstand" Zeichen "links drehen" Zeichen "rechts drehen" "Benutzer" Zeichen Zeichenname: Zeichen Signs Bot Kiste Signs Bot Kiste Zeichen Kopierer Zeichen: Sähe Saatgut
vor dem Roboter Start Stoppe den Roboter
für <sec> Sekunden (1.9999) Stoppe den Roboter Speichere die Vorlage
die kopiert werden soll. Nehme <num> Gegenstände aus der
Kiste oder dem Kisten-ähnlichen Block
und tue diese in das eigene Inventar
an der Position <slot>. Slot = (1..8) Vorlage: Drehe den Roboter
um (180 Grad). Schalte den Roboter aus und
setze ihn damit zurück in
seine Box Drehe den Roboter
nach links. Drehe den Roboter
nach rechts. Kommandos: läuft gestoppt unbekanntes Kommando 