// Archivo JScript
function actualizarRadio(id,x)
{
    var c,str
    str = new String(id)
 //   c = str.split("dtl_imagenes_ctl")[0]
    c = id.substring(0, str.length - 2)
   
    for (i=0;i<x;i++)
    {
        if (i>9)
        {
          //  document.getElementById(c+"dtl_imagenes_ctl"+i+"_rdb_cargo").checked=false
            document.getElementById(c+"_"+i).checked=false
        }else
        {
            //document.getElementById(c+"dtl_imagenes_ctl0"+i+"_rdb_cargo").checked=false
            document.getElementById(c + "_" + i).checked=false
        }
    }
    document.getElementById(id).checked=true
}
