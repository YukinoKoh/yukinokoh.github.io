function add_text() {
  const header_text = `
    `;

  const footer_text = `
    <section class="container clear">
      <div class="mr-1">
        <div class="s-intro l-intro">
          <h4>Thank you for taking the time to look through my site. Please feel free to send me feedback or get in touch.</h4>
        </div>
      </div>
    </section>
    <div class="container clear">
      <div class="s-full l-full">
        <a href="index.html"><h3>Yukino Kohmoto</h3></a>
      </div>
      <div class="s-full l-col6">
        <ul class="n-b-p">
          <li><a href="observe.html">Observe</a></li>
          <li><a href="imagine.html">Imagine</a></li>
          <li><a href="visualize.html">Visualize</a></li>
        </ul>
      </div>
        <div class="s-full l-col6-r">
          <ul class="n-b-p">
            <li><span class="label">Email</span>
              <a href="mailto:yukinokohmoto@gmail.com" target="_blank">yukino.kohmoto@gmail.com</a></li>
            <li><span class="label">LinkedIn</span>
              <a href="https://www.linkedin.com/in/yukino-komoto-a7345a19/" target="_blank">/yukino-komoto-a7345a19</a></li>
            <li><span class="label">Instagram</span>
              <a href="https://www.instagram.com/yukinokoh/" target="_blank">/yukinokoh</a></li>
            <li><span class="label">GitHub</span>
              <a href="https://github.com/YukinoKoh" target="_blank">/YukinoKoh</a></li>
          </ul>
        </div>
      </div>
      <div class="container clear">
        <div class="mr-1">
          <p class="sub">This website is set with Clarika Pro from
            <a class="footer" href="https://www.behance.net/wildxedge" target="_blank">Brandon Knap</a>
            and <a href="https://fonts.google.com/specimen/Lora?query=lora" target="_blank" class="footer">Lora</a>
            from <a class="footer" href="http://www.cyreal.org/" target="_blank">Cyreal Fonts</a>.
            This site tracks its stats with <a class="footer" href="https://marketingplatform.google.com/about/analytics/" target="_blank">Google Analytics</a>.</p>
        </div>
      </div>`  

  // <document.getElementById("headerNavi").innerHTML = header_text;
  document.getElementById("footerNavi").innerHTML = footer_text;
}
window.onload = add_text;
