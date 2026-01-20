program run_ls
  implicit none;
  print *, "This is when you run the ls command:";
  call execute_command_line("ls");
end program run_ls
