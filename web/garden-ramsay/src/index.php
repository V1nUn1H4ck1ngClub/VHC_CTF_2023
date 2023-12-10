<?php
	if (!isset($_GET["p"]))
	{
		$_GET["p"] = "000000";
	}	
        if ($_GET["p"] == 150120){?>
<html><head><title>The Flag</title><link rel='stylesheet' href='style.css'><link rel="icon" href="https://cdn-icons-png.flaticon.com/512/395/395841.png"> </head><div class='door'><svg width='100%' height='100%'><image href='img/Y2FwdHVyZV90aGVfZmthZwo=.png' width='100%' height='100%'/>
        <?php } else { ?>
<html>
<head>
<title>Fresh Garden</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Share+Tech|Orbitron:500' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="lock.css">
<link rel="icon" href="http://static.clingme.vn/images/default/cms-images/place/0/0/17/1540373855_560711.jpg?imageWidth=562">
</head>
<body>
    <div class="door">
        <svg width="100%" height="auto" viewBox="0 0 728 384">
            <svg width="100%" height="100%">
                <image href="img/door.png" width="100%" height="100%"/>
            </svg>
            <svg x="335" y="180" width="100%" height="auto">
                <image class="theLock" href="img/theLock.png" width="50" height="70" onclick="$('.modal').show()"/>
            </svg>
        </svg>
    </div>
    <div class="modal" hidden>
        <div class="lockContainer">
            <div class="lockDigitContainer digit0">
                <div class="lockDigit lockDigitPrev">9</div>
                <div class="lockDigit lockDigitCur">0</div>
                <div class="lockDigit lockDigitNext">1</div>
            </div>
            <div class="lockDigitContainer digit1">
                <div class="lockDigit lockDigitPrev">9</div>
                <div class="lockDigit lockDigitCur">0</div>
                <div class="lockDigit lockDigitNext">1</div>
            </div>
            <div class="lockDigitContainer digit2">
                <div class="lockDigit lockDigitPrev">9</div>
                <div class="lockDigit lockDigitCur">0</div>
                <div class="lockDigit lockDigitNext">1</div>
            </div>
            <div class="lockDigitContainer digit3">
                <div class="lockDigit lockDigitPrev">9</div>
                <div class="lockDigit lockDigitCur">0</div>
                <div class="lockDigit lockDigitNext">1</div>
            </div>
            <div class="lockDigitContainer digit4">
                <div class="lockDigit lockDigitPrev">9</div>
                <div class="lockDigit lockDigitCur">0</div>
                <div class="lockDigit lockDigitNext">1</div>
            </div>
            <div class="lockDigitContainer digit5">
                <div class="lockDigit lockDigitPrev">9</div>
                <div class="lockDigit lockDigitCur">0</div>
                <div class="lockDigit lockDigitNext">1</div>
            </div>
        </div>
        <div class="btnContainer">
            <button id="getBtn" onclick="check()">Unlock</button>
        </div>
    </div>
</body>
<script src="lock.js"></script>
<script src="password.js"></script>
</html>
<?php } ?>

