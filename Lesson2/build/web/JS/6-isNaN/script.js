document.getElementById('button').addEventListener('click',function(){
  var num=document.getElementById('input').value
    if(isNaN(num)){
        alert('Ingrese un numero')
    }
})