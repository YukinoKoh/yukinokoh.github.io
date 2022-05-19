const folders = ['hello_nature','file_name' ];

function add_text() {
    const header_text = `

      `;
  
    const footer_text = `
      
      <div class="container clear">
        <div class="full m1 clear">
          <div class="mr-1">
            <p class="letter-footer">This website is set with Clarika Pro from
              <a class="footer" href="https://www.behance.net/wildxedge" target="_blank">Brandon Knap</a>
              and <a href="https://fonts.google.com/specimen/Lora?query=lora" target="_blank" class="footer">Lora</a>
              from <a class="footer" href="http://www.cyreal.org/" target="_blank">Cyreal Fonts</a>.
              This site tracks its stats with <a class="footer" href="https://marketingplatform.google.com/about/analytics/" target="_blank">Google Analytics</a>.</p>
          </div>
        </div>
      </div>`  
  
    // document.getElementById("headerNavi").innerHTML = header_text;
    document.getElementById("footerNavi").innerHTML = footer_text;
  }
  window.onload = add_text;
  