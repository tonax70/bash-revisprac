module utils
    implicit none
    private

    ! Public procedures
    public :: readFile, confirm

contains

    subroutine readFile(fullPath)
        character(len=*), intent(in) :: fullPath
        call execute_command_line('sh -c "cat '//trim(fullPath)//'"')
    end subroutine readFile

    subroutine confirm(message)
        character(len=*), intent(in) :: message
        print *, trim(message)
        print *, "Press Enter to continue..."
        read(*,*)
    end subroutine confirm

end module utils
