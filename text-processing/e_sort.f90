program sort
    use utils
    implicit none;
    call readFile('./samples/sort.txt');
    call normalSort("./samples/sort_sample.txt");
    call reverseSort("./samples/sort_sample.txt");
    call sortByFieldSeparatedByDelimiter("./samples/sort_sample.txt", "2", ",", .false., .false.);
    call sortByFieldSeparatedByDelimiter("./samples/sort_sample.txt", "2", ",", .false., .true.);
    call sortByFieldSeparatedByDelimiter("./samples/sort_sample.txt", "2", ",", .true., .false.);
    call sortByFieldSeparatedByDelimiter("./samples/sort_sample.txt", "2", ",", .true., .true.);

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

    subroutine sortByFieldSeparatedByDelimiter(pathName, colNumString, delimiter, isSortByNumber, isReverse)
        implicit none;
        character (len=*), intent(in) :: pathName, colNumString, delimiter;
        character (len=300) :: command;
        logical :: isSortByNumber, isReverse;

        if (.not.isReverse .and. .not.isSortByNumber) then
            command = 'sh -c "'//"sort -t"//'"'//delimiter//'" '//"-k"//colNumString//','//colNumString//" "//pathName//'"';
            call cx(command);
        else if (isReverse .and. .not.isSortByNumber) then
            command = 'sh -c "'//"sort -rt"//'"'//delimiter//'" '//"-k"//colNumString//','//colNumString//" "//pathName//'"';
            call cx(command);
        else if (.not.isReverse .and. isSortByNumber) then
            command = 'sh -c "'//"sort -nt"//'"'//delimiter//'" '//"-k"//colNumString//','//colNumString//" "//pathName//'"';
            call cx(command);
        else 
            command = 'sh -c "'//"sort -nrt"//'"'//delimiter//'" '//"-k"//colNumString//','//colNumString//" "//pathName//'"';
            call cx(command);
        end if

    end subroutine sortByFieldSeparatedByDelimiter

end program sort