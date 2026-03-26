#!/usr/bin/env pwsh

param(
    [String]$Dir = "$PSScriptRoot/../bucket",
    [String]$Upstream = "SamuelCastrillon/scoop-bucket-gentle-stack:main",
    [Parameter(ValueFromRemainingArguments)]
    $Args
)

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
& $autopr -Dir $Dir -Upstream $Upstream @Args
