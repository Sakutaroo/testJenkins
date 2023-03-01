/*
** EPITECH PROJECT, 2023
** test_project
** File description:
** test_project
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>

int printHello(void);

void redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(errors, test_errors, .init=redirect_all_stdout) {
    printHello();
    fflush(stdout);
    cr_assert_stdout_eq_str("Hello World!\n");
}
