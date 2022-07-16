const folders = ['yamato_uta'];

function dom_index_card(file_name){
  file_name_title = file_name.charAt(0).toUpperCase()+file_name.slice(1).replace('_', ' ').replace('_', ' ');
  return file_name_title;

}

function add_text() {
  const header_text = `
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
      `  

    // document.getElementById("header").innerHTML = header_text;
    document.getElementById("letters").innerHTML = letter_text;
    // document.getElementById("footer").innerHTML = footer_text;
  }
  window.onload = add_text;
  