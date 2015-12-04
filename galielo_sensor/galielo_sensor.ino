const int sensorPin = A0;
const float baselineTemp= 23.0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(19200); //it opens a serial port
  Serial1.begin(19200); //it opens tx/rx communication
}

void loop() {
  // put your main code here, to run repeatedly:
  //as set, read sensor value from pin A0
  int sensorVal=analogRead(sensorPin);
  
  //Serial.print("Sensor value: ");
  //Serial.print(sensorVal);
  
  //depending on the sensor we should set its value
  float voltage=(sensorVal/1024.0)*5.0;
 
  //from voltage to temperature (sensor)
  float temperature=(voltage - 0.5)*100;
  
  //print on PC, if connected
  Serial.print(temperature);
  //print on tx/rx
  Serial1.print(temperature);
  
  //choose delay depending on power consumption
  delay(500);
  
  Serial.flush();
  Serial1.flush();
}
