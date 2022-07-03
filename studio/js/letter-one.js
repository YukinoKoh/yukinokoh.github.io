function add_text() {
    const header_text = `
      <div class="container clear">
        <div class="full m1">
          <a href="../index.html"><h3>Studio Around</h3></a>
        </div>
      </div>
      `;
  
    const footer_text = `
      This site tracks its stats with <a class="footer" href="https://marketingplatform.google.com/about/analytics/" target="_blank">Google Analytics</a>.
       <a class="footer" href="https://www.yukinokohmoto.com">@Yukino Kohmoto</a>
      `  
  
    document.getElementById("header").innerHTML = header_text;
    document.getElementById("footer-note").innerHTML = footer_text;
  }
  window.onload = add_text;
  