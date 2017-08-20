function something()
{
    var x = window.localStorage.getItem('bbb'); // равносильно x = hh['bbb']

    x = x * 1 + 1;

    window.localStorage.setItem('bbb', x);

    alert(x);
}
function update_orders_input(){
    var orders = get_orders();
    $('#orders_input').val(orders);
}

function update_orders_button(){
    var text = 'Cart (' + totalcart() + ')';
    $("#orders_button").val(text);
}

// function test_unit(){
//     alert('Working!!!');
// }

function add_to_cart(id)
{
    var key = 'product_' + id;

    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);
    alert(x);

    update_orders_input();
    update_orders_button();
}

function totalcart() {
    var total = 0;
    for(var i in localStorage)
    {
        var loc = localStorage[i];
        total = total + loc * 1;
    }
    return total;
}

function get_orders() {
    var orders = '';
    for(var i in localStorage)
    {
        var key = i;
        var value = localStorage[i];

        if(key.indexOf('product_') == 0);
        {
            orders = orders + key + '=' + value + ',';
        }
    }
    return orders;
}

function clear_local_storage(){
    window.localStorage.clear();
    update_orders_button();
}

function clear_cart(){
    clear_local_storage();
    $('#cart').text('Your cart is empty!');
}