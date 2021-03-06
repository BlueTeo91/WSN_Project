/* SD card read/write */ 
#include <SD.h>  
  
File myFile;  
  
void setup()  
{  
// Some time to open serial monitor  
delay(3000);  
  
// Open serial communications and wait for port to open:  
  Serial.begin(19200);  
  while (!Serial) {  
    ; // wait for serial port to connect. Needed for Leonardo only  
  }  
  
  Serial.print("Initializing SD card...");  
  
  // open the file. note that only one file can be open at a time,  
  // so you have to close this one before opening another.  
  myFile = SD.open("prova.txt", FILE_WRITE);  
  
  // if the file opened okay, write to it:  
  if (myFile) {  
    Serial.print("Writing to prova.txt...");  
    myFile.println("testing 1, 2, 3.");  
    // close the file:  
    myFile.close();  
    Serial.println("done.");  
  } else {  
    // if the file didn't open, print an error:  
    Serial.println("error opening prova.txt");  
  }  
  
  // re-open the file for reading:  
  myFile = SD.open("prova.txt");  
  if (myFile) {  
    Serial.println("prova.txt:");  
     
    // read from the file until there's nothing else in it:  
    while (myFile.available()) {  
        Serial.write(myFile.read());  
    }  
    // close the file:  
    myFile.close();  
  } else {  
      // if the file didn't open, print an error:  
    Serial.println("error opening prova.txt");  
  }  
}  
  
void loop()  
{  
    // nothing happens after setup  
}  
