#!/bin/bash

# Ask for temperature
read -p "Enter your body temperature in °C: " temperature

# Ask for symptoms
read -p "Enter symptom 1: " symptom1
read -p "Enter symptom 2: " symptom2
read -p "Enter symptom 3: " symptom3

echo ""
echo "--- Health Diagnosis ---"
echo "Temperature: ${temperature}°C"
echo "Symptoms: $symptom1, $symptom2, $symptom3"
echo ""

# Use simple rules to detect disease
if (( $(echo "$temperature >= 38" | bc -l) )) && [[ "$symptom1" == "cough" || "$symptom2" == "cough" || "$symptom3" == "cough" ]] && [[ "$symptom1" == "cold" || "$symptom2" == "cold" || "$symptom3" == "cold" ]]; then
    echo "Possible Disease: Common Cold or Flu"
    echo "Recommendation: Rest well, drink warm fluids, take paracetamol if needed."

elif (( $(echo "$temperature >= 39" | bc -l) )) && [[ "$symptom1" == "headache" || "$symptom2" == "headache" || "$symptom3" == "headache" ]] && [[ "$symptom1" == "vomiting" || "$symptom2" == "vomiting" || "$symptom3" == "vomiting" ]]; then
    echo "Possible Disease: Dengue or Typhoid"
    echo "Recommendation: Visit a doctor immediately and get a blood test."

elif (( $(echo "$temperature >= 37.5" | bc -l) )) && [[ "$symptom1" == "throat pain" || "$symptom2" == "throat pain" || "$symptom3" == "throat pain" ]]; then
    echo "Possible Disease: Throat Infection"
    echo " Recommendation: Gargle with warm salt water, take antibiotics only if prescribed."

else
	echo "no disease detected"
	echo "You are healthy"
fi
