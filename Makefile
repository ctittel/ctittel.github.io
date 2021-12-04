build:
	DEBUG=True raco pollen render -p

clean:
	rm -r compiled
	rm *.html
