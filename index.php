<html>
    <head>
        <title>
            RSA Key Generator - Generate 2048bit RSA Key pairs
        </title>
        </head>
        <body>
            <h1>
                RSA Key Generator
            </h1>
            <?php 
                $BIT_SIZE = $_GET["KEY_SIZE_BITS"] ?? (getenv('KEY_SIZE_BITS') ?: 4096);
            ?>
            <h3>
                Generating RSA Key pairs of size <?php echo $BIT_SIZE ?> bits
            </h3>
            <pre>
            <?php
                echo shell_exec("bash script.sh $BIT_SIZE");
            ?>
            </pre>
        </body>
</html>
