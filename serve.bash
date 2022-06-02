#!/bin/bash
HUGO_NEXT_LAST_FRIDAY=$(pwsh -Command '(.\next-last-friday.ps1).ToString("o")') hugo server
