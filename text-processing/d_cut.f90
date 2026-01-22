program cut
    implicit none;
    call readFile('./samples/cut.txt');
    call ct('./samples/cut_sample.txt', ',', '1');
    call ct('./samples/cut_sample.txt', ',', '2');

    contains 
    subroutine readFile(fullPath)
        character (len=*), intent(in) :: fullPath;
        call execute_command_line('sh -c "'//'cat '//fullPath//'"');
    end subroutine readFile

    subroutine confirm(message)
        character (len=*), intent(in) :: message;
        print *, message;
        print *, "Press any key to continue...";
        read(*,*);
    end subroutine confirm

    subroutine ct(fullPath, separator, colCount) 
        implicit none;
        character (len=*), intent(in) :: fullPath, separator, colCount;
        call confirm("You are going to run the cut command: ");
        print *, "sh -c '"//'cut -d'//"'"//separator//"'"//" -f"//colCount//" "//fullPath//"'";
        call execute_command_line("sh -c '"//'cut -d'//"'"//separator//"'"//" -f"//colCount//" "//fullPath//"'");
    end subroutine ct

end program cut