#include <string.h>
#include <stdio.h>

#define MAX_NAME_LENGTH 20
#define MAX_EMAIL_LENGTH 50

struct Person {
    char name[MAX_NAME_LENGTH + 1];
    char email[MAX_EMAIL_LENGTH + 1];
};

void swap_names(struct Person* person1, struct Person* person2) {
    char temp_name[MAX_NAME_LENGTH + 1];
    strcpy(temp_name, person1->name);
    strcpy(person1->name, person2->name);
    strcpy(person2->name, temp_name);
}

void swap_emails(struct Person* person1, struct Person* person2) {
    char temp_email[MAX_EMAIL_LENGTH + 1];
    strcpy(temp_email, person1->email);
    strcpy(person1->email, person2->email);
    strcpy(person2->email, temp_email);
}

int main() {
    struct Person people[3];

    printf("Enter the names and emails of the three people (maximum length %d characters):\n", MAX_NAME_LENGTH);
    for (int i = 0; i < 3; i++) {
        printf("Person %d:\n", i + 1);
        printf("Name: ");
        scanf("%20[^\n]", people[i].name);
        getchar(); // Consume newline character

        printf("Email: ");
        scanf("%49[^\n]", people[i].email);
        getchar(); // Consume newline character
    }

    printf("\nOriginal order of people:\n");
    for (int i = 0; i < 3; i++) {
        printf("Person %d: Name - %s, Email - %s\n", i + 1, people[i].name, people[i].email);
    }

    printf("\nSorted order of people by name (alphabetically, case-insensitive):\n");
    for (int i = 0; i < 2; i++) {
        for (int j = i + 1; j < 3; j++) {
            if (strcasecmp(people[i].name, people[j].name) > 0) {
                swap_names(&people[i], &people[j]);
                swap_emails(&people[i], &people[j]);
                printf("Swapped people %d and %d: Name - %s, Email - %s\n", i + 1, j + 1, people[i].name, people[i].email);
                printf("Swapped people %d and %d: Name - %s, Email - %s\n", i + 1, j + 1, people[j].name, people[j].email);
                printf("\n");
                break;
            }
            if (strcasecmp(people[i].name, people[j].name) == 0 && strcmp(people[i].email, people[j].email) > 0) {
                swap_emails(&people[i], &people[j]);
                printf("Swapped people %d and %d: Name - %s, Email - %s\n", i + 1, j + 1, people[i].name, people[i].email);
                printf("Swapped people %d and %d: Name - %s, Email - %s\n", i + 1, j + 1, people[j].name, people[j].email);
                printf("\n");
                break;
            }
            if (strcasecmp(people[i].name, people[j].name) == 0 && strcmp(people[i].email, people[j].email) == 0) {
                printf("No swaps needed for people %d and %d: Name - %s, Email - %s\n", i + 1, j + 1, people[i].name, people[i].email);
                printf("\n");
            }
        }
        printf("\n");
    }

    return 0;
}