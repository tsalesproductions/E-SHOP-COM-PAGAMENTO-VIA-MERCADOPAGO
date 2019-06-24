$(document).ready(function() {

	jQuery("#telefone")
        .mask("(99) 99999-99?99")
        .focusout(function (event) {  
            var target, phone, element;  
            target = (event.currentTarget) ? event.currentTarget : event.srcElement;  
            phone = target.value.replace(/\D/g, '');
            element = $(target);  
            element.unmask();  
            if(phone.length > 10) {  
                element.mask("(99) 99999-99?99");  
            } else {  
                element.mask("(99) 99999-99?99");  
            }  
        });

	$("#subtotal").val($("#valor_produto").val());
	$("#quantity").change(function(){
		var preco = $("#valor_produto").val();
		var quantity = $("#quantity").val();
		var newpreco = preco*quantity;
	  //$("#subtotal").val(newpreco);
	  calcula();
	});

	function calcula(){
	var quant = document.getElementById("quantity").value;
	var unidade = document.getElementById("valor_produto").value;

	if((quant == "" || quant == null) && (unidade == "" || unidade == null))
		return false;

	while(quant.indexOf(',') != -1)
		quant = quant.replace(',','.');

	while(unidade.indexOf(',') != -1)
		unidade = unidade.replace(',','.');

	var total = parseFloat(quant*unidade);   
	document.getElementById("subtotal").value = total;   
	}

});