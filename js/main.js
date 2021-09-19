function intro_add() {
  let intro_text = `
  <h2>Nice to meet you! I'm Yukino. I learnt drawing, which to me is a way to see the world with careful attention.
  <br /><br />
  Currently, I work as a product manager after creating base UX for the product at
  <a href="https://home.kpmg/jp/en/home/about/kit.html" target="_blank">KPMG Ignition Tokyo</a>.
  Beside the work, I take time as NPO <a href="http://hexagonux.com/tokyo" target="_blank">Haxagon UX</a> organizer to support womxn & non-binary folx in UX.
  <br /><br />
  Previously I worked at <a href="https://www.baidu.com/" target="_blank">Baidu., Inc</a>,
  where I designed IME to help over 17 million users enjoy communication in more unique ways.
  </h2>
  <div class="s-full l-col6">
    <h4>Talks</h4>
    <ul class="n-b">
      <li><span class="label">2020 </span><a href="https://interactiondesignday.org/twentytwenty/events/" target="_blank">IxDD 2020 </a></li>
      <li><span class="label">2017 </span>UX Talk Tokyo</li>
      <li><span class="label">2017 </span><a href="https://www.codechrysalis.io/" target="_blank">Code Chrysalis</a></li>
      <li><span class="label">2016 </span>UX Talk Tokyo</li>
      <li><span class="label">2014 </span><a href="https://abc.android-group.jp/2014w/conference/design/">Japan Android Group 2014</a></li>
    </ul>
  </div>`;

  document.getElementById("intro_text").innerHTML = intro_text;
  document.getElementById("intro_add").style.display= "none";
}
