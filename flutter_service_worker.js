'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/NOTICES": "9006f7fbbc2b61e955199f889cf36745",
"assets/assets/starEmpty.png": "a74d73f2af65f8137a199b52834ee7d4",
"assets/assets/question.png": "b358bc9da965357cddae1226ea89b5de",
"assets/assets/card.png": "a85405060f41da91161331a1a46b5fec",
"assets/assets/location.png": "07d017d059dfe865848c20e3296b9818",
"assets/assets/topUp.png": "fc2fe00fe4eb3783c73ae6184a7abdd4",
"assets/assets/pattern.png": "e9044546d827b4785cd83d9e94e34968",
"assets/assets/congrats.png": "160336eab6de390905fe9eac9f6a11ba",
"assets/assets/tomatoSoup.png": "da903cf3908a19bc516a2d66dc49b16d",
"assets/assets/beefBurger.png": "e32c6af03f87a5a51266c29cc95ebc65",
"assets/assets/message.png": "c9fc47b5dfc8270b73a1e6f5de0248d3",
"assets/assets/trolley.png": "b50394fc8ca1350d8466f4d15833782b",
"assets/assets/cash.png": "f2127bd108f97daa8264cc892ce7c19d",
"assets/assets/zingerBurger.png": "29977c7ac8c7d58800dfbd751dcf0a81",
"assets/assets/third.png": "d06d3b3160f64c6eab33291e988a2c81",
"assets/assets/messageBlack.png": "fa34a33f3ce282a0b68c6d2ca486862b",
"assets/assets/creamyBiscuit.png": "4d0ac24724b960935c296aeeffdc5fa1",
"assets/assets/missoSoup.png": "054b27443116884faefc142ca4788646",
"assets/assets/search.png": "08f17b7dd91e99654e1f98341d98178b",
"assets/assets/logo.png": "2305cdb4b31d6c1bc75aee8c12d5041e",
"assets/assets/cancel-icon.png": "2ac82edc1ece57607a6b7799b2916603",
"assets/assets/bg-welcome2.jpg": "197a36c4207e3fb54c4a300e1388e28e",
"assets/assets/carrotSoup.png": "d5001f5a342a836b70489c9e79a463e8",
"assets/assets/bg-welcome.jpg": "e51f5a0c3bc442e978890f9394b6c873",
"assets/assets/icon-send.png": "7209e8bbb20d955cd6d338185c9d0276",
"assets/assets/phone_icon.png": "19d54e072e5b650a30b82a7fbff744bb",
"assets/assets/specialDeal2.png": "8f8877c1f35de393326d654b2f4735cd",
"assets/assets/facebookicon.png": "a7ee28eae48a62975055f405e28ea6a7",
"assets/assets/mushroomSoup.png": "f8c4c760fae4aafb6eba5f602d8ed6b8",
"assets/assets/vegetable.png": "27c3277ab12d41a2511be30d9ee77f57",
"assets/assets/home.png": "faaf2d0bf6a50cb0817096e6aef9b131",
"assets/assets/locationBlack.png": "5bc70cf53a578e9d60cf5653d327f0a8",
"assets/assets/googleicon.jpg": "55b434574641cf3d5de3f46168cdf2e5",
"assets/assets/pizzaRoll.png": "b02bfa76f7101bc1fde0a8d990b892e4",
"assets/assets/rollParatha.png": "8923e29024326036df4177243e7ab5b9",
"assets/assets/garlicSoup.png": "42bfc005082c2ecdaa65f2389c6ebe44",
"assets/assets/burger.png": "fbf188aa5d904addb2106fe02d5731e2",
"assets/assets/trash.png": "8a5f7a4f5777d6a255098f7f34c1d135",
"assets/assets/background.png": "eeff25f3c8e16b6b2458abc9bda2b5bf",
"assets/assets/cupCake.png": "7923f05b69b5c9fe7512b26c9c66c0e1",
"assets/assets/specialDeal1.png": "cefd60829177818038f9d265adf8b3fb",
"assets/assets/logo_w.png": "93465bd31114321c08c083b99d5d3226",
"assets/assets/starFill.png": "f5338deac15749bd014574ad992c19d5",
"assets/assets/end.png": "cc2333312a7f18a584bcca72f5b0f327",
"assets/assets/speaker.png": "f869fac045db75250449c7c28fd8e72b",
"assets/assets/pencil.png": "49816db15328956bf2f1dec1a2e4aa4f",
"assets/assets/BigFood.png": "47de851efb30b4929f4e4119710d7232",
"assets/assets/sandwich.png": "d21b1648b922c53906684aa9293c2cd7",
"assets/assets/account.png": "c498777a04de0401f4446b3b88cc779c",
"assets/assets/emailBlack.png": "6edd2780c56287032fbed8f6450c878f",
"assets/assets/filter.png": "044b077692f022f9329e7ade28da9882",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "b23a502cd9cfd19f16ba3f86cf72165a",
"assets/AssetManifest.json": "02f8a33c9f0f1dd34013e94c68384948",
"assets/FontManifest.json": "c8ca0e34e34863e4f134c47bbe2fb415",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/fonts/Montserrat-ExtraBoldItalic.ttf": "e07b3f35e3e0073b2cde4c5a951cc24e",
"assets/fonts/Montserrat-LightItalic.ttf": "e70e5d8d5129f35418fe2cfaa6132c1d",
"assets/fonts/MaterialIcons-Regular.otf": "f10a2d888842ee6480d951b2606c9eef",
"assets/fonts/Montserrat-SemiBoldItalic.ttf": "d41c0a341637c2e35ae019730b2d45a5",
"assets/fonts/Montserrat-Medium.ttf": "b3ba703c591edd4aad57f8f4561a287b",
"assets/fonts/Montserrat-SemiBold.ttf": "fb428a00b04d4e93deb4d7180814848b",
"assets/fonts/Montserrat-BlackItalic.ttf": "a943ff860cf7bda5ce3722cad5c1dc06",
"assets/fonts/Montserrat-Thin.ttf": "4b73d125bab54f94ed2510590c237f73",
"assets/fonts/Montserrat-ExtraLight.ttf": "fca7947b08333e5ffcb80c069755b5c9",
"assets/fonts/Montserrat-Italic.ttf": "761177c558bb3a0084aa85704315b990",
"assets/fonts/Montserrat-MediumItalic.ttf": "2e7c02a0a4a5fd318b0625d120ad2033",
"assets/fonts/Montserrat-Light.ttf": "e65ae7ed560da1a63db603bd8584cfdb",
"assets/fonts/Montserrat-Bold.ttf": "1f023b349af1d79a72740f4cc881a310",
"assets/fonts/Montserrat-BoldItalic.ttf": "9d216a715551da3b92a4a9b0e8994868",
"assets/fonts/Montserrat-ThinItalic.ttf": "59cdce8fbd384a39ab0fd14b9f693de5",
"assets/fonts/Montserrat-Regular.ttf": "3fe868a1a9930b59d94d2c1d79461e3c",
"assets/fonts/Montserrat-ExtraLightItalic.ttf": "e4d0c1f4d67a7f3d23a1f2f78d24ea57",
"assets/fonts/Montserrat-ExtraBold.ttf": "bd8fb30c6473177cfb9a5544c9ad8fdb",
"assets/fonts/Montserrat-Black.ttf": "9c1278c56276b018109f295c1a751a69",
"index.html": "6daad617a8984e5f7af119d73c865ba3",
"/": "6daad617a8984e5f7af119d73c865ba3",
"main.dart.js": "c93d010d8c3bfa0bac7a6236f7e9d838",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"version.json": "065378cc8c013a6f2fe1313391a71a10",
"manifest.json": "d8790d9db72628b0b348feca9566f69c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
