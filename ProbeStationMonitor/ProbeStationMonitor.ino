// Code for T,RH and luminosity measurment. Output is to the serial monitor and 
// LabVIEW. Device is to be placed inside of probe station so OLED display has
// been removed.

//#include <Sensirion.h>
//#include <Adafruit_TSL2591.h>
#include <Wire.h>
#include "SHTSensor.h"
#include <math.h>

const unsigned long TRHSTEP   = 5000UL;   // Sensor query period

// Make the temperature sensor object
SHTSensor sht;
 
// Instantiate the luminosity sensor object
//Adafruit_TSL2591 tsl = Adafruit_TSL2591(2591);

//Declare variables
uint32_t lum;
uint16_t ir, full;
unsigned int rawData;
float lux;
float temperature;
float humidity;
byte measActive = false;
//byte measType = TEMP;
unsigned long trhMillis = 0;        // Time interval tracking
int interlock;

void setup()
{
  // Setup the Luminosity sensor
  //tsl.begin();
  //tsl.setGain(TSL2591_GAIN_MAX);      // 9876x gain --> for very low light
  //tsl.setTiming(TSL2591_INTEGRATIONTIME_600MS);  // longest integration time (dim light)
 
  // Setup the temperature sensor
  Wire.begin();
  sht.init();
  
  Serial.begin(9600);
  byte stat;
  byte error = 0;
  delay(5000);                  // Wait >= 5s before first cmd, before SHT output is 0
  Serial.print("Moin, moin!");
  Serial.print("\n");
  Serial.flush();
}
 
void loop(){
  
  //----- necessary for SHT readout -----
  unsigned long curMillis = millis();       // Get current time
  
  if (curMillis - trhMillis >= TRHSTEP){   // Time for new measurements?
    // Get the T/RH measurement and print to the serial monitor.
    if (sht.readSample()) {
  //      Serial.print("  RH:  ");
  //      Serial.print(" %");
       humidity = sht.getHumidity();
  //      Serial.print(rh, 2);
  //      Serial.print("\n");
  //      Serial.print("  T:  ");
        temperature = sht.getTemperature();
  //      Serial.print(temp, 2);
  //      Serial.print(" °C");
  //      Serial.print("\n");
        trhMillis = curMillis;
     } else {
      //Serial.print("Error in readSample()\n");
    }
  }
  //Get the luminosity measurement (Commented out for now)
  //lum = tsl.getFullLuminosity(); // Read luminosity
  //ir = lum >> 16;
  //full = lum & 0xFFFF;

  // Check for overflow.
  //if (full == 0xFFFF || ir == 0xFFFF) {
    //lux = 0xFFFF;
    //Serial.print("  Lum:  ");
    //Serial.print( "SATURATION" );
    //Serial.print("\n");
  //} else {
    //lux = tsl.calculateLux( full, ir);
    //Serial.print("  Lum:  ");
    //Serial.print(lux*1000, 2);
    //Serial.print(" mlux");
    //Serial.print("\n");
  //}

  //Check that the light in the dark box is at a reasonable level.
  //if (lux <= 100) {
    //interlock = 0;
  //} else {
    //interlock = 1;
  //}

  // Respond to commands from LabVIEW
  if (Serial.available() > 0) 
  {
    int inByte = Serial.read();

    if (inByte == 'a')
    {
      // Modified to always return 0. The arduino will not be used for edge 
      // detection as the probe station has this capability or it is not needed. 
      Serial.print(0);
      Serial.print("\n");
    }

    else if (inByte == 'b')
    {
      //Serial.print(interlock); (Need to get Lux sensor to SFU)
      Serial.print(0);
      Serial.print("\n");
      Serial.flush();
    }
    
    else if (inByte == 'c')
    {
      Serial.print(temperature);
      Serial.print(" ");
      Serial.print(humidity);
      Serial.print("\n");
    }
    Serial.flush();
  }
  delay(100);  
}
