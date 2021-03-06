
<%-- 
    Document   : index
    Created on : 1-May-2016, 1:27:40 AM
    Author     : Ajiri Osauzo Jeffrey
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
<title>ChillOnline | Register</title>
<link rel="shortcut icon" type="image/png" href="chilli.png"/>
<meta charset="utf-8" /> 
<style type="text/css">
  @font-face {
    font-family: 'Pacifico'; /*a name to be used later*/
    src: url('Pacifico.ttf'); /*URL to font*/
  }

  header
  {
    background-color: #FFF;
    background: -webkit-gradient(linear, left top, left bottom, from(#000), to(#bababa));
   background: -webkit-linear-gradient(top, #000, #bababa);
   background: -moz-linear-gradient(top, #000, #bababa);
   background: -ms-linear-gradient(top, #000, #bababa);
   background: -o-linear-gradient(top, #000, #bababa);
    margin-left: 0;
    margin-right: 0;
    margin-top: 0;
    height: 50px;
    color: #000;
    opacity: 0.7;
    box-shadow: 0px 2px 5px #AAA;
    text-indent: 30px;
  }
  
  .head
  {
      width: 90%;
      height: 50px;
      margin-left: auto;
      margin-right: auto;
      margin-top: 0;
  }
  
  body
  {
    margin: 0;
    background-color: #EEE;
    font-family: sans-serif;
  }
  
  nav ul
  {
    list-style-type: none;
    overflow: auto;
    margin-right: 0;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: 0;
  }

  nav ul li
  {
    float: right;
  }

  nav ul li a:link, nav ul li a:visited
  {
    display: block;
    background-color: #fff;
    background: -webkit-gradient(linear, left top, left bottom, from(#000), to(#bababa));
    background: -webkit-linear-gradient(top, #000, #bababa);
    background: -moz-linear-gradient(top, #000, #bababa);
    background: -ms-linear-gradient(top, #000, #bababa);
    background: -o-linear-gradient(top, #000, #bababa);
    opacity: 0.8;
    text-align: right;
    padding-top: 18px;
    padding-bottom: 18px;
    padding-left: 20px;
    padding-right: 20px;
    text-decoration: none;
    color: #fff;
    font-family: /*"Josefin Slab", Arial, Helvetica, Pacifico, Rockwell,*/ sans-serif;
    font-size: 12px;
  }

  nav ul li a:hover, nav ul li a:active
  {
    color: #e63;
    opacity: 1.0;
  }
  
  .chillonline
  {
      font-family: sans-serif, 'Pacifico';
      font-size: 17px;
      color: #fff;
      text-decoration: none;
      float: left;
  }
      
  .sept
  {
    background-color: #FFF;
    margin-right: 0;
    margin-top: 0;
    margin-left: 500px;
    height: 505px;
    color: #000;
    opacity: 0.7;
    box-shadow: 0px 2px 5px #AAA;
  }
  
  .sept2
  {
    background-color: #EEE;
    margin-right: 0;
    margin-top: 0;
    margin-left: 450px;
    height: 500px;
    color: #000;
  }
  
  nav
  
  {
      
    margin-right: 0px;
    float: right;
      
  }
  
  footer
  {
    background-color: #FFF;
    margin-left: 0;
    margin-right: 0;
    margin-bottom: 0;
    height: 300px;
    box-shadow: 0px 2px 5px #AAA;
    opacity: 0.7;
    margin-top: -200px;
    font-size: 12px;
  }
  
  .logos
  {
      background-color: #333;
      margin-left: 10px;
      margin-right: 10px;
      height: 200px;
      box-shadow: 0px 2px 5px #AAA;
      opacity: 0.8;
      margin-top: -500px;
  }
  
  #logos
  {
      height: 50%;
      opacity: 1.0;
  }
  
  .button {
   border-top: 1px solid #d4003c;
   background: #780000;
   background: -webkit-gradient(linear, left top, left bottom, from(#b00000), to(#780000));
   background: -webkit-linear-gradient(top, #b00000, #780000);
   background: -moz-linear-gradient(top, #b00000, #780000);
   background: -ms-linear-gradient(top, #b00000, #780000);
   background: -o-linear-gradient(top, #b00000, #780000);
   padding: 7.5px 25px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 17px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border-top-color: #c90000;
   background: #c90000;
   color: #f2efef;
   }
.button:active {
   border-top-color: #a30a11;
   background: #a30a11;
   }
   
   .button2 {
   border-top: 1px solid #55b506;
   background: #2a4d02;
   background: -webkit-gradient(linear, left top, left bottom, from(#539c00), to(#2a4d02));
   background: -webkit-linear-gradient(top, #539c00, #2a4d02);
   background: -moz-linear-gradient(top, #539c00, #2a4d02);
   background: -ms-linear-gradient(top, #539c00, #2a4d02);
   background: -o-linear-gradient(top, #539c00, #2a4d02);
   padding: 7.5px 25px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 17px;
   font-family: Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   margin-right: 0px;
   margin-top: 5px;
   }
.button2:hover {
   border-top-color: #2c7d04;
   background: #2c7d04;
   color: #f2efef;
   }
.button2:active {
   border-top-color: #a30a11;
   background: #a30a11;
   }
  
  .rimground
  {
    width: 100px;
    height: 150px;
    opacity: 1.0;
    margin-top: 5px;
    margin-bottom: 5px;
    margin-left: 5px;
    margin-right: 5px;
    float: left;
    text-align: center;
    color: #FFF;
    font-family: sans-serif;
    font-size: 10px;
  }
    
  .bol
  {
      float: left;
      margin-top: 10px;
      margin-left: 0px;
      width: 150px;
  }
  
  #container
  {
      background-color: #fff;
      margin-left: auto;
      margin-right: auto;
      margin-top: 70px;
      width: 90%;
      height: 500px;
  }

.moviediv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

.seriediv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

.musicdiv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

.gamediv
{
    margin: 25px auto 25px auto;
    height: 300px;
    background-color: #e63;
}

  .divers
  {
      margin-left: 0;
      margin-right: 0;
      margin-top: 0;
      height: 500px;
  }
  
  .right
  {
      margin-left: 0;
      margin-top: 0px;
      height: 500px;
      width: 450px;
      background-color: #e63;
      float: left;
  }
  
  .createaccount
  {
      color: #FFF;
      width: 400px;
      margin-left: auto;
      margin-right: auto;
      text-align: center;
  }
  
  .titles
  {
      width: 410px;
      height: 300px;
      margin-top: 20px;
      margin-left: 65px;
  }
  
  .names
  {
    width: 300px;
    height: 30px;
    padding: 4px;
    margin: 5px 100px 5px auto;
    border-radius: 10px;
    font-size: 15px;
  }
  
  .boxes
  {
      width: 200px;
      height: 300px;
      margin-top: 20px;
      margin-left: 20px;
      background-color: #e45;
  }

.copyright
{
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    width: 1000px;
}

.click-agreement
{
    color: #fff;
    font-size: 9px;
}

.footnotes
{
    float: left;
    font-size: 12px;
    height: 230px;
    width: 200px;
    text-align: left;
}

.notes
{
    text-decoration: none;
    color: #000;
}

.notes:hover
{
    color: #e63;
}
  
  #epic
  {
      margin-left: 0px;
  }
  
  
</style>

<script type="text/javascript">
  

  
</script>

</head>

<body>
  
  <header>
      
    
      <div class="head">
        
          <a href="index.jsp"><img class="bol" src="chillon.png" alt="bol"></a>
        
            <nav>
                
                <ul>
                    <li><a href="users/index.jsp" >Portal</a></li>
                    <li><a href="games/index.jsp">Games</a></li>
                    <li><a href="music/index.jsp" >Sounds</a></li>
                    <li><a href="music/index.jsp" >Videos</a></li>
                    <li><a href="movies/index.jsp" >Movies</a></li>
                    <li><a href="series/index.jsp" >Series</a></li>
                    <li><a href="channels/index.jsp">Channels</a></li>
                </ul>
                    
            </nav>
        
      </div>
    
  </header>
    
    <div class="divers">
    <div class="right">
        <div class="createaccount"><h2>Register.</h2></div>
        <form action="" method="post">
            <div class="titles">
                <input type="text" class="names" id="first_name" placeholder="First Name*">
            <input type="text" class="names" id="last_name" placeholder="Last Name*">
           <input type="text" class="names" id="middle_name" placeholder="Middle Name">
            <input type="email" class="names" id="email_address" placeholder="Email Address*">
            <input type="password" class="names" id="password" placeholder="Signature*">
            <p class="click-agreement">A client's unique signature must be 8 - 12 characters in length with at least <br>one uppercase letter, one lowercase letter, and one special-case character.</p>
            Male<input type="radio" id="gender" name="gender" value="male">Female<input type="radio" id="gender" name="gender" value="female">
            <p class="click-agreement"> By clicking "Register", you agree to our <a class="click-agreement" href="">terms of service</a> and <a class="click-agreement" href="">privacy policy</a>.</p>
            
            <button class="button2"><a href="users/login.jsp" class="chillonline">Register</a></button>
            
            </div>
            
            
        </form>
    </div>
    <div class="sept2">
        
        <img src="image5.jpg" alt="epic" id="epic" height="500">
        
    </div>
        
        <script type="text/javascript">
  
            var roller = document.getElementById("epic");
            var picArray = ["image1.jpg", "image2.jpg", "image3.jpg", "image4.jpg", "image5.jpg"];
            var index = 0;
            
            function slidePic()
            
            {
                roller.setAttribute("src", picArray[index]);
                index++;
                
                if (index == picArray.length)
                    
                    {
                        index = 0;
                    }
                    
            }
            
            setInterval(slidePic, 3000);
  
        </script>
        
    </div>
    
    <%!
            public class User 
{
    String URL = "jdbc:mysql://localhost:3306/chillonline";
    String USERNAME = "root";
    String PASSWORD = "Empire7";
    Connection connection = null;
    PreparedStatement insertUsers = null;
    ResultSet resultSet = null;

    public User()
    {
        try
        {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            insertUsers = connection.prepareStatement("INSERT INTO users (first_name, last_name, middle_name, email_address, password2, gender)" + " VALUES (?, ?, ?)");
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public int setUsers(String firstname, String lastname, String middlename, String email, String password, String gender, Timestamp timeStamp)
    {
        int result = 0;

        try
        {
            insertUsers.setString(1, firstname);
            insertUsers.setString(2, lastname);
            insertUsers.setTimestamp(3, timeStamp);
            result = insertUsers.executeUpdate();
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }


        return result;

    }

}
            
        %>
        
        <%
            int result = 0;
            String firstname = new String();
            String lastname = new String();
            String middlename = new String();
            String email = new String();
            String password = new String();
            String gender = new String();
            
            if (request.getParameter("firstname") != null)
            {
                firstname = request.getParameter("firstname");
            }
            
            if (request.getParameter("lastname") != null)
            {
                lastname = request.getParameter("lastname");
            }
            
            if (request.getParameter("middlename") != null)
            {
                lastname = request.getParameter("middlename");
            }
            
            if (request.getParameter("email") != null)
            {
                lastname = request.getParameter("email");
            }
            
            if (request.getParameter("password") != null)
            {
                lastname = request.getParameter("password");
            }
            
            if (request.getParameter("gender") != null)
            {
                lastname = request.getParameter("gender");
            }
            
            Date date = new Date();
            Timestamp timeStamp = new Timestamp(date.getTime());
            
            User user = new User();
            result = user.setUsers(firstname, lastname, middlename, email, password, gender, timeStamp);

            %>
  
  
    <div id="container">
        <div class="copyright"><h2><br>Watch TV and play series, movies, music, videos, and games with other clients.</h2>
        <button class="button2">View Plans</button></div>
        <div class="seriediv"></div>
    </div>
  
  
  
  
  <img src="minion.png" alt="minion" id="minion">
  
  <footer>
    
      
    <div class="copyright">
        
        <div class="footnotes"><h4>Users</h4>
          <a class="notes" href=""><p>Channels</p></a>
          <a class="notes" href=""><p>Series</p></a>
          <a class="notes" href=""><p>Movies</p></a>
          <a class="notes" href=""><p>Videos</p></a>
          <a class="notes" href=""><p>Music</p></a>
          <a class="notes" href=""><p>Games</p></a>
        </div>
      <div class="footnotes"><h4>Distributors</h4>
          <a class="notes" href=""><p>Channels</p></a>
          <a class="notes" href=""><p>Series</p></a>
          <a class="notes" href=""><p>Movies</p></a>
          <a class="notes" href=""><p>Videos</p></a>
          <a class="notes" href=""><p>Music</p></a>
          <a class="notes" href=""><p>Games</p></a>
      </div>
      <div class="footnotes"><h4>Legal</h4>
          <a class="notes" href=""><p>Terms of Use</p></a>
          <a class="notes" href=""><p>Privacy Policy</p></a>
          <a class="notes" href=""><p>Cookie Policy</p></a>
          <a class="notes" href=""><p>Warranties</p></a>
          <a class="notes" href=""><p>Licenses</p></a>
      </div>
      <div class="footnotes"><h4>About</h4>
          <a class="notes" href=""><p>Founder</p></a>
          <a class="notes" href=""><p>Investors</p></a>
          <a class="notes" href=""><p>Mission</p></a>
          <a class="notes" href=""><p>Vendors</p></a>
      </div>
      <div class="footnotes"><h4>Contact</h4>
          <a class="notes" href=""><p>Head Office</p></a>
          <a class="notes" href=""><p>Jobs</p></a>
          <a class="notes" href=""><p>Phone</p></a>
          <a class="notes" href=""><p>Email</p></a>
      </div>
        <hr>
        <p>&copy; 2016 Chill Technologies Inc. All Rights Reserved.</p></div>
    
    
  </footer>

</body>
</html>
