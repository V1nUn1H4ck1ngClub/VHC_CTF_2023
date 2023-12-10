#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <stdio.h>
#include <fcntl.h>

void welcome(){
    printf("Welcome to the cookie seller!\n");
    printf("1. Buy a cookie\n");
    printf("2. Exit\n");
}

void buy_cookie(){
    printf("Which cookie do you want to buy?\n");
    char buf[1024];
    int fd, rc; 
    scanf("%1023s", buf);
    printf("You want to buy %s\n", buf);
    if (strstr(buf, "cookie") != NULL) {
        printf("We have sold out that cookie :( '%s'\n", buf);
        exit(EXIT_FAILURE);
    }
    fd = open(buf, O_RDONLY);
    if (fd == -1) {
        err(EXIT_FAILURE, "What? I remember it was at that place? %s", buf);
    }
    rc = read(fd, buf, sizeof(buf));
    if (rc == -1) {
        err(EXIT_FAILURE, "Unable to read fd %d", fd);
    }
    write(1, buf, rc);
}

int main(int argc, char **argv, char **envp)
{
    setvbuf(stdout, NULL, _IONBF, 0);
    welcome();
   
    int choice;
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch (choice) {
        case 1:
            buy_cookie();
            break;
        case 2:
            printf("Goodbye!\n");
            exit(EXIT_SUCCESS);
            break;
        default:
            printf("Invalid choice\n");
            break;
    }
    return 0;
}
