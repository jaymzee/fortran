program main
    implicit none

    integer :: i
    real :: x(3), A(2, 2)


    x(1) = 1.0
    x(2) = 2.0
    x(3) = 3.0

    A(1,1) = 1.0
    A(1,2) = 2.0
    A(2,1) = 3.0
    A(2,2) = 4.0

    read *, i

    print *, "x", x
    print *, "i", i
    print *, "A", A
end program
