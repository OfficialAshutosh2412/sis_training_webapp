//preloader
var load = document.getElementById("preloader");
function loading() {
    load.style.display = "none"
};
//theme-------------------------------------------------------------
//theme panel hidden
function ShowSwitcherPanel() {
    document.querySelector('.themes').classList.toggle('theme-hide');
    //auto hide theme panel
    setTimeout(() => {
        document.querySelector('.themes').classList.toggle('theme-hide');
    }, 2500);
}
//blue
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
//red
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
//green
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
//voilet
function changingToVoiletTheme() {
    localStorage.clear();
    //getting values
    document.querySelector(":root").style.cssText = '--hover-bg:#581da1;';
    //storing in local storage
    localStorage.setItem('voilet', this);
};
//keep green
if (localStorage.getItem('voilet')) {
    changingToVoiletTheme()
}


