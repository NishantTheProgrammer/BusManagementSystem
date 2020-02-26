<style>
    .div1
    {
        height: 100px;
        width: 100px;
        background-color: green;
        position: relative;
        animation-name: anim1;
        animation-duration: 5s;
    }
    @keyframes anim1
    {
        0%
        {
            background-color: black;
        }
        100%
        {
            background-color: brown;
        }
    }
    .div2
    {
        height: 100px;
        width: 100px;
        background-color: green;
        position: relative;
        animation-name: anim2;
        animation-duration: 5s;
    }
    @keyframes anim2
    {
        0%
        {
            height: 100px;
        }
        100%
        {
            height: 200px;
        }
    }
</style>
<div class="div2" class="div1" >

</div>