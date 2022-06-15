'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "ee1a9c92308cdfa692fa8b9be4a9da5b",
"assets/assets/about_icons/about_icon1.png": "8e422081da5f176c121c4c8eb689faf9",
"assets/assets/about_icons/about_icon2.png": "cacd2a4eb0cdf11eadb18cb22fd2463b",
"assets/assets/about_icons/about_icon3.png": "5ab8ab322087e6fe7320ade2a669769f",
"assets/assets/about_icons/about_icon4.png": "9fa24f74ec52ebf6f9a62b634eb2a5a2",
"assets/assets/about_icons/about_icon5.png": "fb6ba485aa66a230bb407208f439a989",
"assets/assets/about_icons/about_icon6.png": "4df5d8a3329fffd849d6e1ac362f5c46",
"assets/assets/bg_splash.jpg": "4b70afb18b770df8aad98515c393f0e8",
"assets/assets/booked.png": "60501101b63025319d92982f0de80a9b",
"assets/assets/dashboard_books/booked_new_0.jpg": "d84a2c89eed7ba2da4f1c8cb641174dc",
"assets/assets/dashboard_books/booked_new_1.jpg": "64968ca72480b9d54deead46d36a7c2a",
"assets/assets/dashboard_books/booked_new_10.jpg": "7544655e5e97aae3ceaa0f447f3378d1",
"assets/assets/dashboard_books/booked_new_11.jpg": "baae722b38ee64be959f737996032fc7",
"assets/assets/dashboard_books/booked_new_12.jpg": "b3bb9ae25d7a1d7f949312eac2243b60",
"assets/assets/dashboard_books/booked_new_13.jpg": "fa7aa6c9a3f06aff45b83ff72b75dec8",
"assets/assets/dashboard_books/booked_new_14.jpg": "79265a028ca2ef8817270c8e96c3d5fb",
"assets/assets/dashboard_books/booked_new_15.jpg": "f819ceaa39d6d53cb7fe92bd985ba122",
"assets/assets/dashboard_books/booked_new_16.jpg": "f97144d8398290db39b21b56a71a5f85",
"assets/assets/dashboard_books/booked_new_17.jpg": "62b42c4d07b3fe4ff642148131a0c6c9",
"assets/assets/dashboard_books/booked_new_2.jpg": "f33d93e5d3b523482dc70a59b0be57fe",
"assets/assets/dashboard_books/booked_new_3.jpg": "1388d112a023d2342c8c06ed70033d91",
"assets/assets/dashboard_books/booked_new_4.jpg": "2eb25fa775215f8b61633b21783297ec",
"assets/assets/dashboard_books/booked_new_5.jpg": "a200e5e81ac865cb5403f698b119cc70",
"assets/assets/dashboard_books/booked_new_6.jpg": "5a5269ba5af01834bcd37e6d001e7257",
"assets/assets/dashboard_books/booked_new_7.jpg": "7ee266bcaeb8a9cf5bbc0e226df032e3",
"assets/assets/dashboard_books/booked_new_8.jpg": "b41cb693c58f4ef5974e5205807aa51e",
"assets/assets/dashboard_books/booked_new_9.jpg": "8bfbee90a999e47c7552292232a9a96f",
"assets/assets/fonts/OpenSans-ExtraBold.ttf": "fb7e3a294cb07a54605a8bb27f0cd528",
"assets/assets/fonts/OpenSans-Regular.ttf": "3ed9575dcc488c3e3a5bd66620bdf5a4",
"assets/assets/logo.png": "695278b1e85158b250ad7bed12ffbaee",
"assets/assets/sample_prof.png": "f5225a1f4b895f406f2615b50f9c5b13",
"assets/assets/user_home.png": "8c7bebf1de30bc9483b20a97044198c7",
"assets/assets/welcomePic.png": "58f0e898e90c094214c8923373f79f93",
"assets/FontManifest.json": "2a69ce04a1cd18341f63e2d3c53ed7ca",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "76ca8abcf721409a0c716ac8a64d0730",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.ico": "d34491984416fa5f5d7acc076fc2a2da",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"icons/android-chrome-192x192.png": "ba486d07571933313d7b806ab92406b4",
"icons/android-chrome-512x512.png": "92e42d165b0960515be75b8551115af8",
"icons/apple-touch-icon.png": "89f1883491299d7ab847a9034167f204",
"icons/favicon-16x16.png": "5fcb03b1af2fcc21ccd418a8ecd2ed4a",
"icons/favicon-32x32.png": "f6e2590fa02459f2134c865c250012bf",
"icons/faviconback.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "343a7de41db2cd769a0e425885dea89b",
"/": "343a7de41db2cd769a0e425885dea89b",
"main.dart.js": "2360110c4088a561136f71a3b62967eb",
"manifest.json": "059ce24988984da9b02b39d11c582d4d",
"version.json": "2865022b586925c671107d08c6de4913"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
