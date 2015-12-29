char output[100];  
FILE * file;  
int datat;  
  
  
void setup() {  
  // put your setup code here, to run once:  
  delay(1000);  
  Serial.begin(9600);  
  //file= fopen("/media/realroot/servo.txt" , "r");  
  file= fopen("servo.txt" , "r");    
  if (file) {   
     while (fgets(output, 100, file) != NULL)   
         ;   
  fclose(file);   
  }   
  else{  
    Serial.println("File Not Found!");  
  }  
  Serial.println(output);  
}  
  
void loop() {  
  // put your main code here, to run repeatedly:  
}  
