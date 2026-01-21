program run_ls
  implicit none;
  print *, "This is when you run the ls command:";
  call execute_command_line("ls");
  print *, "Flags:";
  call ls("");
  call ls("-l");
  call ls("-a");
  call ls("-R");

  contains
  subroutine ls(flag)
    implicit none;
    character (len=*), intent(in) :: flag;

    select case (trim(flag))
    case ('')
      print *, "This is when you run the ls command:";
      call execute_command_line("ls");
    case ('-l')
      print *, "-l : long list format";
      call execute_command_line("ls -l");
    case ('-a')
      print *, "-a : include hidden files";
      call execute_command_line("ls -a");
    case ('-R')
      print *, "-R : list sub-directory recursively";
      call execute_command_line("ls -R");
    case default
      print *, "Invalid flag, if you want no flag just input an empty string";
    end select;
end subroutine ls;

end program run_ls
