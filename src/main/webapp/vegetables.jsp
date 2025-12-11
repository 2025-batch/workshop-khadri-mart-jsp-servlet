<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vegetables</title>
  <link rel="stylesheet" href="css/vegetable.css">
</head>
<body>

  <header>
    <h1>Fresh Vegetables</h1>
    <p>Order your favorite vegetables</p>
  </header>

  <section class="overview">
    <a class="veg-card" href="#tomato">
      <img src="images/tomato.jpg" alt="Tomato">
      <div class="veg-card-title">Tomato</div>
    </a>

    <a class="veg-card" href="#onion">
      <img src="images/onion.jpg" alt="Onion">
      <div class="veg-card-title">Onion</div>
    </a>

    <a class="veg-card" href="#carrot">
      <img src="images/carrot.jpg" alt="Carrot">
      <div class="veg-card-title">Carrot</div>
    </a>
  </section>

  <section id="tomato" class="veg-detail">
    <h2>Tomato</h2>
    <img src="images/tomato.jpg" alt="Tomato">
    
    <form action="vegetable" method="post">
      <label>Vegetable Name:</label>
      <input type="text" name="vegname" value="Tomato" readonly><br>
      
      <label>Quantity (kg):</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>
       <input type="hidden" name="user" value="khadri">
      <button type="submit">add</button>
    </form>
  </section>

  <section id="onion" class="veg-detail">
    <h2>Onion</h2>
    <img src="images/onion.jpg" alt="Onion">
    
    <form action="vegetable" method="post">
      <label>Vegetable Name:</label>
      <input type="text" name="vegname" value="Onion" readonly><br>
      
      <label>Quantity (kg):</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>
       <input type="hidden" name="user" value="khadri" >
      <button type="submit">add</button>
    </form>

  </section>
  <section id="carrot" class="veg-detail">
    <h2>Carrot</h2>
    <img src="images/carrot.jpg" alt="Carrot">
   
    <form action="vegetable" method="post">
  <label>Vegetable Name:</label>
  <input type="text" name="vegname" value="Tomato" readonly><br>

  <label>Quantity (kg):</label>
  <input type="number" name="quantity" placeholder="Enter quantity"><br>

  <input type="hidden" name="user_name" value="khadri">

  <button type="submit">Add</button>
</form>
  </section>
</body>
</html>