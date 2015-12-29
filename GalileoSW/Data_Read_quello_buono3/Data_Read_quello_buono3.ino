// The file to write in
FILE *myFile;

char value;
char COString[5] = {'0','0','0','0','\n'};
char TEString[6] = {'0','0','0','0','0','\n'};
bool led = HIGH;
int i;

void setup()
{
  pinMode(13, OUTPUT); //initialize LED
  Serial.begin(19200); //it opens a serial port
  Serial1.begin(19200); //it opens tx/rx communication
  
  Serial.println("Arduino Code start...");
 
  // Create the files
  system("touch /media/mmcblk0p1/COSensor.txt");
  system("touch /media/mmcblk0p1/TESensor.txt");
}
 
void loop()
{
  // we read from serial only when the data is available
  while(Serial1.available() == 0);    
  value = Serial1.read();
  //Serial.print(value);
  if (value == 'C') { // lettura CO
    while(Serial1.available() == 0);
    value = Serial1.read();
    //Serial.print(value);
    if (value == 'O') { 
      for (i=0; i<4; i++) {
        while(Serial1.available() == 0);
        value = Serial1.read();
        //Serial.print(value);
        COString[i] = value;
      }
      COString[5] = '\n';
    }
    // open the file, Linux open, so you can open many files
    myFile = fopen("/media/mmcblk0p1/COSensor.txt", "a");
  
    // if the file opened okay, write to it:
    if (myFile)
    {
      Serial.print("Writing to COSensor.txt...");
      Serial.print(COString);
      fputs(COString, myFile);
  
      if(led == HIGH) {
        led = LOW;
      }
      else {
        led = HIGH;
      }
      digitalWrite(13, led);
      
      // error check
      if (ferror (myFile)) {
        Serial.println("ERROR writing to COSensor.txt!!!");
      }
   
      // close the file:
      fclose(myFile);
   
      Serial.println("DONE!");
     } 
     else {
      // if the file didn't open, print an error:
      Serial.println("ERROR opening COSensor.txt!!!");
    }
  }  
  else if (value == 'T') { // lettura temperatura
      while(Serial1.available() == 0);
      value = Serial1.read();
      //Serial.print(value);
      if (value == 'E') { 
        for (i=0; i<5; i++) {
          while(Serial1.available() == 0);
          value = Serial1.read();
          //Serial.print(value);
          TEString[i] = value;
        }
        TEString[6] = '\n';
      }
      // open the file, Linux open, so you can open many files
      myFile = fopen("/media/mmcblk0p1/TESensor.txt", "a");
    
      // if the file opened okay, write to it:
      if (myFile)
      {
        Serial.print("Writing to TESensor.txt...");
        Serial.print(TEString);
        fputs(TEString, myFile);
    
        if(led == HIGH) {
          led = LOW;
        }
        else {
          led = HIGH;
        }
        digitalWrite(13, led);
        
        // error check
        if (ferror (myFile)) {
          Serial.println("ERROR writing to TESensor.txt!!!");
        }
     
        // close the file:
        fclose(myFile);
     
        Serial.println("DONE!");
       } 
       else {
        // if the file didn't open, print an error:
        Serial.println("ERROR opening TESensor.txt!!!");
      }
  }
}
