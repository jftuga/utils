@echo off
set T=%1
curl -s %T% | rg -o "description\x22 content=\x22(.*?)\x22" | cut -c 22- | tr -d \042 | head -1 | clip

