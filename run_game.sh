#!/bin/bash

# Ange mitt namn
NAMN="Daniel_Gran"

# Skriv ut mitt namn
echo "${NAMN} program"

# Skapar katalogen Daniel_Gran med suffixet _labb
KATALOG="${NAMN}_labb"
mkdir -p "$KATALOG"

# Kopiera alla .java-filer till katalogen
cp *.java "$KATALOG"

# Byter till den nya katalogen (Daniel_Gran_labb)
cd "$KATALOG"

# Skriv ut aktuell katalog
echo "Running game from $(pwd)"

# Skriv ut meddelande om att kompilera
echo "compiling..."

# Kompilera alla .java-filer
javac *.java

# Skriv ut meddelande om att köra programmet
echo "Running game..."

# Kör programmet (byt ut MainClass med namnet på din huvudklass)
java GuessingGame
# Skriv ut att programmet är färdigt
echo "Done!"


# Ta bort alla .class-filer och vissar sedan vad Daniel_Gran_labb innehåller 
echo "Removing class files..."
rm -f *.class
ls
