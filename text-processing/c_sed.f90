program sed
    implicit none;
    call readFile("./samples/sed.txt");
    call sedna('./samples/samp.txt', 'World', 'Bash');
    call sedna('./samples/samp.txt', 'Bash', 'World');

    contains 
    subroutine readFile(fullPath)
        character (len=*), intent(in) :: fullPath;
        call execute_command_line('sh -c "'//'cat '//fullPath//'"');
    end subroutine readFile

    subroutine sedna(fullPath, whatToFind, whatToReplace)
        implicit none;
        character (len=*), intent(in) :: fullPath, whatToFind, whatToReplace;
        print *, "You are going to run ["//"sed -i 's/"//whatToFind//"/"//whatToReplace//"/"//"' "//fullPath//"]";
        print *, "Press any key to continue...";
        read(*,*);
        call execute_command_line('sh -c "'//"sed -i 's/"//whatToFind//"/"//whatToReplace//"/"//"' "//fullPath//'"');
    end subroutine sedna;

end program sed