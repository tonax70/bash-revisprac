program grep
    implicit none;
    print *, "Grep is using to search text pattern in files";
    print *, "grep 'keyword' [filename].txt"

    contains
    subroutine grp(name, path, isDir) 
        character (len=*), intent(in) :: 