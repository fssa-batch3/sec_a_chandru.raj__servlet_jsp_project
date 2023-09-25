<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>* {
  margin: 0;
  padding: 0;
}
body {
  background-color: black;
  color: goldenrod;
}
nav {
  display: flex;
  background-color: goldenrod;
  justify-content: space-between;
  align-items: center;
  padding: 0px 20px;
  position: sticky;
  top: 0px;
}
.logo img {
  margin-top: 5px;
  height: 80px;
  width: 80px;
}
nav ul {
  display: flex;
  list-style-type: none;
}
nav ul li {
  margin: 10px;
  padding: 10px 20px;
}
nav ul li a {
  text-decoration: none;
  color: black;
  padding: 0.5rem;
  transition: 0.5s;
}
nav ul li a:hover {
  background-color: black;
  border-radius: 10px;
  opacity: 100%;
  color: goldenrod;
  padding: 0.5rem;
}
button {
  padding: 5px 10px;
  border-radius: 10px;
  border: none;
  outline: none;
  font-weight: bold;
}
.signin {
  background-color: black;
  color: goldenrod;
}
.signup {
  background-color: black;
  color: goldenrod;
}

.hero img {
  display: flex;
  margin-left: auto;
  margin-right: auto;

  margin-top: 30px;
  width: 850px;
  height: 450px;
}
.main {
  margin-bottom: 50px;
}
.halls {
  display: flex;
  justify-content: center;
}
.hall-h1 {
  width: 100%;
  text-align: center;
  margin-bottom: 5px;
}
.hall-img img {
  width: 1000px;
  height: 500px;
  border-radius: 10px;
  border: 2px solid goldenrod;
  box-shadow: 0px 0px 15px white;
}
.a {
  width: 100%;
  text-align: center;
  font-size: 30px;
  color: goldenrod;
}

.adiv {
  text-align: center;
  margin-top: 5px;
}

.halls {
  display: flex;
  justify-content: center;
}
.hall-h1 {
  width: 100%;
  text-align: center;
  margin-bottom: 5px;
}
.hall-img img {
  width: 1000px;
  border-radius: 10px;
  height: 500px;
  border: 2px solid goldenrod;
  box-shadow: 0px 0px 15px white;
}
.a {
  width: 100%;
  text-align: center;
  font-size: 30px;
  color: goldenrod;
}

.adiv {
  text-align: center;
  margin-top: 5px;
}

.main {
  margin-bottom: 50px;
}
.halls {
  display: flex;
  justify-content: center;
}
.hall-h1 {
  width: 100%;
  text-align: center;
  margin-bottom: 5px;
}
.hall-img img {
  width: 1000px;
  border-radius: 10px;
  height: 500px;
  border: 2px solid goldenrod;
  box-shadow: 0px 0px 15px white;
}
.a {
  width: 100%;
  text-align: center;
  font-size: 30px;
  color: goldenrod;
}

.adiv {
  text-align: center;
  margin-top: 5px;
}
* {
  margin: 0;
  padding: 0;
}
.foot {
  width: 100%;
  position: relative;
  top: 100%;
  background-color: goldenrod;

  padding: 50px 0 30px;
  border-top-left-radius: 125px;
  font-size: 13px;
  line-height: 20px;
}
.row {
  width: 80%;
  margin: auto;
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  justify-content: space-between;
}

.col {
  flex-basis: 25%;
  padding: 10px;
}
.logo {
  width: 80px;
  margin-bottom: 20px;
}
.col-1 h3 {
  width: fit-content;
  margin-bottom: 40px;
  position: relative;
}
ul li {
  list-style: none;
  margin-bottom: 12px;
}

ul li a {
  text-decoration: none;
  color: black;
}
.social-icons .fa {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  text-align: centre;
  line-height: 40px;
  font-size: 60px;
  color: black;
  background: white;

  margin-right: 15px;
  cursor: pointer;
}

nav ul {
  position: relative;
}

.options {
  position: absolute;
  left: 1rem;
  /* color: white; */
  display: none;
  top: 2.9rem;
  /* display: flex; */
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 0.5rem;
  background-color: white;
  padding: 0.5rem 1rem;
  border-radius: 0.5rem;
}

.options div {
  padding: 0.2rem 0.4rem;
  transition: 0.3s;
  border-radius: 0.2rem;
}

.options div:hover {
  background-color: goldenrod;

  color: black;
}
           
a {
  cursor: pointer;
}
</style>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Home</title>
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/footer.css" />
    <script
      src="https://kit.fontawesome.com/09613bf4ed.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>
   <header>
      <nav>
        <div class="logo">
          <!-- <a href="..//index.html" -->
            ><img alt="image" src="./assets/images/Redefine.png"
          /></a>
        </div>

        <ul>
          <li>
            <a href="./aboutus.jsp">About Us</a>
          </li>
          <!-- <li>
            <a href="../pages/sign-up.html">Sign up</a>
          </li>
          <li>
            <a href="../pages/login.html">Login</a>
          </li> -->
          <li>
            <a href="../pages/userprofile.html">Profile</a>
          </li>
        </ul>
        <!-- <form action="./pages/sign-up.html">
          <button class="signin">Sign Up</button>
        </form>
        <form action="./pages/login.html">
          <button class="signin">Log in</button>
        </form>
        <form action="./pages/userprofile.html">
          <button class="signin">Profile</button>
        </form> -->
      </nav>
    </header>
    <!-- For logo and selecting halls -->
    <section>
      <div class="hero">
        <img
          alt="image"
          src="./assets/images/Redefine__2_-removebg-preview.png"
        />
      </div>
   
      <div class="main">
        <div class="hall-h1"><h1>HALLS</h1></div>
        <div class="halls">
          <div class="hall-img">
            <img
              alt="image"
              src="./assets/images/celebration-hall-with-full-guests.jpg"
            />
          </div>
        </div>
        <div class="adiv">
          <a class="a" href="UserHallListServlet">View More</a>
        </div>
      </div>
      <div class="main">
        <div class="hall-h1"><h1>Catering Services</h1></div>
        <div class="halls">
          <div class="hall-img">
            <img
              alt="image"
              src="./assets/images/gourmet-table-white-dish-catering.jpg"
            />
          </div>
        </div>
        <div class="adiv">
          <a class="a" href="../pages/cattering.html">View More</a>
        </div>
      </div>

      <div class="main">
        <div class="hall-h1"><h1>Invitation Cards</h1></div>
        <div class="halls">
          <div class="hall-img">
            <img
              alt="image"
              src="./assets/images/set_collection_luxury_wedding_invitation_cards_template.jpg"
            />
          </div>
        </div>
        <div class="adiv">
          <a class="a" href="../pages/card.html">View More</a>
        </div>
      </div>
    </section>
</body>
</html>