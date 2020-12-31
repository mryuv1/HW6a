CC     = gcc #the name of the compiler command.
CFLAGS = -c -Wall -std=c99 ransom.c #the apllies of the compiling command.
OBJS   = ransom.o # object files of the program.
CCLINK =   -o  #flag of the linker.
EXEC = prog.exe #the name of the executable file.
RM = rm -fr *.exe $(OBJS) #command to delete all the executable files.


$(EXEC): $(OBJS)
	$(CC)  $(OBJS)  $(CCLINK) $(EXEC)

#link all the objects to prog.exe


%.o: %.c
	$(CC)  $(CFLAGS)  
#compile the c files to objects.

clean:
	$(RM)
