#include <fcntl.h>
#include "get_next_line.h"
int main()
{
	int fd1 = open ("main.c", O_RDONLY);
	int fd2 = open ("txt.txt", O_RDONLY);
	char *line;
	while (get_next_line(fd2, &line) > 0)
		printf("%s\n", line);
	while (get_next_line(fd1, &line) > 0)
		printf("%s\n", line);
}
