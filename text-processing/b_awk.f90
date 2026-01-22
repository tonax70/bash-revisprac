program awk
    implicit none;
    call readFile("./samples/awk.txt")
    print *;
    call ak("./samples/data.csv", ",", "1")

    contains 
    subroutine readFile(fullPath)
        character (len=*), intent(in) :: fullPath;
        call execute_command_line('sh -c "'//'cat '//fullPath//'"');
    end subroutine readFile

    subroutine ak(fullPath, separator, columnNumber)
    implicit none
    character(len=*), intent(in) :: fullPath, separator, columnNumber
    character(len=400) :: cmd

    write(cmd, '(A, A, A, A, A, A, A)') &
        'sh -c "awk -F ''', trim(separator), ''' ''{print $', &
        trim(columnNumber), '}'' ', trim(fullPath), '"'

    print *, "CMD =", trim(cmd)
    call execute_command_line(trim(cmd))
end subroutine ak

end program awk