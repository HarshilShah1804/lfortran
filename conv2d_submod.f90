submodule(nf_embedding_layer) nf_embedding_layer_submodule
   implicit none
contains

   module subroutine set_params(self, params)
      class(embedding_layer), intent(in out) :: self
      real, intent(in), target :: params(:)

      real, pointer :: p_(:,:)

      associate(n => self % vocab_size * self % model_dimension)
         ! reshape the weights
         p_(1:self % vocab_size, 1:self % model_dimension) => params(1 : n)
         self % weights = p_
      end associate

   end subroutine set_params
end submodule nf_embedding_layer_submodule
