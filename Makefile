main: build sign

build:
	mvn clean javadoc:jar source:jar package

sign:
	@gpg --passphrase ${GPGPW} -ab target/libintl-0.18.2-javadoc.jar
	@gpg --passphrase ${GPGPW} -ab target/libintl-0.18.2-sources.jar
	@gpg --passphrase ${GPGPW} -ab target/libintl-0.18.2.jar
