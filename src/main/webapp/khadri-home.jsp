<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Khadri Mart</title>
<!-- <link rel="stylesheet" href="css/style.css"> -->
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/khadri-home.css">

<script type="text/javascript">

 function logout(){
	 document.getElementById("lout").submit();
 }

</script>

</head>
<body>

<header>
  <div class="header-container">
    <div class="header-left">
      <h1>Khadri Mart</h1> 
      <p>Welcome to your fresh vegetable store!</p>
    </div>
    <div class="header-right">
      <span class="username">Hello, <strong><%=session.getAttribute("user") %></strong></span>
      <form id="lout" action="logout">
      <button class="logout-btn" onclick="logout()">Logout</button>
      </form>
    </div>
  </div>
</header>

<nav>
  <div class="dropdown">
    <a href="#">VEGETABLES ▾</a>
    <div class="dropdown-content">
      <a href="vegetables.html#tomato" target="content-frame">Tomato</a>
      <a href="vegetables.html#onion" target="content-frame">Onion</a>
      <a href="vegetables.html#carrot" target="content-frame">Carrot</a>
    </div>
  </div>

  <div class="dropdown">
    <a href="#">FRUITS ▾</a>
    <div class="dropdown-content">
      <a href="fruits.html#apple" target="content-frame">Apple</a>
      <a href="fruits.html#banana" target="content-frame">Banana</a>
      <a href="fruits.html#mango" target="content-frame">Mango</a>
    </div>
  </div>

  <div class="dropdown">
    <a href="#">CARS ▾</a>
    <div class="dropdown-content">
      <a href="cars.html#tesla" target="content-frame">Tesla Model S</a>
      <a href="cars.html#bmw" target="content-frame">BMW X5</a>
      <a href="cars.html#audi" target="content-frame">Audi A6</a>
    </div>
  </div>

  <div class="dropdown">
    <a href="#">SNACKS ▾</a>
    <div class="dropdown-content">
      <a href="snacks.html#chips" target="content-frame">Potato Chips</a>
      <a href="snacks.html#samosa" target="content-frame">Samosa</a>
      <a href="snacks.html#popcorn" target="content-frame">Popcorn</a>
    </div>
  </div>
  <div class="dropdown">
    <a href="#">CLOTHES ▾</a>
    <div class="dropdown-content">
      <a href="clothes.html#shirt" target="content-frame">Shirt</a>
      <a href="clothes.html#jeans" target="content-frame">Jeans</a>
      <a href="clothes.html#jacket" target="content-frame">Jacket</a>
    </div>
  </div>

  <a href="contact.html" target="content-frame">CONTACT</a>
</nav>

<!-- Iframe for content -->
<iframe name="content-frame"></iframe>

<footer>
  <p>&copy; 2025 Khadri Mart. All Rights Reserved.</p>
</footer>

</body>
</html>