#!/bin/bash

if [ ! -d src/FlappyBlazorBird/FlappyBlazorBird.Client ]; then
   echo "check dirs"
   exit -1
fi

dotnet publish -c release src/FlappyBlazorBird/FlappyBlazorBird.BlazorServer
rm -ifr ./dist
mv ./src/FlappyBlazorBird/FlappyBlazorBird.BlazorServer/bin/release/netstandard2.0/publish/FlappyBlazorBird.BlazorServer/dist .

echo "done"