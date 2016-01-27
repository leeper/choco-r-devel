RDEVELVERSION = $(shell svn info http://svn.r-project.org/R |grep Revision: |cut -c11-)

all: build

build:
	echo $(RDEVELVERSION)
	sed "s/RDEVELVERSION/$(RDEVELVERSION)/g" r-devel.template > r-devel.nuspec
	choco pack

install:
	choco install r-devel.0.0.0.$(RDEVELVERSION).nupkg -f -y

upgrade:
	choco upgrade r-devel.0.0.0.$(RDEVELVERSION).nupkg -f -y

push:
	choco apikey -k %CHOCOLATEY_KEY% -source https://chocolatey.org/
	choco push *.nupkg -s https://chocolatey.org/
