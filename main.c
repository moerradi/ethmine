#include <stdio.h>

int main(int argc, char **argv)
{
	if (argc != 4)
	{
		printf("usage: ./generate_config wallet email rigName\n");
	}
	FILE *config = fopen("config.ini", "w+");
	fprintf(config, "wallet=%s\n", argv[1]);
	fprintf(config, "coin=ETH\nsortPools=true\n");
	fprintf(config, "email=%s\n", argv[2]);
	fprintf(config, "rigname=%s", argv[3]);
	fclose(config);
	return 0;
}