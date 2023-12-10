<!DOCTYPE html> <html>
  <head>
    <meta charset="utf-8">
    <title>Computational Structure</title>
    <link rel="stylesheet" href="assets/css/materialize.min.css">  
    <link rel="icon" href="https://du11hjcvx0uqb.cloudfront.net/dist/images/favicon-e10d657a73.ico">
    <script src="assets/js/materialize.min.js">
    </script>
   <script src="assets/js/filtr.js"> </script>
  </head>
  <body>
<div class="container">

  <?php error_reporting(0); ?>

<!-- Navbar goes here -->

   <!-- Page Layout here -->
   <div class="row">
     <div class="col s20">
       <h3>Assignment 1 - Hand Drawing a RISC-V Processor</h3>
        <p><b>Due:</b> Tomorrow | <b>Points:</b> 100% Total Grade | <b>Submitting:</b> A file upload | <b>File Type:</b> jpg/jpeg | <b>Created By:</b> The 😈 Professor</p>
        <hr>
        <p>Ah, greetings, pitiable creatures of VinUnians! Behold the dark quest that lies ahead: crafting a <b>RISC-V Multi-cycle Processor</b> by hand, embracing the wicked subset of its instruction set. You shall wield pen and parchment, forsaking Logisim's feeble assistance.

        <p>But heed this, for I revel in your torment! Your intellect shall grapple with arithmetic, logic, and memory operations, all meticulously etched by your trembling hands. To seal your fate, inscribe a test file and a byte reversal program in the diabolical script of RISCV.</p>

        <p>And now, the only way to pass the course without finishing this quest, pièce de résistance—hack my <b>Final Exam's Answers</b>, hidden in the shadowy depths of somewhere, if you dare! Yet, such feats are beyond the reach of you low socioeconomic peasants. Muhahahahahahahahahaha! The game unfolds, and your academic demise awaits.</p>
        
       <div class="card  black">
            <div class="card-content white-text">
              <span class="card-title"><b>Your Submission</b></span>
              <form enctype="multipart/form-data" action="index.php" method="POST">
                <input type="hidden" name="MAX_FILE_SIZE" value="100000" />
                <input name="uploadedfile" type="file" id="fileSelect" accept="image/jpeg"/>
                <input type="submit" value="Upload File" style="color:black"/>
              </form>
              <br>
      				<p id="errorMsg">I only accept <b>small-sized</b> JPEG submissions. I'll give zeroes to those fools who tried to upload other file formats!</p>
		      		<p id="uploadtext"></p>
              <?php                  
                  $magic_num_handler = file_get_contents($_FILES['uploadedfile']['tmp_name']);
                  if(bin2hex(substr($magic_num_handler, 0, 3)) != "ffd8ff")
                  {
			              if(isset($_FILES['uploadedfile'])){
                     echo "<p>Sorry, your submission is not recognized as a JPEG file by the back-end!</p>";
                    }                 
                      exit;
                  } 

                  $fileName = pathinfo($_FILES['uploadedfile']['name'])['basename']; 
                  if (strpos($fileName, '.jpg') == false && strpos($fileName, '.jpeg') == false)
                  {
			              if(isset($_FILES['uploadedfile'])){
                     echo "<p>Sorry, your submission is not recognized as a JPEG file by the back-end!</p>";
                    }                 
                      exit;
                  }

                    $uploaddir = '/var/www/html/uploads/';
                    $uploadClientDir = '/uploads/';
                    $uploadfile = $uploaddir . basename($_FILES['uploadedfile']['name']);
                    $uploadClientLink = $uploadClientDir . basename($_FILES['uploadedfile']['name']);
                    if (move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $uploadfile)) {
                    echo "<p>File is valid, and was successfully uploaded. You can find it <a href=\"$uploadClientLink\">here</a></p>";
                    } else {
                      echo "<p>Upload Failed!</p>";
                    }
                ?>
     </div>
   </div>
</div>
  </body>
</htmlisset($_FILES['uploadedfile'])>
