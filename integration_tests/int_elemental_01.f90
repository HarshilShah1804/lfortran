program int_elemental_01
    implicit none
    integer :: nch, width, height
    integer :: dims(3)

    nch = 3
    width = 100
    height = 200

    dims = int([nch, width, height])
    if (size(dims) /= 3) error stop
    if (dims(1) /= 3 .or. dims(2) /= 100 .or. dims(3) /= 200) error stop
    print *, "Ok"
end program int_elemental_01
