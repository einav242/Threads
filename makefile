all: thread_server fork_server

thread_server: thread_server.o 
	gcc  -pthread -o thread_server thread_server.o 

thread_server.o: thread_server.c  
	gcc  -c thread_server.c

fork_server: fork_server.o 
	gcc  -pthread -o fork_server fork_server.o 

fork_server.o: fork_server.c  
	gcc  -c fork_server.c
	
.PHONY: clean
	
clean:
	rm -f *.o  thread_server fork_server