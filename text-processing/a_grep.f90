program grep
    implicit none;
    character (len=250) :: terms, name, path, option;
    logical :: isDr;

    print *, "Grep is using to search text pattern in files";
    print *, "grep 'keyword' [filename].txt"
    print *, "Enter search terms in filename/dir name, path, isDir(y/n)"

    ! The user must enter path name in quotes because it might include the slash "/" is a read terminate character will terminate the read
    read(*, *) terms, name, path, option;
    if (option == 'y') then
        isDr = .true.;
    else 
        isDr = .false.;
    end if
    call grp(trim(terms), trim(name), trim(path), isDr);

    contains
    subroutine grp(searchTerms,name, path, isDir) 
        implicit none;
        character (len=*), intent(in) :: name, path, searchTerms;
        character (len=1) :: option;
        logical :: isDir;

        if (isDir) then 
            print *, "Search all files in sub dir of "//path//name//"? (y/n):";
            print *, 'sh -c "'//'grep -ri "'//searchTerms//'" '//path//name//'"';
            read (*,*) option;
            if (option=='y') then
                call execute_command_line('sh -c "'//'grep -ri '//searchTerms//'" '//path//name//'"');
            else 
                print *, "Cancelled action. exit";
            end if
        else 
            print *, "Search in file "//path//name//"? (y/n):";
            print *, 'sh -c "'//'grep -i "'//searchTerms//'" '//path//name//'"';
            read (*,*) option;
            if (option=='y') then
                call execute_command_line('sh -c "'//'grep -i "'//searchTerms//'" '//path//name//'"');
            else 
                print *, "Cancelled action. exit";
            end if
        end if
    end subroutine grp
end program grep;