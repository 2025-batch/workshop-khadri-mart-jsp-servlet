<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Snacks</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/snacks.css">
</head>
<body>
	<h1>Delicious Snacks</h1>
	<section class="overview">
		<a class="snack-card" href="#chips"> <img src="images/chips.jpg"
			alt="Potato Chips">
			<div class="snack-card-title">Potato Chips</div>
		</a> <a class="snack-card" href="#samosa"> <img
			src="images/samosa.jpg" alt="Samosa">
			<div class="snack-card-title">Samosa</div>
		</a> <a class="snack-card" href="#popcorn"> <img
			src="images/popcorn.jpg" alt="Popcorn">
			<div class="snack-card-title">Popcorn</div>
		</a>
	</section>

	<section id="chips" class="snack-detail">
		<h2>Potato Chips</h2>
		<img src="images/potato.jpg" alt="Potato Chips">

		<form action="snacks" method="get">
			<label>Snack Name:</label> <input type="text" name="snackname"
				value="Potato Chips" readonly> <label>Quantity (kg):</label>
			<input type="number" name="quantity" placeholder="Enter quantity"
				required> <input type="hidden" name="user" value="khadri">
			<button type="submit">Add</button>
		</form>
	</section>

	<section id="samosa" class="snack-detail">
		<h2>Samosa</h2>
		<img src="images/samosa.jpg" alt="Samosa">

		<form action="snacks" method="get">
			<label>Snack Name:</label> <input type="text" name="snackname"
				value="Samosa" readonly><br> <label>Quantity
				(kg):</label> <input type="number" name="quantity"
				placeholder="Enter quantity" required><br> <input
				type="hidden" name="user" value="khadri">
			<button type="submit">Add</button>
		</form>
	</section>

	<section id="popcorn" class="snack-detail">
		<h2>Popcorn</h2>
		<img src="images/popcorn.jpg" alt="Popcorn">

		<form action="snacks" method="get">
			<label>Snack Name:</label> <input type="text" name="snackname"
				value="Popcorn" readonly> <br> <label>Quantity
				(kg):</label> <input type="number" name="quantity"
				placeholder="Enter quantity" required><br> <input
				type="hidden" name="user" value="khadri">
			<button type="submit">Add</button>
		</form>

	</section>

</body>
</html>
