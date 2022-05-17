const folders = ['hello_nature','file_name' ];

function add_text() {
    const header_text = 
      `
      <div class="container">
        <div class="s-full l-col4">
          <a href="../../index.html"><h3>Yukino Kohmoto</h3></a>
        </div>
        <div class="s-full l-col2 m0">
          <a href="../../observe.html" class="sub">Observe</a>
        </div>
        <div class="s-full l-col2 m0">
          <a href="../../imagine.html" class="sub">Imagine</a>
        </div>
        <div class="s-full l-col2 m0">
          <a href="../../visualize.html" class="sub">Visualize</a>
        </div>
        <div class="s-full l-col2 m0">
          <a href="../index.html" class="sub">Letter</a>
        </div>
      </div>
      `;
  
    const footer_text = `
      
      <div class="container clear">
        <div class="full m1">
          <a href="../../index.html"><h3>Yukino Kohmoto</h3></a>
        </div>
        <div class="s-full l-col6">
          <ul class="no-bullet">
            <li><a href="../../observe.html">Observe</a></li>
            <li><a href="../../imagine.html">Imagine</a></li>
            <li><a href="../../visualize.html">Visualize</a></li>
            <li><a href="../index.html">Letter</a></li>
          </ul>
        </div>
        <div class="s-full l-col4-r">
            <ul class="no-bullet">
              <li><a href="mailto:yukinokohmoto@gmail.com" target="_blank">Email</a></li>
              <li><a href="https://www.linkedin.com/in/yukino-komoto-a7345a19/" target="_blank">linkedIn</a></li>
              <li><a href="https://www.instagram.com/yukinokoh/" target="_blank">Instagram</a></li>
            </ul>
        </div>
        <div class="full m1 clear">
          <div class="mr-1">
            <p class="sub">This website is set with Clarika Pro from
              <a class="footer" href="https://www.behance.net/wildxedge" target="_blank">Brandon Knap</a>
              and <a href="https://fonts.google.com/specimen/Lora?query=lora" target="_blank" class="footer">Lora</a>
              from <a class="footer" href="http://www.cyreal.org/" target="_blank">Cyreal Fonts</a>.
              This site tracks its stats with <a class="footer" href="https://marketingplatform.google.com/about/analytics/" target="_blank">Google Analytics</a>.</p>
          </div>
        </div>`  
  
    document.getElementById("headerNavi").innerHTML = header_text;
    document.getElementById("footerNavi").innerHTML = footer_text;
  }
  window.onload = add_text;
  