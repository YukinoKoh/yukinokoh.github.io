var CACHE_NAME = 'cache-v1';
var urlsToCache = [
  '/',
  '/index.html',
  '/js/main.js',
  '/css/style.css',
  '/img/0_logo.svg',
  '/img/hello_xl_1x.jpg',
  '/img/font-distance_m_1x.jpg',
  '/img/processing_m_1x.jpg',
  '/img/framer-rest_m_1x.jpg',
  '/img/fit_m_1x.jpg',
  '/img/jmap_m_1x.jpg',
  '/img/rot13_m_1x.jpg',
  '/img/blog-templates_m_1x.jpg',
  '/img/python_trailer_m_1x.jpg',
  '/img/property_m_m_1x.jpg',
  '/img/urban_m_1x.jpg'
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
