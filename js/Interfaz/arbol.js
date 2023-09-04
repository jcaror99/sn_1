

function HandleCheckboxContacto(event , id)
{
    manejadorCheckBox(event, id)
}
function manejadorCheckBox(event, id )
{
    var element = event.target;
    
    while (element.tagName != "TABLE") // Get wrapping table
    {

        element = element.parentElement;
    console.log(event);

    }
    var elem = element.getElementsByTagName("a")
    console.log(elem.length);
    if (elem.length > 0){
        var tabla = document.getElementById(id.id);
      
        var tablaCh = tabla.getElementsByTagName("TABLE");
        var estado;
        for (let index = 0; index < tablaCh.length; index++) {
            if (index == 0){
                var input = tablaCh[index].getElementsByTagName("input")
                estado = input[0].checked     
               
            }else{
                var input = tablaCh[index].getElementsByTagName("input")
    
                //var check = document.getElementById(input.id);
                //console.log(check);
                input[0].checked = estado; 
            }
            
        }  
    }
    
}


// Uncheck the parents of the given table, Can remove the recurse (redundant)
function UnCheckParentsContacto(table)
{
    if (table == null || table.rows[0].cells.length == 1) // This is the root
    {
        return;
    }
    var parentTable = table.parentElement.previousSibling;
            console.log(parentTable.rows)
    
    CheckTable(parentTable, false);
    UnCheckParents(parentTable);
}

// JScript File


function HandleCheckbox(event)
{
    if (g_browser.isIE) 
        {
        manejadorCheckBox_IE(event)
        }
    if (g_browser.isNS)
        {
        manejadorCheckBox_FF(event)
        }
}

function manejadorCheckBox_IE(event)
{
    var element = event.srcElement;

    if (element.tagName == "INPUT" && element.type == "checkbox")
    {
        var checkedState = element.checked;
        if (checkedState==true){
            estadoArbol=1;
            return false;
        }else{
            if (estadoArbol==1){
                estadoArbol=2;
                element.checked=true
                checkedState = element.checked;
            }else{
                estadoArbol = 0;
            }
        }
        while (element.tagName != "TABLE") // Get wrapping table
        {
            element = element.parentElement;
        }
        UnCheckParents(element); // Uncheck all parents
        
        element = element.nextSibling;
        
        if (element == null) // If no childrens than exit
            return;
        
        var childTables = element.getElementsByTagName("TABLE");
        for (var tableIndex = 0; tableIndex < childTables.length; tableIndex++)
        {
            CheckTable(childTables[tableIndex], checkedState);
        }
    }
}

// Uncheck the parents of the given table, Can remove the recurse (redundant)
function UnCheckParents(table)
{
    if (table == null || table.rows[0].cells.length == 2) // This is the root
    {
        return;
    }
    var parentTable = table.parentElement.previousSibling;
    CheckTable(parentTable, false);
    UnCheckParents(parentTable);
}

// Handle the set of checkbox checked state
function CheckTable(table, checked)
{
    var checkboxIndex = table.rows[0].cells.length - 1;
    var cell = table.rows[0].cells[checkboxIndex];
    var checkboxes = cell.getElementsByTagName("INPUT");
    if (checkboxes.length == 1)
    {
        checkboxes[0].checked = checked;
    }
}
var estadoArbol = 0;//apagado
function manejadorCheckBox_FF(event)
{
    var element = event.target;

    if (element.tagName == "INPUT" && element.type == "checkbox")
    {
        var checkedState = element.checked;
        if (checkedState==true){
            estadoArbol=1;
            return false;
        }else{
            if (estadoArbol==1){
                estadoArbol=2;
                element.checked=true
                checkedState = element.checked;
            }else{
                estadoArbol = 0;
            }
        }
        while (element.tagName != "TABLE") // Get wrapping table
        {
            element = element.parentNode;
        }
        UnCheckParents_FF(element); // Uncheck all parents
        
        element = element.nextSibling;
        
        if (element.tagName == undefined) // If no childrens than exit
            return;
        
        var childTables = element.getElementsByTagName("table");
        for (var tableIndex = 0; tableIndex < childTables.length; tableIndex++)
        {
            CheckTable_FF(childTables[tableIndex], checkedState);
        }
    }
}
// Uncheck the parents of the given table, Can remove the recurse (redundant)
function UnCheckParents_FF(table)
{
    if (table == null || table.rows[0].cells.length == 2) // This is the root
    {
        return;
    }
    var parentTable = table.parentNode.previousSibling;
    CheckTable_FF(parentTable, false);
    UnCheckParents_FF(parentTable);
}

// Handle the set of checkbox checked state
function CheckTable_FF(table, checked)
{

        
    var checkboxIndex = table.rows[0].cells.length - 1;
    var cell = table.rows[0].cells[checkboxIndex];
    var checkboxes = cell.getElementsByTagName("INPUT");
    if (checkboxes.length == 1)
    {
        checkboxes[0].checked = checked;
    }
}