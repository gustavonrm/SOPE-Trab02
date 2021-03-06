.PHONY: default clean

default:
	cd User && ${MAKE} default && mv user .. && cd ..
	cd Server && ${MAKE} default && mv server .. && cd ..

clean:
	rm user && rm server
	rm *.txt
	cd Server && ${MAKE} clean && cd ..
	cd User && ${MAKE} clean && cd ..
