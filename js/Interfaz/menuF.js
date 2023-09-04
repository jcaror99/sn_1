function cambiocolor(control,color)
{
    if( control.parentNode.parentNode.parentNode.className == "menu"){
    control.parentNode.parentNode.style.background=color;
    }
    control.style.background=color;
//submenu 
//    if (g_browser.isIE)
//    {
//         if(control.childNodes.length > 0)
//        {
//            if(control.lastChild.tagName == 'UL')   
//            {   
//                control.lastChild.style.left = (control.offsetWidth -1) + "px"
//            }
//        }
//    
//    }
//    else
//    {
//        if(control.childElementCount > 0)
//        {
//            if(control.lastChild.tagName == 'UL')
//            {control.lastChild.style.left = (control.offsetWidth ) + "px"
//            }
//        }
//    
//    }
}
function f_cambiocolorPriLin(control,color){
    control.style.cursor='pointer'
    control.style.background=color;
    control.style.color='black';
if(color=='transparent'){
    control.style.color='#28679d';
    }else{
    control.style.color='white';
    control.style.cursor='normal';
}
if(control.childNodes[1] != null){
    control.childNodes[1].style.color='black';}
}

var contador = 1;
function main () {
	$('.menu_bar').click(function(){
		if (contador == 1) {
			$('nav').animate({left: '0'});
			$('dark').animate({left: '0'});
    		$('dark').animate({display: 'block'});
			
			contador = 0;
		} else {
			contador = 1;
			$('nav').animate({left: '-100%'});
    		$('dark').animate({left: '-100'});
		}
	});
	$('.submenu').click(function(){
		$(this).children('.children').slideToggle();
	});
}


var elemento_menu= document.getElementsByClassName("menu_G");
var contador_class=0;
var contador_class_AC=0;
function function_toggle(a) {
var l = a;
var elemento_id= l.attributes[0];
var elemento_id= elemento_id.textContent;

if (elemento_id=='my_AC'){
if(contador_class_AC==1){
        var hoja_AC = document.getElementsByTagName('style')[0];
        hoja_AC.innerHTML = "@media screen and (max-width: 1020px) {." + elemento_id + " ul{display: none !important;transition: display 2s !important;}}";
        document.body.appendChild(hoja_AC);
        contador_class_AC=0;
    }else{
        var hoja_AC = document.createElement('style');
        hoja_AC.innerHTML = "@media screen and (max-width: 1020px) {." + elemento_id + " ul{display: block !important;transition: display 2s !important;}}";
        document.body.appendChild(hoja_AC);   
        contador_class_AC=1;
    }
}else{
    if (contador_class==1){
            var hoja = document.getElementsByTagName('style')[0];
            hoja.innerHTML = "@media screen and (max-width: 1020px) {#" + elemento_id + " ul{display: none !important;transition: display 2s !important;}}";
            document.body.appendChild(hoja);
            contador_class=0;
        }else{
            var hoja = document.createElement('style');
            hoja.innerHTML = "@media screen and (max-width: 1020px) {#" + elemento_id + " ul{display: block !important;transition: display 2s !important;}}";
            document.body.appendChild(hoja);   
            contador_class=1;
        };
    }
 }