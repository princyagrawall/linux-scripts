#!/bin/bash

echo "Welcome to the Health Expert System"
echo "Enter your symptoms (e.g., fever, sore throat, cough, congestion):"
read symptoms

match_found=0

if echo "$symptoms" | grep -qi "fever"; then
    echo "Recommendation: Take a fever reducer like paracetamol and stay hydrated."
    match_found=1
fi

if echo "$symptoms" | grep -qi "sore throat"; then
    echo "Recommendation: Gargle with warm saltwater for relief."
    match_found=1
fi

if echo "$symptoms" | grep -qi "cough" && echo "$symptoms" | grep -qi "congestion"; then
    echo "Recommendation: Drink warm fluids and consider taking cough syrup."
    match_found=1
fi

if echo "$symptoms" | grep -qi "headache"; then
    echo "Recommendation: Rest in a quiet room and drink plenty of water."
    match_found=1
fi

if echo "$symptoms" | grep -qi "fatigue"; then
    echo "Recommendation: Get extra rest and maintain proper nutrition."
    match_found=1
fi
if [ $match_found -eq 0 ]; then
    echo "No specific recommendations found for the provided symptoms. Please consult a healthcare professional."
    fi