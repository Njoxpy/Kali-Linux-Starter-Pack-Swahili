#!/bin/bash

echo "Enter your age"
read $age

if [$age -gt 16]; then
    echo "Mdogo"
else
    echo "Mkubwa"
fi
