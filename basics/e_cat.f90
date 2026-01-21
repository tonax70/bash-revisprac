program cat;
    implicit none;
    print *, "cat: concatenate and display";
    print *, "Uses to print the content of a file (usually txt or code files)";
    call execute_command_line('sh -c ''cat e_cat.f90''');
    print *;

    print *, "Flags: ";
    print *, "-n : add number to every available lines";
    call execute_command_line('sh -c ''cat -n e_cat.f90''');
    print *;

    print *, "-b : add number to lines with text (ignore empty lines)";
    call execute_command_line('sh -c ''cat -b e_cat.f90''');
    print *;

    print *, "-s : suppress empty line"
    call execute_command_line('sh -c ''cat -s e_cat.f90''');
end program cat;