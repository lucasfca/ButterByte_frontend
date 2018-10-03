$('[id="estado"]').click(function(){

// ocultando todas
$('[id="cidade"] option').css('display', 'none');
 
// exibindo as do estado selecionado
$('[id="cidade"] .' + $(this).val()).css('display', '');

});