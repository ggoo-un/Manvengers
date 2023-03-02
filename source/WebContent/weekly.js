var imgtag;
var atag;

function init() {
    atag = document.getElementsByClassName("a1")
    imgtag = document.getElementsByClassName("img2")
    atag[0].addEventListener("mouseover", over1)

    // for (var i = 0; i < atag.length; i++) {
    //     var a = a[i]
    //     a[i].onmouseover = over1;

    // }
}

function over1() {
    imgtag[0].src = "image/top_2.jpg"
}