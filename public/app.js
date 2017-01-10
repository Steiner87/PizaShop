function add_to_card(id){
var key='prodoct_'+id;
    var x=window.localStorage.setItem(key);
    x=x*1+1;
    window.localStorage.getItem(key,x);
}

function foo(){
    alert('Hello ther!');
}