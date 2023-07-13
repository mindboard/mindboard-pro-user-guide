ugAdoc:=src/user-guide.adoc

html: index.html

all : index.html

index.html : src/index.adoc $(ugAdoc)
	asciidoctor -b html src/index.adoc -o index.html

clean :
	rm -f index.html
