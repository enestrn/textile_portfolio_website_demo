
<?php
// Form bilgilerini MySQL'e aktaran PHP kodu
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "tekstil"; 

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $sirketAdi = $_POST["sirket_adi"];
    $ulke = $_POST["ulke"];
    $email = $_POST["email"];
    $mesaj = $_POST["mesaj"];

    
    $sql = "INSERT INTO form_verileri (sirket_adi, ulke, email, mesaj) VALUES ('$sirketAdi', '$ulke', '$email', '$mesaj')";

   
    if ($conn->query($sql) === TRUE) {
        echo "İletişim bilgileriniz başarıyla gönderildi, Ana sayfaya yönlendiriliyorsunuz...";
        echo '<script>
            setTimeout(function() {
                window.location = "index.html";
            }, 3000); // 3000 milisaniye = 3 saniye
          </script>';
    } else {
        echo "Hata: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
