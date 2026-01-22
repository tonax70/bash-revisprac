program senko
    use utils;
    implicit none;
    call fluffy("./samples/foxtest.txt");
    call tail("./samples/foxtest.txt");
    contains
    subroutine fluffy(fox)
        implicit none;
        character (len=*), intent(in) :: fox;
        print *, "This will print the first 10 lines of the file"
        call cx('sh -c "'//'head '//fox//'"');
        call lb();
    end subroutine fluffy

    subroutine tail(fox)
        implicit none;
        character (len=*), intent(in) :: fox;
        print *, "This will print the last 10 lines of the file"
        call cx('sh -c "'//'tail '//fox//'"');
        call lb();
    end subroutine tail
end program senko
