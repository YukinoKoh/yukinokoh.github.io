var CACHE_NAME = 'cache-v2';
var urlsToCache = [
  '/',
  '/index.html',
  '/js/main.js',
  '/css/style.css',
  '/img/0_logo.svg',
  '/img/hello_xl_1x.jpg',
  '/img/hello_xl_2x.jpg',
  '/img/hello_s_1x.jpg',
  '/img/hello_s_2x.jpg',
  '/img/hello_m_1x.jpg',
  '/img/hello_m_2x.jpg',
  '/img/font-distance_s_1x.jpg',
  '/img/font-distance_s_2x.jpg',
  '/img/font-distance_m_1x.jpg',
  '/img/font-distance_m_2x.jpg',
  '/img/font-distance_l_1x.jpg',
  '/img/font-distance_l_2x.jpg',
  '/img/processing_s_1x.jpg',
  '/img/processing_s_2x.jpg',
  '/img/processing_m_1x.jpg',
  '/img/processing_m_2x.jpg',
  '/img/processing_l_1x.jpg',
  '/img/processing_l_2x.jpg',
  '/img/framer-rest_m_1x.jpg',
  '/img/framer-rest_m_2x.jpg',
  '/img/framer-rest_l_1x.jpg',
  '/img/framer-rest_l_2x.jpg',
  '/img/framer-rest_s_1x.jpg',
  '/img/framer-rest_ms_2x.jpg',
  '/img/fit_s_1x.jpg',
  '/img/fit_s_2x.jpg',
  '/img/fit_m_1x.jpg',
  '/img/fit_m_2x.jpg',
  '/img/fit_l_1x.jpg',
  '/img/fit_l_2x.jpg',
  '/img/jmap_s_1x.jpg',
  '/img/jmap_s_2x.jpg',
  '/img/jmap_m_1x.jpg',
  '/img/jmap_m_2x.jpg',
  '/img/jmap_l_1x.jpg',
  '/img/jmap_l_2x.jpg',
  '/img/rot13_s_1x.jpg',
  '/img/rot13_s_2x.jpg',
  '/img/rot13_m_1x.jpg',
  '/img/rot13_m_2x.jpg',
  '/img/rot13_l_1x.jpg',
  '/img/rot13_l_2x.jpg',
  '/img/blog-templates_s_1x.jpg',
  '/img/blog-templates_s_2x.jpg',
  '/img/blog-templates_m_1x.jpg',
  '/img/blog-templates_m_2x.jpg',
  '/img/blog-templates_l_1x.jpg',
  '/img/blog-templates_l_2x.jpg',
  '/img/python_trailer_s_1x.jpg',
  '/img/python_trailer_s_2x.jpg',
  '/img/python_trailer_m_1x.jpg',
  '/img/python_trailer_m_2x.jpg',
  '/img/python_trailer_l_1x.jpg',
  '/img/python_trailer_l_2x.jpg',
  '/img/property_m_s_1x.jpg',
  '/img/property_m_s_2x.jpg',
  '/img/property_m_m_1x.jpg',
  '/img/property_m_m_2x.jpg',
  '/img/property_m_l_1x.jpg',
  '/img/property_m_l_2x.jpg',
  '/img/urban_s_1x.jpg',
  '/img/urban_s_2x.jpg',
  '/img/urban_m_1x.jpg',
  '/img/urban_m_2x.jpg',
  '/img/urban_l_1x.jpg',
  '/img/urban_l_2x.jpg'
];


//caches.open() を使用してキャッシュを開き命名。(バージョン管理のため） 
self.addEventListener('install', function(event) {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(function(cache) {
        return cache.addAll(urlsToCache);
    })
  );
});

//  cache v check to acquire the latest ver.
self.addEventListener('activate', function(e) {
  console.log('[ServiceWorker] Activate');
  e.waitUntil(
    // caches.keys() returns array of cache keys
    caches.keys().then(function(keyList) {
      return Promise.all(keyList.map(function(key) {
        console.log('[ServiceWorker] Removing old cache', key);
        if (key !== CACHE_NAME) {
          return caches.delete(key);
        }
      }));
    })
  );
});

// キャッシュから配信
self.addEventListener('fetch', function(event) {
  // URL の先頭が Weather API のアドレスかどうかを 確認
  var dataUrl = 'https://yukinokoh.github.io/';
  if (event.request.url.indexOf(dataUrl) === 0) {
    event.respondWith(
      caches.match(event.request)
        .then(function(response) {
          if (response){
            return response;
          }
          let responseToCache = response.clone();
            caches.open(CACHE_NAME)
              .then((cache) => {
                cache.put(event.request, responseToCache);
              });
          return fetch(event.request);
        })
      );
  } else {
    event.respondWith(
      caches.match(event.request).then(function(response) {
        return response || fetch(event.request);
      })
    );
  }
});
