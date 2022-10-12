#include <stdio.h>
#include <syslog.h>
int main(int argc, char* argv[])
{
    openlog("assignmentlogs", LOG_ODELAY, LOG_USER);
    //printf("The number is %d", argc);
    if (argc != 3)
    {
        syslog(LOG_ERR, "Please input both file and text to be written!");
        closelog();
        //printf("It returns 1.");
        return 1;
    }

    FILE *fp;
    char* fileName = argv[1];
    char* text = argv[2];
    fp = fopen(fileName, "w");
    syslog(LOG_DEBUG, "Writing %s to %s", text, fileName);
    fprintf(fp, "%s", text);
    fclose(fp);
    closelog();
    return 0;
}