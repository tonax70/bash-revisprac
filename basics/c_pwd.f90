program printWorkingDir;
    implicit none;
    print *, "pwd stands for: Print Working Directory";
    print *, "It will simply print working directory as text to the terminal";
    print *, "So we can know exactly which directory we are currently in";
    call execute_command_line("pwd");

end program printWorkingDir;