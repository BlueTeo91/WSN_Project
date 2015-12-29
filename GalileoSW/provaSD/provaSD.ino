/*
// This code is to test SD Card function on an Intel Galileo Board
// It was complied from various examples which can be found:
//
// https://communities.intel.com/thread/46635
// https://communities.intel.com/message/229074
// http://arduino.cc/en/Reference/SD
// http://forum.arduino.cc/index.php?topic=57460.0
//
// Carlyn Maw 2014
// This code is released to the public domain
// Updated March 31, 2014 with information from thread
// https://communities.intel.com/message/229074
*/


#include <SD.h>

// change this to match your SD shield or module;
// Arduino Ethernet shield: pin 4
// Adafruit SD shields and modules: pin 10
// Sparkfun SD shield: pin 8
// Intel Galileo Board: NOT REQUIRED
const int CS_PIN = 4;
// Note that even if it's not used as the CS pin, the hardware SS pin 
// (10 on most Arduino boards, 53 on the Mega) must be left as an output 
// or the SD library functions will not work. 
// NOT REQUIRED on the Galileo
const int HSS_PIN = 10;

void setup() {
  //delay so that there will be no interference with the uploading
  //of new sketches
  delay(5000);  
  
  Serial.begin(19200);

  //Does the SD card initialized?
  initSDCard();

  //can I make a file?
  galileoCreateFile("i_exist.txt");

  //can I append data to an existing file?
  addFileContent("i_exist.txt", "celebrate good times!"); 
  
  //add a little more?
  addFileContent("i_exist.txt", "celebrate good times... again!"); 

  //can I look at that data later?
  printFileContent("i_exist.txt");

  //can I delete a datafile?
  deleteFile("i_exist.txt");
}

void loop() {
  // nothing happens after setup.
}

//----------------------------------------------------------- initSDCard()
void initSDCard() {
  Serial.print("Initializing SD card...");
  
  //Not necessary for Galileo Board 
  pinMode(HSS_PIN, OUTPUT);
  
  // try if (!SD.begin()) { if on the Galileo, does not need a pin
  // to initialize correctly
  if (!SD.begin(CS_PIN)) {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done.");
}
//------------------------------------------------------ END initSDCard()

//---------------------------------------------------------- deleteFile()
void deleteFile(String fileName) {
  Serial.println("\n*****Removal started.*****");
  String status_message = String();
  status_message = fileName;
  char charFileName[fileName.length() + 1];
  fileName.toCharArray(charFileName, sizeof(charFileName));

  if (SD.exists(charFileName)) { 
    status_message += " was found.";
    Serial.println(status_message);
    SD.remove(charFileName);
    if (SD.exists(charFileName)) {
      status_message += " Removal failed.";
    } 
    else {
      status_message += " Removal a success.";
    }

  }
  else {
    status_message += " already doesn't exist. Perhaps you meant a different file?";

  }
  Serial.println(status_message);
}
//----------------------------------------------------- END deleteFile()

//--------------------------------------------------- printFileContent()
void printFileContent(String fileName) {
  Serial.println("\n*****Printing Started*****");
  String status_message = String();
  status_message = fileName;
  char charFileName[fileName.length() + 1];
  fileName.toCharArray(charFileName, sizeof(charFileName));

  if (SD.exists(charFileName)) { 
    File myFile = SD.open(charFileName);
    if (myFile) {
      status_message += " found... hold for content: \n\n";
      while (myFile.available()) {
        status_message += (char)myFile.read();
      }
      status_message += "\nDone printing.";
      myFile.close();
    }
    else {
      status_message += " found, error with content";
    } 
  }
  else {
    status_message += " does not exist.";
  }
  Serial.println(status_message);
}
//----------------------------------------------- END printFileContent()

//----------------------------------------------------- addFileContent()
//SD.open retrieves the file in append more. 
void addFileContent(String fileName, String content) {
  Serial.println("\n*****Add Started*****");
  String status_message = String();
  status_message = fileName;
  char charFileName[fileName.length() + 1];
  fileName.toCharArray(charFileName, sizeof(charFileName));

  if (SD.exists(charFileName)) { 
    status_message += " was found.";
    File targetFile = SD.open(charFileName, FILE_WRITE);
    targetFile.println(content);
    targetFile.close();

    status_message += "\n\nFile now reads:\n\n";
    File readFile = SD.open(charFileName);
    while (readFile.available()) {
      status_message += (char)readFile.read();
    }
    status_message += "\nDone printing.";
    readFile.close();
  }
  else {
    status_message += " does not exist. Perhaps you meant to add the information somewhere else.";
  }
  Serial.println(status_message);
}
//------------------------------------------------- END addFileContent()

//--------------------------------------------------------- createFile()
//---------------- DOES NOT WORK ON GALILEO BOARD ----------------------
void createFile(String fileName) {
  Serial.println("\n*****Creation Started*****");
  String status_message = String();
  status_message = fileName;
  char charFileName[fileName.length() + 1];
  fileName.toCharArray(charFileName, sizeof(charFileName));

  if (SD.exists(charFileName)) { 
    status_message += " exists already.";

  }
  else {
    File newFile = SD.open(charFileName, FILE_WRITE);
    newFile.close();
    if (SD.exists(charFileName)) {
      status_message += " created.";
    } 
    else {
      status_message += " creation tried and failed.";
    }
  }
  Serial.println(status_message);

}
//----------------------------------------------------- END createFile()


//-------------------------------------------------- galileoCreateFile()
//There appears to ba a bug with fopen() in the C standard library stio.h on
// the Galileo board. The Galileo SD Library calls fopen correctly, but it 
// butfopen does not behave as expected. This function works around that. 
void galileoCreateFile(String fileName) {
  Serial.println("\n*****Creation Started*****");
  String status_message = String();
  status_message = fileName;
  char charFileName[fileName.length() + 1];
  fileName.toCharArray(charFileName, sizeof(charFileName));

  if (SD.exists(charFileName)) { 
    status_message += " exists already.";
  }
  else {
    char system_message[256];
    char directory[] = "/media/realroot";
    sprintf(system_message, "touch %s/%s", directory, charFileName);
    system(system_message);
    if (SD.exists(charFileName)) {
      status_message += " created.";
    } 
    else {
      status_message += " creation tried and failed.";
    }
  }
  Serial.println(status_message);
}
//---------------------------------------------- END galileoCreateFile()
