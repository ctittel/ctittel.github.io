build:
	DEBUG=True raco pollen render -p site

clean:
	rm -r compiled
	rm *.html
