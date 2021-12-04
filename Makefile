build:
	DEBUG=True raco pollen render -p site

clean:
	cd site && git clean -dfX
