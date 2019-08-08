MAP := "targets.yaml"

put-osx:
	./make-helper --target=osx --map=$(MAP) put

grab-osx:
	./make-helper --target=osx --map=$(MAP) grab

clean-osx:
	./make-helper --target=osx --map=$(MAP) clean

put-arch:
	./make-helper --target=arch --map=$(MAP) put

grab-arch:
	./make-helper --target=arch --map=$(MAP) grab

clean-arch:
	./make-helper --target=arch --map=$(MAP) clean
