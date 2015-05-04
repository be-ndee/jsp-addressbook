start:
	../../bin/startup.sh

stop:
	../../bin/shutdown.sh

build:
	make stop
	make compile
	make start

bower:
	bower install
	bower update

compile:
	javac -cp .:../../lib/servlet-api.jar WEB-INF/classes/*.java
	javac -cp .:../../lib/servlet-api.jar WEB-INF/classes/models/*.java
