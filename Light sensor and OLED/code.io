// This #include statement was automatically added by the Particle IDE.
#include "Adafruit_SSD1306.h"

// This #include statement was automatically added by the Particle IDE.
#include "Adafruit_GFX.h"

#include "Adafruit_GFX.h"
#include "Adafruit_SSD1306.h"

#define OLED_RESET D4
Adafruit_SSD1306 display(OLED_RESET);

#define NUMFLAKES 10
#define XPOS 0
#define YPOS 1
#define DELTAY 2


#define LOGO16_GLCD_HEIGHT 16 
#define LOGO16_GLCD_WIDTH  16 



#if (SSD1306_LCDHEIGHT != 64)
#error("Height incorrect, please fix Adafruit_SSD1306.h!");
#endif


void setup() {
    Serial.begin(9600);
}

void loop() {

  Particle.publish("Analog Read A0 = ", String(analogRead(A0)), 60, PRIVATE);  // shows A0
  delay(6000); // wait about 6 seconds
  
  if (analogRead(A0) <= 1022) {
      display.setTextSize(5);
      display.setTextColor(BLACK, WHITE);
      display.setCursor(15,30);
      display.println("Bright Day Today");
  } else {
      display.setTextSize(5);
      display.setTextColor(BLACK, WHITE);
      display.setCursor(15,30);
      display.println("Get Ready To Sleep"); 
  }

} 
