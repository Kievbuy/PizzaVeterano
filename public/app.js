function something()
{
    var x = window.localStorage.getItem('bbb'); // равносильно x = hh['bbb']

    x = x * 1 + 1;

    window.localStorage.setItem('bbb', x);

    alert(x);
}

function addtocart(id)
{
    alert('You added pizza with id: ' + id);
}