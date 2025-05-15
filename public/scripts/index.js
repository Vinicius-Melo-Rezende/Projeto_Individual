var header = document.querySelector('header');

function SaiuTopo(){
    var alturaJanela = window.scrollY > 0;
    if(alturaJanela){
        header.style.backgroundColor = '#000';
    }
    else{
        header.style.backgroundColor = 'transparent';
    }
}

addEventListener('scroll', SaiuTopo)
