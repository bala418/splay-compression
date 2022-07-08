app: main.o encode.o decode.o
	g++ -o app main.o encode.o decode.o

main.o: main.cpp encode.h decode.h
	g++ -c main.cpp

encode.o: encode.cpp encode.h
	g++ -c encode.cpp

decode.o: decode.cpp decode.h
	g++ -c decode.cpp

clean:
	rm *.o
