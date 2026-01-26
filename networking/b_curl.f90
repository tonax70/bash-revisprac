program curl
    use utils;
    implicit none;

    call readFile('./form/curl.txt');
    call curlBasic('example.com');
    call curlWithRedirect('google.com');
    call curlDownloadFile( & 
    './form/ms.jpg', &
    'https://upload.wikimedia.org/wikipedia/commons/d/d6/' // &
    'Aerial_Microsoft_West_Campus_August_2009.jpg' &
    );
    call curlGetHTTPHeader( &
    'https://upload.wikimedia.org/wikipedia/commons/d/d6/' // &
    'Aerial_Microsoft_West_Campus_August_2009.jpg' &
    );


    contains
    subroutine curlBasic(link)
        implicit none;
        character (len=*), intent(in) :: link;
        call cx('sh -c "'//'curl '//link//'"');
    end subroutine curlBasic

    subroutine curlWithRedirect(link) 
        implicit none;
        character (len=*), intent(in) :: link;
        call cx('sh -c "'//'curl -L '//link//'"');
    end subroutine curlWithRedirect

    subroutine curlDownloadFile(saveAt, fileLink)
        implicit none;
        character (len=*), intent(in) :: saveAt, fileLink;
        call cx('sh -c "'//'curl -o '//saveAt//' '//fileLink//'"');
    end subroutine curlDownloadFile

    subroutine curlGetHTTPHeader(link)
        implicit none;
        character (len=*), intent(in) :: link;
        call cx('sh -c "'//'curl -I '//link//'"');
    end subroutine curlGetHTTPHeader

end program curl