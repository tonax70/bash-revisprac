program mv;
    implicit none;
    character (len=250) :: source;
    character (len=250) :: dest;
    integer :: a;

    print *, "mv : move a file from source to dest (no duplicate like cp)";
    print *, "in ts example we will move the file ./img/Parasite.webp to ./dest_img back and forth";

    source = "./img/Parasite.webp";
    dest = "./dest_img/Parasite.webp";
    print *, "step1: move from ./img to ./dest_img, process?";
    read(*, *) a;
    call execute_command_line('sh -c "'//'mv '//source//" "//dest//'"');
    print *, "The files in the ./img are:"
    call execute_command_line('sh -c ''cd ./img; ls''');
    print *, "The files in the ./dest_img are:"
    call execute_command_line('sh -c ''cd ./dest_img; ls''');

    print *, "step2: move from ./dest_img back to ./img, process?";
    read(*, *) a;
    call execute_command_line('sh -c "'//'mv '//dest//" "//source//'"');
    print *, "The files in the ./img are:"
    call execute_command_line('sh -c ''cd ./img; ls''');
    print *, "The files in the ./dest_img are:"
    call execute_command_line('sh -c ''cd ./dest_img; ls''');


end program mv;