module nf_embedding_layer

   implicit none

   private
   public :: embedding_layer

   type :: embedding_layer

      integer :: vocab_size, model_dimension

      real, allocatable :: weights(:, :)

   contains

      procedure :: set_params

   end type embedding_layer

   interface
      module subroutine set_params(self, params)
         class(embedding_layer), intent(in out) :: self
         real, intent(in), target :: params(:)
      end subroutine set_params
   end interface
end module nf_embedding_layer
