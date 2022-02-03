//Get the button:

// When the user scrolls down 20px from the top of the document, show the button


function scrollFunction() {
  mybutton = document.getElementById("myBtn");
  if (document.body.scrollTop > 210 || document.documentElement.scrollTop > 210) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}
window.onscroll = function() {scrollFunction()};

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
};
