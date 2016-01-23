all: build

build:
	choco pack

install:
	choco install rtools -s *.nupkg -f

push:
	choco apikey -k %CHOCOLATEY_KEY% -source https://chocolatey.org/
	choco push *.nupkg -s https://chocolatey.org/
