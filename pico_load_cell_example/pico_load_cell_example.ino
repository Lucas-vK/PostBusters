/**
 * Complete project details at https://RandomNerdTutorials.com/arduino-load-cell-hx711/
 *
 * HX711 library for Arduino - example file
 * https://github.com/bogde/HX711
 *
 * MIT License
 * (c) 2018 Bogdan Necula
 *
**/

#include <Arduino.h>
#include "HX711.h"
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

// HX711 circuit wiring
const int LOADCELL_DOUT_PIN = 3;
const int LOADCELL_SCK_PIN = 2;

HX711 scale;
Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();

void setup() {
  Serial.begin(57600);
  pinMode(6, INPUT_PULLUP);
  pinMode(LED_BUILTIN, OUTPUT);
  scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
  scale.tare();

  pwm.begin();
  pwm.setPWMFreq(1000);
  pwm.setOscillatorFrequency(27000000);
  pwm.setPWMFreq(50);
  //Wire.setClock(400000);
}

void loop() {
  //Serial.println(scale.get_units(10) / 1000, 5);

  //delay(1000);

  Serial.println("TEST");
  pwm.setPWM(0, 4096, 0);
  delay(1000);
  pwm.setPWM(0, 0, 4096);
  delay(100);

  /*
  int sensorVal = digitalRead(6);
  Serial.println(sensorVal);
  if (sensorVal == HIGH) {
   digitalWrite(LED_BUILTIN, HIGH);
  } else {
   digitalWrite(LED_BUILTIN, LOW);
  }
  //*/

/*
  if (Serial.available() > 0) {
    String teststr = Serial.readString();
    teststr.trim();
    if (teststr == "open") {
      //TODO
      Serial.println("opening...");
    } else if (teststr == "close") {
      //TODO
      Serial.println("closing...");
    }
  }
  */
}