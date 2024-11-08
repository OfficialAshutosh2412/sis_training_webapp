﻿//preloader
var load = document.getElementById("preloader");
function loading() {
    load.style.display = "none"
};
//theme----------------------------------------------------------------------------------
//theme panel hidden
function ShowSwitcherPanel() {
    document.querySelector('.themes').classList.toggle('theme-hide');
   
}
function CloseThemePanel() {
    document.querySelector('.themes').classList.toggle('theme-hide');
}
//blue----------------------------------------------------------------------------------
function changingToBlueTheme() {
    localStorage.clear();
    document.querySelector(":root").style.cssText = '--hover-bg:#2b40a6;';
    //setting values
    localStorage.setItem('blue', this);
};
//keep blue
if (localStorage.getItem('blue')) {
    changingToBlueTheme();
}
//red----------------------------------------------------------------------------------
function changingToRedTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#ff1e47;';
    //storing in local storage
    localStorage.setItem('red', this);
};
//keep red
if (localStorage.getItem('red')) {
    changingToRedTheme();
}
//green----------------------------------------------------------------------------------
function changingToGreenTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#1da857;';
    //storing in local storage
    localStorage.setItem('green', this);
};
//keep green
if (localStorage.getItem('green')) {
    changingToGreenTheme();
}
//voilet----------------------------------------------------------------------------------
function changingToVoiletTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#581da1;';
    //storing in local storage
    localStorage.setItem('voilet', this);
};
//keep voilet
if (localStorage.getItem('voilet')) {
    changingToVoiletTheme()
}
//white----------------------------------------------------------------------------------
function changingToCyanTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#00b2bf;';
    //storing in local storage
    localStorage.setItem('Cyan', this);
};
//keep gray
if (localStorage.getItem('Cyan')) {
    changingToCyanTheme()
}
//pink----------------------------------------------------------------------------------
function changingToPinkTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#d44cbb;';
    //storing in local storage
    localStorage.setItem('Pink', this);
};
//keep Pink
if (localStorage.getItem('Pink')) {
    changingToPinkTheme()
}

//sky----------------------------------------------------------------------------------
function changingToSkyTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#246de3;';
    //storing in local storage
    localStorage.setItem('Sky', this);
};
//keep sky
if (localStorage.getItem('Sky')) {
    changingToSkyTheme()
}
//yellow----------------------------------------------------------------------------------
function changingToYellowTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#e0de53;';
    //storing in local storage
    localStorage.setItem('yellow', this);
};
//keep sky
if (localStorage.getItem('yellow')) {
    changingToYellowTheme()
}
//load more code--------------------------------------------------------------------------
let loadBtn = document.querySelector("#load-btn");
let loadmdiv = document.querySelector("#loadmorediv");
let currentItem = 4;

loadBtn.onclick = () => {
    let boxes = [...document.querySelectorAll('.course-item')];
    for (var i = currentItem; i < currentItem + 4; i++) {
        boxes[i].style.display = "inline-block";
    }
    currentItem += 4;
    if (currentItem >= boxes.length) {
        loadBtn.style.display = "none";
    }
}


