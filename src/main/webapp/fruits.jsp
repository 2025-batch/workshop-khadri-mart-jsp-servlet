<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/fruits.css">
  <title>Fruits</title>
</head>
<body>

  <header>
    <h1>Fresh Fruits</h1>
    <p>Order your favorite fruits</p>
  </header>
  <section class="overview">
    <a class="fruit-card" href="#apple">
      <img src="images/apple.jpg" alt="Apple">
      <div class="fruit-card-title">Apple</div>
    </a>

    <a class="fruit-card" href="#banana">
      <img src="images/banana.jpg" alt="Banana">
      <div class="fruit-card-title">Banana</div>
    </a>

    <a class="fruit-card" href="#mango">
      <img src="images/mango.jpg" alt="Mango">
      <div class="fruit-card-title">Mango</div>
    </a>
  </section>

  <section id="apple" class="fruit-detail">
    <h2>Apple</h2>
    <img src="images/apple.jpg" alt="Apple">
    
    <form action="fruits" method="get">
      <label>Fruit Name:</label>
      <input type="text" name="fruitname" value="Apple" readonly><br>
      
      <label>Quantity (kg):</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>
      <input type="hidden" name="user" value="khadri" >
      <button type="submit">Add</button>
    </form>
  </section>
  <section id="banana" class="fruit-detail">
    <h2>Banana</h2>
    <img src="images/banana.jpg" alt="Banana">
    
    <form action="fruits" method="get">
      <label>Fruit Name:</label>
      <input type="text" name="fruitname" value="Banana" readonly><br>
      
      <label>Quantity (kg):</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>
      <input type="hidden" name="user" value="khadri" >
      <button type="submit">Add</button>
    </form>
  </section>
  <section id="mango" class="fruit-detail">
    <h2>Mango</h2>
    <img src="images/mango.jpg" alt="Mango">
    
    <form action="fruits" method="get">
      <label>Fruit Name:</label>
      <input type="text" name="fruitname" value="Mango" readonly><br>
      
      <label>Quantity (kg):</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>
      <input type="hidden" name="user" value="khadri" >
      <button type="submit">Add</button>
    </form>
  </section>

</body>
</html>
