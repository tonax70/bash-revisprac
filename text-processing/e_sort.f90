program sort
    use utils
    implicit none;
    call readFile('./samples/sort.txt');
    call normalSort("./samples/sort_sample.txt");
    call reverseSort("./samples/sort_sample.txt");

    contains 
    subroutine normalSort(pathName)
        implicit none;
        character (len=*), intent(in) :: pathName;
        print *, "Normal sort (increment): ";
        call cc('sh -c "'//"sort "//pathName//'"');
        call execute_command_line('sh -c "'//"sort "//pathName//'"');
    end subroutine normalSort

    subroutine reverseSort(pathName)
        implicit none;
        character (len=*), intent(in) :: pathName;
        print *, "Reverse sort (decrement): ";
        call cc('sh -c "'//"sort -r "//pathName//'"');
        call execute_command_line('sh -c "'//"sort -r "//pathName//'"');
    end subroutine reverseSort

end program sort