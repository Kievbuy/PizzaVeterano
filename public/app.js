function something()
{
    var x = window.localStorage.getItem('bbb'); // равносильно x = hh['bbb']

    x = x * 1 + 1;

    window.localStorage.setItem('bbb', x);

    alert(x);
}

function add_to_cart(id)
{
    var key = 'product_' + id;

    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);
    alert(x);
}
function totalcart() {
    var total = 0;
    for(var i in localStorage)
    {
        var loc = localStorage[i]
        total = total + loc * 1
    }
    alert(total);
}
