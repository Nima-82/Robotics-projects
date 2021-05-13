const int sensor_pin = A4;	// Soil moisture sensor pin 

void setup() {
  Serial.begin(9600);	
}

void loop() {
  float moisture_percentage;
  int sensor_analog;
  sensor_analog = analogRead(sensor_pin);
  
  moisture_percentage = (100 - ( (sensor_analog/4095.00) * 100 ) );   //shows the moisture in %
  
  Particle.publish("Moisture Percentage: ", String(moisture_percentage), 60, PRIVATE);
  delay(5000);
  
  if (moisture_percentage < 30){
      
    Particle.publish("Moisture-level-changed", "Dry"); //Public for ifttt
    delay(10000);
      
  }
  
  
  delay(1000);
}
