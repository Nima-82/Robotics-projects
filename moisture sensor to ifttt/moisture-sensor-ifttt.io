const int sensor_pin = A4;	// Soil moisture sensor pin 

void setup() {
  Serial.begin(9600);	
}

void loop() {
  float moisture_percentage;
  int sensor_analog;
  sensor_analog = analogRead(sensor_pin);
  moisture_percentage = (100 - ( (sensor_analog/4095.00) * 100 ) );  //shows the moisture in %
  Serial.print("Moisture Percentage = ");
  Serial.print(moisture_percentage);
  Serial.print("---------------");
  delay(1000);
}
