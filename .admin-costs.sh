#!/bin/bash

echo required crew

read crew

echo dry mass

read mass

echo total shields

read shield

echo total hull

read hull

echo total fuel

read fuel

calc -p "floor(log(max($crew, 1))+$mass/1000+sqrt(max(0, ($shield+$hull)/4000 - 2))+($fuel > 0 ? 1 : 0))"