#include <iostream>

int main(int argc, char **argv)
{
	(void)argv;
	if (argc !=3)
	{
		std::cout << "Usage : ./ircserv <port> <password>" << std::endl;
	}
}
