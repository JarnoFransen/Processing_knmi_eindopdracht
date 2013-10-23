void setup () {
  // Grootte van de stage defineren. Ook stel ik hier de achtergrond van de stage in.  
  size(750,800);
  background(242);  
}

void draw() { 
    
    // Hier laad ik de waardes van het knmi tekstbestand in. de waardes worden in de string 'data' gezet. 
    String data[] = loadStrings("knmi.txt");
    
    // Hier declareer ik een aantal variabelen die verderop in de code gebruikt gaan worden. Min staat voor de minimale temperatuur en is een int. Hetzelde geldt voor de int max. 
    // De int y gebruik ik om de starthoogte van de tabel aan te geven.
    int min = 0;
    int max = 0;
    int y = 120;
    
    // Hier bevindt zich de for loop. Zo lang i een kleinere waarde heeft dan de lengte van de string data wordt deze for loop uitgevoerd. Met andere woorden: deze for loop wordt 30x uitgevoerd.
    for (int i = 0 ; i < data.length; i++) {
    
      // Met behulp van de split functie kan ik de data uit de string scheiden.
      String[] list = split(data[i], ',');
      
      // In positie 2 en 3 van list bevinden zich de minimale en maximale temperatuur. Deze worden als int in de variabelen min en max gezet.
      min = int(list[2]);
      max = int(list[3]);   
      
      
      // Hier plaats ik een rectangle die als header fungeert.
      fill(230);
      stroke(220);        
      rect(0, 0, width, 100);
      
      // Koptekst
      fill(83 ,83 ,83);      
      textSize(32);
      text("Minimale en maximale temperatuur Volkel", 20, 50);      

      // Subkop
      fill(95 ,95 ,95);
      textSize(17);
      text("01-09-2013 t/m 30-09-2013", 20, 80);           
     
      // Hier teken ik de balkjes die de maximum temperatuur aangeven. y is de startpositie van de balken. Elke keer dat de for loop opnieuw wordt uitgevoerd wordt er een getal bij y opgeteld zodat de balkjes onder elkaar komen te staan.
      // De waarde van variable max bepaald de breedte van de balken. Ik heb deze vermenigvuldigd met 2 zodat de balken breder zijn geworden. 
      strokeWeight(3);
      stroke(242);   
      fill(241, 46, 40);
      rect(80, y, max*2, 20);

      // Hier teken ik de balkjes die de minimum temperatuur aangeven. Wederom is y is de startpositie van de balken. Elke keer dat de for loop opnieuw wordt uitgevoerd wordt er een getal bij y opgeteld zodat de balkjes onder elkaar komen te staan.
      // De waarde van variable min bepaald de breedte van de balken. Ik heb deze vermenigvuldigd met 2 zodat de balken breder zijn geworden. 
      strokeWeight(3);
      stroke(242);
      fill(0, 194, 223);
      rect(80, y, min*2, 20);   

      // Hier plaats ik een getal naast elke rij om zo aan te geven om welke dag het gaat. Elke keer dat de for loop wordt uitgevoerd wordt de variable i als tekst geplaatst en met 1 opgeteld.
      textSize(15);  
      fill(83 ,83 ,83);      
      text(i+1, 20, y+16);      
      
      // Elke keer dat de for loop opnieuw wordt uitgevoerd wordt er een getal bij y opgeteld zodat de balkjes met tussenruimte onder elkaar komen te staan.
      y=y+22;
    }
  
}

