const folders = ['yamato_uta'];

function dom_index_card(file_name){
  file_name_title = file_name.charAt(0).toUpperCase()+file_name.slice(1).replace('_', ' ').replace('_', ' ');
  return file_name_title;

}

function add_text() {
  const header_text = `
    <div class="container clear">
      <div class="full m1">
        <a href="../index.html"><h3>Tempi</h3></a>
      </div>
    </div>
  `

  let letter_text = '';
  for (let i = 0; i < folders.length; i++) {
    letter_text += `
    <div class="letter-container">
      <a href="${folders[i]}/index.html">
        <div class="letter-frame">
          <img src="${folders[i]}/img/thumb.svg" alt="File name" class="letter-thumb"/>
        </div>
        <p class="letter-link sub">>> ${dom_index_card(folders[i])}</p>
      </a>
    </div>`;
  }

  const footer_text = `
      <div class="container clear">        
        <div class="full m1 clear">
          <div class="mr-1">
            <p class="sub">This website is set with Clarika Pro from
              <a class="footer" href="https://www.behance.net/wildxedge" target="_blank">Brandon Knap</a>
              and <a href="https://fonts.google.com/specimen/Lora?query=lora" target="_blank" class="footer">Lora</a>
              from <a class="footer" href="http://www.cyreal.org/" target="_blank">Cyreal Fonts</a>.
              This site tracks its stats with <a class="footer" href="https://marketingplatform.google.com/about/analytics/" target="_blank">Google Analytics</a>.</p>
          </div>
        </div>`  

    document.getElementById("header").innerHTML = header_text;
    document.getElementById("letters").innerHTML = letter_text;
    document.getElementById("footer").innerHTML = footer_text;
  }
  window.onload = add_text;
  