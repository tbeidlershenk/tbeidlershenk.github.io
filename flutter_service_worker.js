'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "493757defcfefaf370ef90ea0954c227",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "e4f3b4482b0fc66ac0da66debfd27e5e",
"version.json": "03acefc4795e8573b194262cd3a4419f",
"index.html": "d9710325662364742f26fc4c6d9edfce",
"/": "d9710325662364742f26fc4c6d9edfce",
"main.dart.js": "332b2fdebebf7607b55fe98999f649ec",
"assets/AssetManifest.json": "589fe313b1f57b1eaa5121b70b2cddcc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b93248a553f9e8bc17f1065929d5934b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "583dcb51de83c0ea83ba5e59267fd2a1",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/headshot_basic.jpg": "0db307981cf262fb6fb7c35d551e810b",
"assets/assets/images/logo-light.png": "4701b1a70cfcd074aafebf6102b937cb",
"assets/assets/images/innovativesystems.webp": "2aa93546fc647237fdb2f3b569fcdfeb",
"assets/assets/images/headshot.jpg": "47029ac36ac58ef4c43b5dc2fc9ae0e2",
"assets/assets/images/webstaurantstore.png": "0ae8e5dd9fe8232de72739810eb25022",
"assets/assets/images/background.jpg": "6c79e1a72707945f6b3f7f21d8f71b6a",
"assets/assets/images/altoona.jpg": "3aa4c226158c0d85d82742f4c1bc07b9",
"assets/assets/images/steelhacks.JPG": "8990d8397a589544399c8e217a62b1c5",
"assets/assets/images/theboysatknob.jpeg": "099e40843294484648d1cf09c9b42345",
"assets/assets/images/background1.jpg": "d83d59d5806cc75fceb264ff919464d3",
"assets/assets/images/logo512.png": "63e090d93475eacea16cc8ee7b52118b",
"assets/assets/images/phillyskyline2.jpg": "f7d92e83f98dda3c994239923592d9ba",
"assets/assets/images/cinect.png": "956ce99d5e6e81bcfb949ad1b7ff2427",
"assets/assets/images/pitt.jpg": "93aa0f92047eaa2b2e8c3c6b018afae4",
"assets/assets/images/dynamicsinc.webp": "e2722285f45b0d2482d1f4d6854264ab",
"assets/assets/images/phillyskyline.jpg": "d708d23c481a662a5b75e07cb06a89ab",
"assets/assets/images/poolsimulation.png": "7655986f17a3f74da5623ac3ba6a5b76",
"assets/assets/images/background2.jpg": "3dc16d30997da2ff02ece3d34bb6bd18",
"assets/assets/images/logo-dark.png": "0cbc77cb23743af5733a19571f4a7467",
"assets/assets/images/lostatpitt.png": "51c139ca79e17d2176f2a7ed55b58721",
"assets/assets/images/innovativesystems.jpeg": "4292767d79ab3a97c21cdfdbfd134658",
"assets/assets/images/logo.png": "b8d3ebc1e3bb190e0252d01f5c31859a",
"assets/assets/images/astralnaut2.png": "3bbbb8c90ad95d0eb44593afcb90d309",
"assets/assets/images/astralnaut1.png": "28caacd6da22d583bfee059b1e57406a",
"assets/assets/backgrounds/dark-grey-terrazzo.webp": "f625c3e4b40a4be098935efd4bd03ab2",
"assets/assets/backgrounds/webb.png": "9099704434ce0b616d97cce14399e461",
"assets/assets/backgrounds/skyline.jpg": "717dcfb92c646af4b2ea7de703676e8d",
"assets/assets/backgrounds/repeated-square-dark.png": "1cbaebeed46ceaa3d89c45d39731ac43",
"assets/assets/backgrounds/skyline.webp": "9eccdc554d487473618534c7e834a8e7",
"assets/assets/backgrounds/webb-dark.png": "9aec11f1e7dd12fdf789e3c380dd95e3",
"assets/assets/backgrounds/light-grey-terrazzo.webp": "222e6eb9266e3f4171c2dce4315894f9",
"assets/assets/backgrounds/repeated-square.png": "9ddab1964fa3873946c4e0e3f65f5555",
"assets/assets/fonts/oswald.ttf": "033f2e7815bfa96db10bbb07ca20fb93",
"assets/NOTICES": "d378bf1c040d1aac36560c794b2de44a",
"assets/AssetManifest.bin": "9922a5eb8b89e5d5ed778c03c007d4e0",
"assets/FontManifest.json": "dd629123afdf8b4a01fba81f23f78d29",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
