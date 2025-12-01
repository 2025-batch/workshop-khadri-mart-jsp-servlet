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
    <a href="#">VEGETABLES &#9662;</a>
    <div class="dropdown-content">
      <a href="vegetables.jsp#tomato" target="content-frame">Tomato</a>
      <a href="vegetables.jsp#onion" target="content-frame">Onion</a>
      <a href="vegetables.jsp#carrot" target="content-frame">Carrot</a>
    </div>
  </div>

  <div class="dropdown">
    <a href="#">FRUITS &#9662;</a>
    <div class="dropdown-content">
      <a href="fruits.jsp#apple" target="content-frame">Apple</a>
      <a href="fruits.jsp#banana" target="content-frame">Banana</a>
      <a href="fruits.jsp#mango" target="content-frame">Mango</a>
    </div>
  </div>

  <div class="dropdown">
    <a href="#">CARS &#9662;</a>
    <div class="dropdown-content">
      <a href="cars.jsp#tesla" target="content-frame">Tesla Model S</a>
      <a href="cars.jsp#bmw" target="content-frame">BMW X5</a>
      <a href="cars.jsp#audi" target="content-frame">Audi A6</a>
    </div>
  </div>

  <div class="dropdown">
    <a href="#">SNACKS &#9662;</a>
    <div class="dropdown-content">
      <a href="snacks.jsp#chips" target="content-frame">Potato Chips</a>
      <a href="snacks.jsp#samosa" target="content-frame">Samosa</a>
      <a href="snacks.jsp#popcorn" target="content-frame">Popcorn</a>
    </div>
  </div>
  <div class="dropdown">
    <a href="#">CLOTHES &#9662;</a>
    <div class="dropdown-content">
      <a href="clothes.jsp#shirt" target="content-frame">Shirt</a>
      <a href="clothes.jsp#jeans" target="content-frame">Jeans</a>
      <a href="clothes.jsp#jacket" target="content-frame">Jacket</a>
    </div>
  </div>

  <a href="contact.jsp" target="content-frame">CONTACT</a>
</nav>
<iframe name="content-frame"></iframe>

<footer>
  <p>&copy; 2025 Khadri Mart. All Rights Reserved.</p>
</footer>

</body>
</html>