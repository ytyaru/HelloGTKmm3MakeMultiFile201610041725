program.exe: program.o MainWindow.o
	g++ -DUNICODE -Wall -std=c++11 -s -O3 -o program.exe program.o MainWindow.o `pkg-config gtkmm-3.0 --cflags --libs` -mwindows
MainWindow.o: MainWindow.cc
	g++ -DUNICODE -Wall -std=c++11 -s -O3 -c MainWindow.cc `pkg-config gtkmm-3.0 --cflags --libs` -mwindows
program.o: program.cc
	g++ -DUNICODE -Wall -std=c++11 -s -O3 -c program.cc `pkg-config gtkmm-3.0 --cflags --libs` -mwindows
