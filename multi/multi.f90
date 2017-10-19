program multi
    use mpi
    use iso_fortran_env
    implicit none
    integer(kind=int32) :: mpicomm
    integer(kind=int32) :: mpirank, mpisize, mpierr
    integer(kind=int32) :: holy_number

    call MPI_Init( mpierr )
    call check( mpierr, 'init' )

    mpicomm = MPI_Comm_World
    call MPI_Comm_Rank(mpicomm, mpirank, mpierr)
    call check(mpierr, 'Comm_Rank')
    call MPI_Comm_Size(mpicomm, mpirank, mpierr)
    call check(mpierr, 'Comm_Size')
    
    if (mpirank == 0) then
        print *, "I am the master"
        print *, "I chose a random number"
        holy_number = irand()
        print '(A, I0)', "I chose: ", holy_number
    end if
    call MPI_Bcast(buffer = holy_number, count = 1, &
                   datatype = MPI_INT32_T, root = 0, &
                   comm = mpicomm, ierror = mpierr)
    print '(A, I2, A, I0)', "Rank ", mpirank, ": All hail ", holy_number

    call MPI_Finalize(mpierr)
    call check(mpierr, "finalize")

contains

    subroutine check( error, routine )
        implicit none
        integer(kind=int32) , intent(in) :: error
        character(len=*), intent(in), optional :: routine
        character(len=100) :: ErrorMessage
        integer(kind=int32) :: messageLen, ierror
        if (error == 0) return

        print *, "Encountered Error"
        
        if (present(routine)) then
            print *, "during " // routine
        end if
        
        print '(A, I0)', "ErrorCode: ", error
        
        call MPI_Error_String(error, ErrorMessage, messageLen, ierror)
        if (ierror == 0) then
            print *, trim(ErrorMessage)
        end if
        
        stop 1
    end subroutine check

    function irand()
        implicit none
        integer(kind=int32) :: irand
        real(kind=real32) :: tmprand
        call random_number(tmprand)
        irand = int(tmprand * huge(irand), kind=int32)
        return
    end function irand

end program multi
