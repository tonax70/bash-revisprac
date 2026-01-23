program ps 
    use utils;
    implicit none;

    call readFile("./nfo/ps.txt");
    call lb();
    call printSnapshot('-e');
    call printSnapshot('-f');
    call printSnapshot('-u');
    call printSnapshot('-a');

    contains
    subroutine printSnapshot (flag)
        character(len=*), intent(in) :: flag;

        select case (flag)
        case ('-e')
            print *, "This will show all process within the terminal";
            call cx('sh -c "'//"ps -e"//'"');
        case ('-f')
            print *, "This will show all process with detailed information";
            call cx('sh -c "'//"ps -f"//'"');
        case ('-u')
            print *, "This will show process for a specific user";
            call cx('sh -c "'//"ps -u"//'"');
        case ('-a')
            print *, "This will show all process with a terminal";
            call cx('sh -c "'//"ps -a"//'"');
        case default
            print *, "Invalid flag. Exit.";
        end select
    end subroutine printSnapshot
end program ps