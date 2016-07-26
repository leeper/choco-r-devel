RDEVELVERSION = $(shell svn info https://svn.r-project.org/R |grep Revision: |cut -c11-)

all: build

build:
	echo $(RDEVELVERSION)
	sed "s/RDEVELVERSION/$(RDEVELVERSION)/g" r-devel.template > r-devel.nuspec
	choco pack

install:
	choco install r-devel -s r-devel.0.0.0.$(RDEVELVERSION).nupkg --version=0.0.0.$(RDEVELVERSION) -f -y

upgrade:
	choco upgrade r-devel -s r-devel.0.0.0.$(RDEVELVERSION).nupkg --version=0.0.0.$(RDEVELVERSION) -f -y

push:
	choco apikey -k %CHOCOLATEY_KEY% -source https://chocolatey.org/
	choco push *.nupkg -s https://chocolatey.org/
