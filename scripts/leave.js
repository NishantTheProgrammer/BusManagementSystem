function setDates()
{
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    if (dd < 10)
    {
        dd = '0' + dd;
    } 
    if (mm < 10)
    {
        mm = '0' + mm;
    }
    var from = document.getElementById('from')
    var to = document.getElementById('to')
    from.value = to.value = from.min = to.min = yyyy+"-"+mm+"-"+dd;
}
function updateMin(value)
{
    var min = document.getElementById('to').min;
    if(min < value)
    {
        document.getElementById('to').value = value;
    }
    document.getElementById('to').min = value;
}