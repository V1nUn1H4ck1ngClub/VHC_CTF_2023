// gcc -fno-stack-protector -no-pie vulnSIS.c -o vulnSIS

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

void handle_alarm() {
    puts("BYE BYE!");
    exit(-1);
}

void instantiate() {
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);

    signal(SIGALRM, handle_alarm);
    alarm(20);
}

/* Comment:
 * This function can access sensitive student information. 
 * I'll add user authentication later for security, likely requireing a student ID and password.
 * Leaving it here for now shouldn't cause any issues, right? ...
*/
void secret(char *studentID, char* passwd) 
{ 
  char *command = "/bin/cat";
  char *args[] = {command, "./studentSecret", NULL};
  execve(command, args, NULL);
}

int main(int argc, char *argv[]) {
    int fd_in = 0;
    int fd_out = 1;
    char cohort[10] = "V000000000";
    int size_buf = 20;
    char buf[6];

    instantiate();

    write(fd_out, "Where are you going to school? ", 31);
    read(fd_in, buf, size_buf);

    if(memcmp(buf, "VinUni", 6) == 0) {
        write(fd_out, "Cool! Enter your student ID: ", 29);
        read(fd_in, cohort, size_buf);

        if (cohort[0] == 'V' && cohort[1] == '2')
        {
            switch (cohort[4])
            {
                case '0':
                    write(fd_out, "You're from Cohort 1!\n", 22);
                    break;
                case '1':
                    write(fd_out, "You're from Cohort 2!\n", 22);
                    break;
                case '2':
                    write(fd_out, "You're from Cohort 3!\n", 22);
                    break;
                case '3':
                    write(fd_out, "You're from Cohort 4!\n", 22);
                    break;
                default:
                    write(fd_out, "Your Cohort doesn't exist!\n", 27);
            }
        }
        else
        {
            write(fd_out, "Format: V2xxxxxxxx\n", 19);
        }

        // TODO: Write some authentication shit here!
    }
    else
    {
        write(fd_out, "Hey, this top-secret and secure info is restricted to VinUni students only! Sorry if you're not in the clubbb :( !\n", 115);
    }

    return 0;
}
