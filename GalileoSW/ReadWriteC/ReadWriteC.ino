// The file to write in
FILE *myFile;
 
void setup()
{
  // Just to have some time to open the serial monitor...
  sleep(3);
  pinMode(13, OUTPUT);
 
  Serial.begin(19200);
  Serial.println("Arduino Code start...");
 
  // Create the file
  system("touch /media/mmcblk0p1/test.txt");
 
  // open the file, Linux open, so you can open many files
  myFile = fopen("/media/mmcblk0p1/test.txt", "a");
 
  // if the file opened okay, write to it:
  if (myFile)
  {
    Serial.print("Writing to test.txt...");
 
    fputs("testing 1, 2, 3.\n", myFile);
 
    // close the file:
    fclose(myFile);
 
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Text.txt");
  }
}
 
void loop()
{
  digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);              // wait for a second
  digitalWrite(13, LOW);    // turn the LED off by making the voltage LOW
  delay(100);              // wait for a second
}
