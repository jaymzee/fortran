Program LinearEquations
! solving the matrix equation A*x=b using LAPACK
	Implicit none
! declarations, notice single precision
	Real*4 A(3,3), b(3)
	integer i, j, pivot(3), ok
! define matrix A
        A = reshape([3.1, 1.0, 3.4, 1.3, -6.9, 7.2, -5.7, 5.8, -8.8], [3,3])
! define vector b, make b a matrix and you can solve multiple
! equations with the same A but different b
	b(1)=-1.3
	b(2)=-0.1
	b(3)=1.8
! find the solution using the LAPACK routine SGESV
	call SGESV(3, 1, A, 3, pivot, b, 3, ok)
!
! parameters in the order as they appear in the function call
!    order of matrix A, number of right hand sides (b), matrix A,
!    leading dimension of A, array that records pivoting, 
!    result vector b on entry, x on exit, leading dimension of b
!    return value 	
!	
! print the vector x
	do i=1, 3
	   write(*,*) b(i)
	end do
	end
