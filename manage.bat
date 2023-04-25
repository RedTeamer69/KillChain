@ECHO OFF
ECHO Usage:
ECHO ---------- Target management
ECHO manage target_build - Build the target
ECHO manage target_up - Start up the target
ECHO manage target_clean - Delete target
ECHO ----------- Attack box management
ECHO manage kali_pull - Download kali (attack box)
ECHO manage kali_up - Start and attach to kali (attack box)
ECHO manage kali_clean - Clean kali (attack box)

IF "%1"=="target_build" docker build -t target target
IF "%1"=="target_up" docker run -d --rm -p8080:8080 --name target target
IF "%1"=="target_clean" docker rmi target

IF "%1"=="kali_pull" docker pull docker.io/kalilinux/kali-rolling
IF "%1"=="kali_up" docker run --tty --interactive kalilinux/kali-rolling
IF "%1"=="kali_clean" docker rmi kalilinux/kali-rolling