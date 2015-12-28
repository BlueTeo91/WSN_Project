/* SD Card write (END Dev)*/

#include <SPI.h>
#include <SD.h>

const int chipSelect = 4;
const int sensorPin = A0;

void setup()
{
  // put your setup code here, to run once:
  Serial.begin(19200); //it opens a serial port
  Serial1.begin(19200); //it opens tx/rx communication
  
  pinMode(DOUTpin, INPUT);//sets the pin as an input to the arduino
  pinMode(ledPin, OUTPUT);//sets the pin as an output of the arduino

  // On the Ethernet Shield, CS is pin 4. Note that even if it's not
  // used as the CS pin, the hardware CS pin (10 on most Arduino boards,
  // 53 on the Mega) must be left as an output or the SD library
  // functions will not work.
  Serial.print("Initializing SD card...");
  // make sure that the default chip select pin is set to
  // output, even if you don't use it:
  pinMode(10, OUTPUT);
  
  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    return;
  }
  Serial.println("card initialized.");
}

void loop()
{
  // make a string for assembling the data to log:
  String dataString = "";

  /*
  // read three sensors and append to the string:
  for (int analogPin = 0; analogPin < 3; analogPin++) {
    int sensor = analogRead(analogPin);
    dataString += String(sensor);
    if (analogPin < 2) {
      dataString += ","; 
    }
  }
  */
  
  // read CO sensor
  value= analogRead(AOUTpin); //reads the analaog value from the CO sensor's AOUT pin
  float voltage = value * (5.0 / 1024.0); //boh, reference to see
  float ppm = (voltage) * (1000-10) / 5;
  dataString += String(ppm);
  
  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  File dataFile = SD.open("datalog.txt", FILE_WRITE);

  // if the file is available, write to it:
  if (dataFile) {
    dataFile.println(dataString);
    dataFile.close();
    // print to the serial port too:
    Serial.println(dataString);
  }  
  // if the file isn't open, pop up an error:
  else {
    Serial.println("error opening datalog.txt");
  } 
}









