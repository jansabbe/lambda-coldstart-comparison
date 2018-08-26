#!/bin/bash

dotnet restore
dotnet lambda package -c Release -f netcoreapp2.1 -o bin/deploy-package.zip