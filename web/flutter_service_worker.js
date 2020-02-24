'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "fd5dc41ea2e1cfa7a0a444274f45c61f",
"/main.dart.js": "ea2ec90ac99941eb2fb879a562a3129f",
"/assets/LICENSE": "ed12ec8e7db4c698fd11e25b79708e35",
"/assets/AssetManifest.json": "310f644c703f0c32f9198c96d8ab7daa",
"/assets/FontManifest.json": "f52fdfe249f7b06791432978954fbedb",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "9a62a954b81a1ad45a58b9bcea89b50b",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/add.png": "009763fe0ca61a8af01dc23a388c2f7d",
"/assets/assets/images/2.0x/add.png": "04492fa0a5ce6d7ab8e69e5fa91517f9",
"/assets/assets/images/2.0x/from_equation.png": "5dff29639bbef3543a4949a724a93838",
"/assets/assets/images/2.0x/to_equation.png": "cdc1cb0ae500fe6d700ca71ea247bce6",
"/assets/assets/images/3.0x/add.png": "5cc0edd050d61abf01e960253d973777",
"/assets/assets/images/3.0x/from_equation.png": "15031ee9315d5a15cbac961b073daaff",
"/assets/assets/images/3.0x/to_equation.png": "fce896e64d055bb050c859e093472472",
"/assets/assets/images/4.0x/add.png": "21df1782fffad53b30b9594f252e4f27",
"/assets/assets/images/4.0x/from_equation.png": "f5d350b0241d6ecf994930889650339b",
"/assets/assets/images/4.0x/to_equation.png": "7c4f3473089f64447b00f831ef984234",
"/assets/assets/images/from_equation.png": "54ad731bf0994caf3474cf7cab7053d3",
"/assets/assets/images/to_equation.png": "d5be28444ab6a245562fd58cb90153c6",
"/assets/assets/solutions/FindIntersectionsOfParabolaAndLine.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindRootsFromStandardFormUsingFactoring.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindSumOfRootsWithGivenVertex.txt": "97a465aaddfe371b1188074371766020",
"/assets/assets/solutions/SketchTheVertexFormLabelingImportantPoints.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/SketchTheFactoredFormLabelingImportantPoints.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindEquationWithGivenOneRootAndTwoPoints.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindRootsFromVertexForm.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindEquationWithGivenVertexAndOnePoint.txt": "1eff1a4a09eb14c06ccc3f54753cb0bb",
"/assets/assets/solutions/FindRootsFromStandardFormUsingDiscriminant.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindSumAndProductOfRoots.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindDiscriminantOfEquation.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindEquationWithGivenThreePoints.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindRootsFromStandardFormUsingCompletingTheSquare.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindEquationWithGivenTwoRootsAndOnePoint.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindIntersectionsOfTwoParabolas.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindRootsFromFactoredForm.txt": "d41d8cd98f00b204e9800998ecf8427e",
"/assets/assets/solutions/FindVertexOfEquation.txt": "0b29133fcaf4667edb36925db9bae07c",
"/assets/assets/fonts/nunito/Nunito-ExtraBoldItalic.ttf": "21becea3582b0515c5ad505d48b44a38",
"/assets/assets/fonts/nunito/Nunito-ExtraBold.ttf": "14f2f203c4644e945a9e80e4d8f9a615",
"/assets/assets/fonts/nunito/Nunito-ExtraLightItalic.ttf": "d3e50bba9cc069ff5cc0bed2932d2184",
"/assets/assets/fonts/nunito/Nunito-Light.ttf": "f7fb34d1eab74a26abdb832e3db8dbde",
"/assets/assets/fonts/nunito/Nunito-Regular.ttf": "e9f64790b131c08d6b34a9ecdc453876",
"/assets/assets/fonts/nunito/Nunito-SemiBold.ttf": "bb52b80a026d5b8ab09c4640b711153a",
"/assets/assets/fonts/nunito/Nunito-Bold.ttf": "a8c930b08cd5fda37ea9f1c105d1ac61",
"/assets/assets/fonts/nunito/Nunito-BoldItalic.ttf": "6c403b74f57bc9b80c05ba935864934d",
"/assets/assets/fonts/nunito/Nunito-Black.ttf": "900caa7db580afb9489434ed9ce5c978",
"/assets/assets/fonts/nunito/Nunito-ExtraLight.ttf": "a2f61593a1f33e5088345eccbb69c3f9",
"/assets/assets/fonts/nunito/Nunito-SemiBoldItalic.ttf": "e020c7e6a9cc862e505fade06649899d",
"/assets/assets/fonts/nunito/Nunito-BlackItalic.ttf": "ee649ba9c9d523c33b75d1f2bca5bf75",
"/assets/assets/fonts/nunito/Nunito-Italic.ttf": "5793817ee2744f2008c0e7a38e641569",
"/assets/assets/fonts/nunito/Nunito-LightItalic.ttf": "67ae90d1c81a5007876731437877e736",
"/assets/assets/fonts/latin%2520modern%2520roman%252010/Latin%2520Modern%2520Roman%252010-BoldItalic.otf": "1e0d71f32461d596cb4b5eb275495221",
"/assets/assets/fonts/latin%2520modern%2520roman%252010/Latin%2520Modern%2520Roman%252010-Italic.otf": "accb92dd0018b552e39fe62c1311aff5"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
