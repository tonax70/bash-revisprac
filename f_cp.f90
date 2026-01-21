program cp;
    implicit none;
    character (len=250) :: path1;
    character (len=250) :: path2;
    integer :: a;

    print *, "cp : using to create a duplicate of a file and move it to somewhere";
    print *, "cp [flags(optional)] [source_file] [destination_file]";
    print *, "Common flags: ";
    print *, "-r - Copy all files and folders inside a directory";
    print *, "-v - Verbose mode, show files being copied";
    print *, "There are 2 folders called ./img and ./dest_img, and we want to cp some from img to dest_img";

    print *, "Start with cp ./img/img1.jpg";
    print *, "Copy to ./img as img1_copied.jpg (duplicate in the same dir)";
    path1 = "./img/img1.jpg";
    path2 = "./img/img1_copied.jpg";

    print *, "Are you want to process? (type a number to continue)";
    read(*, *) a;

    call execute_command_line('sh -c '//'"'//'cp '//path1//' '//path2//'"');
    print *, "The files in the ./img are: (look at the img1_copied.jpg we just created)"
    call execute_command_line('sh -c ''cd ./img; ls''');

    print *, "Start with cp ./img/img1.jpg";
    print *, "Copy to ./dest_img as img1_copied.jpg (duplicate and move to ./dest_img)";
    path1 = "./img/img1.jpg";
    path2 = "./dest_img/img1_copied.jpg";

    print *, "Are you want to process? (type a number to continue)";
    read(*, *) a;

    call execute_command_line('sh -c "'//'cp '//path1//" "//path2//'"');
    print *, "The files in the ./img are: (look at the img1_copied.jpg we just created)"
    call execute_command_line('sh -c ''cd ./img; ls''');
    print *, "The files in the ./dest_img are: (look at the img1_copied.jpg we just created)"
    call execute_command_line('sh -c ''cd ./dest_img; ls''');

end program cp;