/* MQ-7 Carbon Monoxide Sensor Circuit with Arduino */

const int AOUTpin=0;//the AOUT pin of the CO sensor goes into analog pin A0 of the arduino
const int DOUTpin=8;//the DOUT pin of the CO sensor goes into digital pin D8 of the arduino
const int ledPin=13;//the anode of the LED connects to digital pin D13 of the arduino

int limit;
int value;

void setup() {
Serial.begin(19200);//sets the baud rate
Serial1.begin(19200);
pinMode(DOUTpin, INPUT);//sets the pin as an input to the arduino
pinMode(ledPin, OUTPUT);//sets the pin as an output of the arduino
}

void loop()
{
value= analogRead(AOUTpin);//reads the analaog value from the CO sensor's AOUT pin
float voltage=value*(5.0 /1024.0);
//boh, reference to see
float ppm=(voltage)*(1000-10)/5;

digitalWrite(ledPin, HIGH);

//limit= digitalRead(DOUTpin);//reads the digital value from the CO sensor's DOUT pin
Serial.print("CO volatge: ");
Serial.println(voltage);//prints the CO value
Serial.print("CO ppm: ");
Serial.println(ppm);
Serial1.print(ppm);

//Serial.print("Limit: ");
//Serial.print(limit);//prints the limit reached as either LOW or HIGH (above or underneath)
delay(2000);
/*if (limit == HIGH){
digitalWrite(ledPin, HIGH);//if limit has been reached, LED turns on as status indicator
}
else{
digitalWrite(ledPin, LOW);//if threshold not reached, LED remains off
}*/
}
