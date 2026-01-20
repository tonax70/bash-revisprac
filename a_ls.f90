program run_ls
  implicit none;
  print *, "This is when you run the ls command:";
  call execute_command_line("ls");
  print *, "Flags:";
  print *, "-l : long list format";
  call execute_command_line("ls -l");
  print *, "-a : include hidden files";
  call execute_command_line("ls -a");
  print *, "-R : list sub-directory recursively";
  call execute_command_line("ls -R");
end program run_ls
