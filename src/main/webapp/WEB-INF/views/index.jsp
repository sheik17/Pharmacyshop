<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Med Go</title>
    <!-- font awesome cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- local css file -->
    <link rel="stylesheet" href="styles.css" />
    <link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/styles.css"%>
</style>
  </head>
   <body>
    <!-- header section starts -->
    <header class="header">
      <a href="#" class="logo">Med<span>Go</span></a>
      <a class="menu fas fa-bars"></a>
      <nav class="navbar">
        <a href="/user/index">home</a>
        <a href="#about">about</a>
        <a href="#services">health</a>
        <a href="#contact">contact</a>
      </nav>
    </header>
    <!-- header section starts -->

    <!-- home section starts -->
    <section class="home" id="home">
      <h1>Find the Doctor Recommended Medicines You Need at Affordable Prices.</h1>
      <p>we care for you and health</p>
      <a href="/user/login" class="btn">Login</a>
    </section>
    <!-- home section ends -->

    <!-- about section starts -->
    <section class="about" id="about">
      <div class="box-container">
        <div class="box">
          <h1 class="heading">about us</h1>
          <p>
            MedGo India’s Most trusted pharmacyShop.Accredited with - International Quality Certification, MedGo Pharmacy offers genuine medicines round-the-clock, through our 24-hour Pharmacies. MedGo Pharmacy also provides customer care any time of the day! Quality is the cornerstone of our existence.
          </p>
          <p>
           We have gained experience in pharmacy operations management over the last 2 decades and are committed to delivering best service in the industry.
MedGo Pharmacy is well stocked with medicines, OTC and FMCG products, manned by a team of qualified and experienced staff available to cater to your every need.
          </p>
        </div>

        <div class="box">
          <div class="image">
            <img src="https://us.123rf.com/450wm/lunarcat/lunarcat1907/lunarcat190700001/127985592-shopping-cart-with-medicaments-medicine-concept-for-drug-store-or-online-pharmacy-flat-vector-illust.jpg?ver=6" alt=""  width="100" height="100" />
          </div>
        </div>
      </div>
    </section>
    <!-- about section ends -->

    <!-- services section starts -->
    <section class="services" id="services">
      <h1 class="heading">Health Queries</h1>
      <div class="box-container">
        <div class="box">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Circle-icons-tools.svg/640px-Circle-icons-tools.svg.png" alt=""  width="100" height="100"/>
          <h3>Coronary Heart Disease</h3>
          <p>
           Coronary heart disease is a type of heart disease that develops when the arteries of the heart cannot deliver enough oxygen-rich blood to the heart. It is the leading cause of death in the United States.
          </p>
        </div>
        <div class="box">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG0nmJSq88HJwVJupjqp2HIgjtuVc1fx4wvA&usqp=CAU" alt="" width="100" height="100" />
          <h3>Fever Tips</h3>
          <p>
            Fever is just a symptom of any underlying infection or inflammation and it will come down only when the cause is treated. Cold water either in the form of drinking or tepid sponging helps in controlling core body temperature in fever.
          </p>
        </div>
        <div class="box">
          <img src="https://m.media-amazon.com/images/I/71aDQB7nj+L._SL1500_.jpg" alt="" width="100" height="100" />
          <h3>Migraine</h3>
          <p>
            The simple reason could be that for some people food is a triggering factor of migraine. Once the food is thrown up, the pain is automatically relieved.Or it just could be shifting your attention from the pain while trying to vomit. It releases the intracranial pressure.Relieving factors differ from individual to individual
          </p>
        </div>
        <div class="box">
          <img src="https://icon-library.com/images/clinic-icon/clinic-icon-27.jpg" alt="" width="100" height="100" />
          <h3>Stroke</h3>
          <p>
            Paralysis,numbness,trouble speaking, slurred speech, lack of balance.
          </p>
        </div>
        <div class="box">
          <img src="https://cdn-icons-png.flaticon.com/512/230/230194.png" alt=""  width="100" height="100" />
          <h3>Stress</h3>
          <p>
            Chronic illness, emotional problems(anxiety,depression etc) financial issues, lack of confidence, traumatic event in the past.
          </p>
        </div>
        <div class="box">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYMepUqCaUIYmUR4qEBzrymp8qTiRNm2kZYA&usqp=CAU" alt="" width="100" height="100" />
          <h3>Health Habits</h3>
          <p>
           Healthy eating, 8 hrs of sleep, healthy thinking and regular physical activity.
          </p>
        </div>
      </div>
    </section>
    <!-- services section ends -->

 
    <!-- contact section starts -->
    <section class="contact" id="contact">
      <h1 class="heading">contact us</h1>
      <div class="box-container">
        <div class="box">
          <h3>address</h3>
          <p>Smart City,Chennai,Tamilnadu</p>
          <h3>email</h3>
          <p>sheik@gmail.com</p>
          <h3>phone</h3>
          <p>7823219821</p>
          <h3>fax</h3>
          <p>(208) 333 9296</p>
        </div>

        <form>
          <div class="inputBox">
            <input type="text" placeholder="your name" />
            <input type="text" placeholder="your number" />
          </div>
          <textarea name="" placeholder="your message" id="" cols="30" rows="10"></textarea>
          <input type="submit" value="send message" class="btn" />
        </form>
      </div>
    </section>
    <!-- contact section ends -->

    <!-- footer section starts -->
    <section class="footer">
      <a href="#" class="logo">Med<span>Go</span></a>
      <p>
        The better way to get things done,Just Come It! To Buy Medicines.
      </p>
      <div class="socials">
        <a href="https://www.google.com"><ion-icon name="logo-google"></ion-icon></a>
        <a href="https://www.twitter.com"><ion-icon name="logo-twitter"></ion-icon></a>
        <a href="https://www.youtube.com"><ion-icon name="logo-youtube"></ion-icon></a>
        <a href="https://www.linkedin.com"><ion-icon name="logo-linkedin"></ion-icon></a>
      </div>
    </section>
    <!-- footer section ends -->

    <!-- ionicons cdn -->
   
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

  </body>
  <script type="text/javascript">
  const navbar = document.querySelector('.header .navbar');
  const menuButton = document.querySelector('.header .menu');

  menuButton.addEventListener('click', () => {
    navbar.classList.toggle('show');
    menuButton.classList.toggle('fa-close');
  });

  document.onscroll = () => {
    navbar.classList.remove('show');
    menuButton.classList.remove('fa-close');

    if (window.scrollY > 0) {
      document.querySelector('.header').classList.add('active');
    } else {
      document.querySelector('.header').classList.remove('active');
    }
  };

  document.onload = () => {
    if (window.scrollY > 0) {
      document.querySelector('.header').classList.add('active');
    } else {
      document.querySelector('.header').classList.remove('active');
    }
  };

  </script>
</html>