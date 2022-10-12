writer: writer.o
	$(CROSS_COMPILE)gcc -g -Wall writer.o -o writer

writer.o: writer.c
	$(CROSS_COMPILE)gcc -g -Wall -c writer.c -o writer.o

clean:
	rm -f writer.o writer