CFLAGS = -Wall -g

psort: psort.o showwords mkwords helper.o
	gcc $(CFLAGS) -o psort psort.o -lm helper.o

psort.o: psort.c helper.h
	gcc $(CFLAGS) -c psort.c

showwords: showwords.o helper.o
	gcc $(CFLAGS) -o showwords showwords.o

showwords.o: showwords.c helper.h
	gcc $(CFLAGS) -c showwords.c

mkwords: mkwords.o helper.o
	gcc $(CFLAGS) -o mkwords mkwords.o -lm helper.o

mkwords.o: mkwords.c helper.h
	gcc $(CFLAGS) -c mkwords.c 

helper.o: helper.c helper.h
	gcc $(CFLAGS) -c helper.c	


clean:
	rm psort *.o showwords *.o mkwords *.o	