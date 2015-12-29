// The file to write in
FILE *myFile;

char value;
char dataString[4] = {'i','n','i','t'};
bool led = HIGH;
int i;

void setup()
{
  pinMode(13, OUTPUT); //initialize LED
  Serial.begin(19200); //it opens a serial port
  Serial1.begin(19200); //it opens tx/rx communication
  
  Serial.println("Arduino Code start...");
 
  // Create the file
  system("touch /media/mmcblk0p1/SensorData.txt");
}
 
void loop()
{
  // we read from serial only when the data is available
  while(Serial1.available() == 0);    
  value = Serial1.read();
  //Serial.print(value);
  if (value == 'C') {
    while(Serial1.available() == 0);
    value = Serial1.read();
    //Serial.print(value);
    if (value == 'O') { 
      for (i=0; i<4; i++) {
        while(Serial1.available() == 0);
        value = Serial1.read();
        //Serial.print(value);
        dataString[i] = value;
      }
    }
  }
  
  // open the file, Linux open, so you can open many files
  myFile = fopen("/media/mmcblk0p1/SensorData.txt", "a");

  // if the file opened okay, write to it:
  if (myFile)
  {
    Serial.print("Writing to SensorData.txt...");
    Serial.print(dataString);
    fputs(dataString, myFile);

    if(led == HIGH) {
      led = LOW;
    }
    else {
      led = HIGH;
    }
    digitalWrite(13, led);
    
    // error check
    if (ferror (myFile)) {
      Serial.println("ERROR writing to SensorData.txt!!!");
    }
 
    // close the file:
    fclose(myFile);
 
    Serial.println("DONE!");
  } else {
    // if the file didn't open, print an error:
    Serial.println("ERROR opening SensorData.txt!!!");
  }
}
