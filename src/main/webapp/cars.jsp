<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Cars</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/cars.css">
</head>
<body>

  <header>
    <h1>Latest Cars Collection</h1>
    <p>Check out our premium cars</p>
  </header>
  <section class="overview">
    <a class="car-card" href="#tesla">
      <img src="images/tesla.jpg" alt="Tesla Model S">
      <div class="car-card-title">Tesla Model S</div>
    </a>

    <a class="car-card" href="#bmw">
      <img src="images/bmw.jpg" alt="BMW X5">
      <div class="car-card-title">BMW X5</div>
    </a>

    <a class="car-card" href="#audi">
      <img src="images/audi.jpg" alt="Audi A6">
      <div class="car-card-title">Audi A6</div>
    </a>
  </section>
  <section id="tesla" class="car-detail">
    <h2>Tesla Model S</h2>
    <img src="images/tesla.jpg" alt="Tesla Model S">

    <form action="cars" method="get">
      <label>Car Name:</label>
      <input type="text" name="carname" value="Tesla Model S" readonly><br>

      <label>Quantity:</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>

      <label>Color:</label>
      <input type="text" name="color" placeholder="Enter color"><br>
      <input type="hidden" name="user" value="khadri" >
      <button type="submit">Add</button>
    </form>
  </section>

  <section id="bmw" class="car-detail">
    <h2>BMW X5</h2>
    <img src="images/bmw.jpg" alt="BMW X5">

    <form action="cars" method="get">
      <label>Car Name:</label>
      <input type="text" name="carname" value="BMW X5" readonly><br>

      <label>Quantity:</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>

      <label>Color:</label>
      <input type="text" name="color" placeholder="Enter color"><br>
      <input type="hidden" name="user" value="khadri" >
      <button type="submit">Add</button>
    </form>

  </section>

  <section id="audi" class="car-detail">
    <h2>Audi A6</h2>
    <img src="images/audi.jpg" alt="Audi A6">

    <form action="cars" method="get">
      <label>Car Name:</label>
      <input type="text" name="carname" value="Audi A6" readonly><br>

      <label>Quantity:</label>
      <input type="number" name="quantity" placeholder="Enter quantity"><br>

      <label>Color:</label>
      <input type="text" name="color" placeholder="Enter color"><br>
      <input type="hidden" name="user" value="khadri" >
      <button type="submit">Add</button>
    </form>

  </section>

</body>
</html>
