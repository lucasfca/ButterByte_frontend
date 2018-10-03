angular.module("appButterByte",[])
	.controller("userController",function($scope){
		$scope.users = [
			{id: "001",usuario: "Camila",email:"camila@mail.com",data:20/09/2018,status:Ativo},
			{id: "002",usuario: "Pedro",email:"pedro@mail.com",data:15/07/2018,status:Ativo},
			{id: "003",usuario: "Murilo",email:"murilo@mail.com",data:12/08/2017,status:Inativo},
			{id: "004",usuario: "João",email:"joao@mail.com",data:23/03/2017,status:Ativo},
			{id: "005",usuario: "Ana",email:"ana@mail.com",data:10/10/2016,status:Inativo}
		];

		var init = function(){
			$scope.users.forEach(function(user){
			//	user.media = media(user);
			});
			limpaForm();
		};


		$scope.abreAddUser = function(){
			$scope.editando = false;
			limpaForm();
			$('#modal1').openModal();
		};

		$scope.addUser = function(User){
		//	User.media = media(User);
			$scope.users.push(User);
			$('#modal1').closeModal();
			limpaForm();
		};

		$scope.editando = false;
		var userEdit;

		$scope.editUser = function(User){
			$scope.editando = true;			
			angular.copy(User,$scope.User);
			$('#modal1').openModal();
			userEditar = User;
		};

		$scope.salvarUser = function(User){
			userEdit.id = User.id;
			userEdit.usuario = User.usuario;
			userEdit.email = User.email;
			userEdit.data = User.data;
			userEdit.status = User.status;
			$('#modal1').closeModal();
		};

		var limpaForm = function(){
			$scope.User = {id: "",usuario:"",email:'',data:'',status:''};
		};

		init();


	})