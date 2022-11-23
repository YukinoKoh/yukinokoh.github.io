var Animation = function() {
    if(scrollY >650){
        const title= document.getElementById('title-simeji').classList.add('show');}
    if(scrollY <630){
        const title= document.getElementById('title-simeji').classList.remove('show');}
    if(scrollY >3400 ){
        const title= document.getElementById('title-natural-light').classList.add('show');}
    if(scrollY <3370 ){
        const title= document.getElementById('title-natural-light').classList.remove('show');}
    if(scrollY >5700){
        const title= document.getElementById('title-hex').classList.add('show');}
    if(scrollY <5670){
        const title= document.getElementById('title-hex').classList.remove('show');}
}
window.addEventListener('scroll', Animation);