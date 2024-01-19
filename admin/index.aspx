<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_De" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index</title>
    <style>
        body {
        
       overflow-x: hidden;
    }
    }
        .section {
        padding: 90px 15% 80px;
    }
    .home {
        height: 88vh;
        width: 100%;
        position: relative;
        display: grid;
        flex-align:center;
        column-gap: 2rem;
        margin-left: 100px;
        margin-top: 50px;
    }
    .home-img img {
        width: 600px;
        height: 500px;
        float: right;
        margin-right: 50px;
    }
   .home-text h1 {
        font-size: 50px;
        line-height: 1.2;
        margin-bottom: 2rem;
    }
    .home-text p {
        font-size: medium;
        font-weight: 500;
        line-height: 32px;
        margin-bottom:2.3rem;
    }
    .btn {
        display: inline-block;
        padding: 14px 26px;
        background: red;
        color: white;
        font-size: 15px;
        font-weight: 600;
        border-radius: 5rem;
        transition: all .40s ease;
        text-decoration: none;
    }
        .btn:hover {
            letter-spacing: 1px;
            color: red;
            background: white;
            border: 2px solid red;
        }
.head{
    font-size: 20px;
    position: absolute;
    z-index: 2;  
    width: 600px;
    height: 400px;
    animation-name: head;
    animation-duration: 2.3s;
    animation-fill-mode: forwards;
}
@keyframes head{
    from{left: -20%;}
    to{left: 3%;}
}

    .i {
        position: absolute;
        animation-name: i;
    animation-duration: 2.3s;
    animation-fill-mode: forwards;
    }
    @keyframes i{
    from{right: -30%;}
    to{right: 3%;}
}

.img1
{
	margin: -90px 0px 0px 0px;
	height: 500px;
	float: left;
	width: 600px;
}

.ingre
{
   
	font-size: 35px;
	margin-top: -450px;
	flex-wrap: wrap;
    margin-left: 750px;
}

.ingrecon
{
	font-size: 20px;
	margin: -360px 0px 0px 750px;
	flex-wrap: wrap;
}

.ingrebtn
{
	background-color: palegreen;
	padding: 10px 40px 10px 40px;
	margin: 50px 0px 0px 0px;
	cursor: pointer;
	color:black;
	float: left;
	flex-wrap: wrap;
	font-family: Cambria Math;
	text-decoration: none;
}

.ingrebtn:hover
{
	background-color: white;
	color: black;
	border: 1px solid lightgreen;
	transition: 0.5s;
	cursor: pointer;
}


    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
</head>
<body>

<script>
    console.clear();

    //SLIDES
    var slideDelay = 5;
    var slideDuration = 1.5;

    var slides = document.querySelectorAll(".slide");

    var numSlides = slides.length;

    for (var i = 0; i < numSlides; i++) {
        gsap.set(slides[i], {
            xPercent: i * 100
        });
    }

    var timer = gsap.delayedCall(slideDelay, autoPlay);

    var animation = gsap.to(slides, {
        duration: 1,
        xPercent: "+=" + (numSlides * 100),
        ease: "none",
        paused: true,
        repeat: -1,
        modifiers: {
            xPercent: gsap.utils.wrap(-100, (numSlides - 1) * 100)
        }
    });

    var proxy = document.createElement("div");
    gsap.set(proxy, { x: 0 });
    var slideAnimation = gsap.to({}, { duration: 0.1 });
    var slideWidth = 0;
    var wrapWidth = 0;
    resize();

    window.addEventListener("resize", resize);

    function animateSlides(direction) {
        timer.restart(true);
        slideAnimation.kill();

        var x = gsap.getProperty(proxy, "x") + direction * slideWidth;

        slideAnimation = gsap.to(proxy, {
            duration: slideDuration,
            x: x,
            onUpdate: updateProgress
        });
    }

    function autoPlay() {
        animateSlides(-1);
    }

    function updateProgress() {
        animation.progress(gsap.utils.wrap(0, 1, gsap.getProperty(proxy, "x") / wrapWidth));
    }

    function resize() {
        var norm = (gsap.getProperty(proxy, "x") / wrapWidth) || 0;

        slideWidth = slides[0].offsetWidth;
        wrapWidth = slideWidth * numSlides;

        gsap.set(proxy, {
            x: norm * wrapWidth
        });

        animateSlides(0);
        slideAnimation.progress(1);
    }

    //PROGRESS BAR
    var progressBar = "#progressBar";
    var progressAnimation = gsap.timeline({
        paused: true,
        delay: 1.5,
        repeat: -1
    });

    progressAnimation.to(progressBar, {
        width: '100%',
        ease: 'none',
        duration: 3.5
    });
    progressAnimation.to(progressBar, {
        opacity: 0,
        ease: 'none',
        duration: 1.5
    });

    progressAnimation.play();

    //BACKGROUND
    var bg = ".slide";
    var bgAnimation = gsap.timeline({
        paused: true,
        delay: 5.5,
        repeat: -1,
        repeatDelay: 4
    });

    bgAnimation
    .set(bg, {
        backgroundSize: '140%'
    })
    .to(bg, {
        backgroundSize: '-=10%',
        ease: 'none',
        duration: 1
    });

    bgAnimation.play();
</script>

     <section class="home">
     <div class="head">
     <div class="home-text">
         <h1 ><span><font color="red">Welcome Admin</font></span><br /><h2>to The world of Tasty & Fresh Pizza</h2></h1>
         <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br /> Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn"> Choose a Pizza</asp:LinkButton>
     </div>
         </div>     
     <div class="home-img">
         <a href="menu.aspx">
         <img class="i" src="../images/2.png"/></a>
     </div>
    
 </section>
<section class="home">
        
        <img src="../images/3_i.png" class="img1">
        
        <h1 class="ingre">We Pride Ourselves On <br>Making Real Food From The<br> Best Ingredients.</h1>
        <p class="ingrecon">Health concerns continue to increase globally and <br />consumersare looking to change their diet for more <br />natural and nutrient-rich food and beverages. </p>
        
   
    
 </section>
</body>
</html>
</asp:Content>

