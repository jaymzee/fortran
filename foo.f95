function f1(x)
    integer :: f1
    integer, intent(in)  :: x
    f1 = x * x
end function

function square(x)
    real :: square
    real, intent(in) :: x
    square = x * x
end function

program main
    integer :: f1
    print *, "x = ", f1(3)
    print *, "x = ", square(3.1)
end program
