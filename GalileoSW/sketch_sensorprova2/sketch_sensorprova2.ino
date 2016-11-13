const int sensorPin = A0;
const float baselineTemp= 23.0;
String SendData = "";

void setup() {
  // put your setup code here, to run once:
  Serial.begin(19200); //it opens a serial port
}

void loop() {
  // put your main code here, to run repeatedly:
  int sensorVal=analogRead(sensorPin);
  
  //Serial.print("Sensor value: ");
  //Serial.print(sensorVal);
  
  float voltage=(sensorVal/1024.0)*5.0;
  
  //Serial.print(", Volts: ");
  //Serial.print(voltage);
  
  //Serial.print(", degrees C: ");
  //from voltage to temperature
  float temperature=(voltage - 0.5)*100;
  //int sendVal=(int)temperature;
  //Serial.print(sendVal);
  //Serial.flush();
  //while(Serial.available()==0);
  //char sendVal=Serial.read();
  
  /*SendData += "TE";
  SendData += String(temperature);
  Serial.print(SendData);*/
  Serial.print("TE");
  Serial.print(temperature);
  
  //Serial.write(sendVal);
  
  delay(2000);
}
