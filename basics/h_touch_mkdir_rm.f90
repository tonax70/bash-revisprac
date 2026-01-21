program touch_mkdir_rm
    implicit none;
    print *, "touch can be used to create a new file or update the date of the file";
    print *, "mkdir can be used to make a enw dir";
    print *, "rm can be used to remove a file or multiple file, or a dir with the -r flag"
    call cdAndList("./img");
    call touch("test.txt", "./");
    call mkdir("testDir");
    call rm("testDir", "./", .true.);
    call rm("test.txt", "./", .false.);

    contains

    subroutine cdAndList(pathName)
    implicit none;
        character(len=*), intent(in) :: pathName;
        print *, "The files in the "//trim(pathName)//" are:";
        call execute_command_line('sh -c "'//'cd '//trim(pathName)//'; ls'//'"');
    end subroutine cdAndList;

    subroutine touch(fileName, pathName)
        implicit none;
        character (len=*), intent(in) :: fileName, pathName;
        print *, "The file "//trim(fileName)//" will be created at "//trim(pathName)//". press any key to process...";
        read(*, *);
        call execute_command_line('sh -c "'//'touch '//trim(pathName)//trim(fileName)//'"');
    end subroutine touch;

    subroutine mkdir(dirName)
        implicit none;
        character (len=*), intent(in) :: dirName;
        print *, "The directory "//trim(dirName)//" will be created at ./ press any key to process...";
        read(*, *);
        call execute_command_line('sh -c "'//'mkdir '//trim(dirName)//'"');
    end subroutine mkdir;

    subroutine rm(name, parentDir, isDir)
        implicit none;
        character (len=*), intent(in) :: name, parentDir;
        character (len=1) :: option;
        logical :: isDir;
        if (isDir) then
            print *, "The dir "//name//" will be removed. Continue?(y/n)"
            read(*,*) option;
            if (option == 'y') then
                call execute_command_line('sh -c "'//"rm -r "//parentDir//name//'"');
            else 
                print *, "Action cancelled, exit.";
            end if
        else 
            print *, "The dir "//name//" will be removed. Continue?(y/n)"
            read(*,*) option;
            if (option == 'y') then
                call execute_command_line('sh -c "'//"rm "//parentDir//name//'"');
            else 
                print *, "Action cancelled, exit.";
            end if
        end if
    end subroutine rm;
end program touch_mkdir_rm;