program ping
    use utils;
    implicit none;
    integer, parameter :: NumberOfPings = 10; !declare a constant
    
    !load form
    call readFile("./form/ping.txt");

    !call and execute the command within the subroutine
    call pig (NumberOfPings, 'google.com');


    contains
    subroutine pig(numberOfPingRequests, domain)
        implicit none;
        integer :: numberOfPingRequests;
        character (len=*), intent(in) :: domain;
        character (len=20) :: pings;
        write(pings,'(I0)') numberOfPingRequests; !parse (rewrite) an integer to a string
        ! call cx('sh -c "'//'ping -c '//pings//' '//domain//'"'); the -c tag is for linux, we use -n here for windows
        print *, "Number of pings will be sent: "//pings;
        call cx('sh -c "'//'ping -n '//pings//' '//domain//'"');
    end subroutine pig

end program ping
