function disableTo(value, len)
{
    var destination = document.getElementsByName('destination')[0];
    for(i = 1; i < len; i++)
    {
        if(destination[i].value == value)
            destination[i].disabled = true;
        else
            destination[i].disabled = false;
    }
}
function disableFrom(value, len)
{
    var source = document.getElementsByName('source')[0];
    for(i = 1; i < len; i++)
    {
        if(source[i].value == value)
            source[i].disabled = true;
        else
            source[i].disabled = false;
    }
}