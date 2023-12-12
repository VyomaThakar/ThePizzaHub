<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Tourney:wght@300&display=swap');
        * {
          box-sizing: border-box;
          padding: 0;
          margin: 0;
          
        }

        main {
          display: -webkit-flex;
          position: relative;
          flex-direction: column;
          width: 100%;
          height: 100vh;
          margin-bottom:-100px;
        }

        .slides-container {
          position: relative;
          overflow: hidden;  
          display: -webkit-flex;
          flex: 1;
        }

        .slides-inner {
          position: relative;
          height: 100%;
          width: 100%;  
          overflow: hidden;
        }

        .slide {
          position: absolute;
          font-size: 90px;
          font-weight: 700;
          color: rgba(255,255,255,0.9);
          background-size:140%;
          display: -webkit-flex;
          -webkit-align-items: flex-end;
          -webkit-justify-content: center;
          height: 83%;
          width: calc(100% / 3);
          width: 50%;
        }

        .slide-1{
          background:url("images/home1.png");
          background-size:cover;
          background-position:center;
          background-repeat:no-repeat;
           background-size:70px;
         
        }
        .slide-2{
          background:url("images/home2.png");
          background-size:cover;
          background-position:center;
          background-repeat:no-repeat;
           background-size:70 px;
        }
        .slide-3{
          background:url("images/home3.png");
          background-size:cover;
          background-position:center;
          background-repeat:no-repeat;
           background-size:70px;
        }
        .slide-4{
          background:url("images/mainhome.png");
          background-size:cover;
          background-position:center;
          background-repeat:no-repeat;
          background-size:170px;
        }
        #progress-container{
          position: absolute;
          bottom: 0;
          left: 0;
          z-index: 1000;
          width:100%;
          background: rgba(255, 255, 255, 0.3);
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
</head>
<body>
<main>
  <div class="slides-container">
    <div class="slides-inner">
      <div class="slide slide-1"></div> 
      <div class="slide slide-2"></div>
      <div class="slide slide-3" ></div>
      <div class="slide slide-4" ></div>
      <div id="progress-container">
        <div id="progressBar"></div>
     </div>
    </div>
  </div>
</main>
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

   

</body>
</html>

</asp:Content>


