<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/leave.css">
    <link rel="icon" href="images/icon.png">
    <title>Fare</title>
</head>
<body onload="changeRange();">
    <jsp:include page="navigationPannel.jsp"></jsp:include>

    <svg class="svgGredient" width="1536" height="541" viewBox="0 0 1536 541" fill="none" xmlns="http://www.w3.org/2000/svg">
        <ellipse cx="786.381" cy="363.536" rx="136.658" ry="137.145" fill="#9723C0"/>
        <path d="M415.124 535.125C293.029 552.177 83.6654 535.125 0 423.937V0H1536V56.2712V253.781C1536 253.781 1437.62 358.6 1337.81 393.735C1199.55 442.402 1097.2 358.212 910.651 386.631C724.106 415.049 537.22 518.074 415.124 535.125Z" fill="url(#paint0_linear)"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M324.911 540.792C357.664 540.944 388.473 538.847 415.124 535.125C470.582 527.38 539.407 501.898 615.496 473.726C636.473 465.959 658.002 457.988 679.956 450.128C641.308 412.017 588.314 388.508 529.848 388.508C433.276 388.508 351.632 452.648 324.911 540.792Z" fill="url(#paint1_linear)"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M344.717 0C336.972 111.633 244.276 199.781 131.064 199.781C81.6928 199.781 36.2237 183.017 0 154.853V0H344.717Z" fill="url(#paint2_linear)"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M1102.59 391.002C1047.02 381.979 985.635 375.208 910.651 386.631C808.838 402.141 706.923 439.875 615.496 473.726C612.746 474.744 610.005 475.759 607.273 476.77C605.231 463.888 604.171 450.68 604.171 437.225C604.171 298.627 716.699 186.271 855.509 186.271C978.504 186.271 1080.86 274.484 1102.59 391.002Z" fill="url(#paint3_linear)"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M1337.01 0L1536 0V56.2712V100.495C1515.12 117.055 1488.92 126.91 1460.48 126.91C1392.29 126.91 1337.01 70.2737 1337.01 0.409416C1337.01 0.272894 1337.01 0.136421 1337.01 0Z" fill="url(#paint4_linear)"/>
        <defs>
        <linearGradient id="paint0_linear" x1="-2.92808e-05" y1="243.829" x2="1529.61" y2="26.2909" gradientUnits="userSpaceOnUse">
        <stop stop-color="#400C52"/>
        <stop offset="1" stop-color="#093094"/>
        </linearGradient>
        <linearGradient id="paint1_linear" x1="442.739" y1="675.898" x2="746.756" y2="532.252" gradientUnits="userSpaceOnUse">
        <stop stop-color="#0D3D52" stop-opacity="0"/>
        <stop stop-color="#192580" stop-opacity="0"/>
        <stop offset="1" stop-color="#9271B5"/>
        </linearGradient>
        <linearGradient id="paint2_linear" x1="-83.1134" y1="-15.5567" x2="345.24" y2="-15.5567" gradientUnits="userSpaceOnUse">
        <stop stop-color="#0D3D52" stop-opacity="0"/>
        <stop stop-color="#5C5C67" stop-opacity="0"/>
        <stop offset="0.558916" stop-color="#906F74" stop-opacity="0.39683"/>
        <stop offset="1" stop-color="#C66D6D" stop-opacity="0.67"/>
        </linearGradient>
        <linearGradient id="paint3_linear" x1="413.322" y1="437.225" x2="745.132" y2="461.673" gradientUnits="userSpaceOnUse">
        <stop stop-color="#E7DAFF"/>
        <stop offset="1" stop-color="#4700D0" stop-opacity="0"/>
        </linearGradient>
        <linearGradient id="paint4_linear" x1="1337.01" y1="-34.7979" x2="1599.93" y2="-33.5616" gradientUnits="userSpaceOnUse">
        <stop offset="0.0989583" stop-color="#C4C4C4" stop-opacity="0"/>
        <stop offset="1" stop-color="#BA05A8"/>
        </linearGradient>
        </defs>
    </svg>  

    <div class="container">
        <div class="workspace">
            <form>
                <h1>Fare</h1>
                <select>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Bus No.</option>
                    <option>971</option>
                    <option>234</option>
                    <option>982</option>
                    <option>TMS</option>
                </select>
                <select>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">From</option>
                    <option>Ashoke Nagar</option>
                    <option>Nand Nagri</option>
                    <option>Seema Puri</option>
                    <option>GTB Nagar</option>
                </select>
                <select>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">To</option>
                    <option>Ashoke Nagar</option>
                    <option>Nand Nagri</option>
                    <option>Seema Puri</option>
                    <option>GTB Nagar</option>
                    <option>Shalimar Bagh</option>
                </select>
                <p id='rangeOutput'></p>
                <input type="range" value="1" min="1" max="20" onchange="changeRange();" class="noOfPassangers">
                <input type="submit" value="Check Fare">
            </form>
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script>
    function changeRange()
    {
        var range = document.getElementsByClassName('noOfPassangers')[0].value;
        document.getElementById('rangeOutput').innerHTML = range;
    }
</script>
</html>