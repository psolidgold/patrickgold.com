/**
 * Each section of the site has its own module. It probably also has
 * submodules, though this boilerplate is too simple to demonstrate it. Within
 * `src/app/home`, however, could exist several additional folders representing
 * additional modules that would then be listed as dependencies of this one.
 * For example, a `note` section could have the submodules `note.create`,
 * `note.delete`, `note.edit`, etc.
 *
 * Regardless, so long as dependencies are managed correctly, the build process
 * will automatically take take of the rest.
 *
 * The dependencies block here is also where component dependencies should be
 * specified, as shown below.
 */
angular.module( 'app.home', [
  'ui.router'
])

/**
 * Each section or module of the site can also have its own routes. AngularJS
 * will handle ensuring they are all available at run-time, but splitting it
 * this way makes each module more "self-contained".
 */
.config(function config( $stateProvider ) {
  $stateProvider.state( 'layout.home', {
    url: '/home',
    views: {
      "page": {
        controller: 'HomeController',
        templateUrl: 'app/home/home.tpl.html'
      }
    },
    data:{ pageTitle: 'Home' }
  });
})

/**
 * And of course we define a controller for our route.
 */
.controller( 'HomeController', function HomeController( $scope ) {
    console.log("HOME!");
})

.directive( 'videoBackground', function(){
    return {
        restrict : 'E',
        replace: false,
        controller: function($scope, $element, $http){
            $($element).wallpaper({
                source: {
                    poster: "/assets/img/home_morning_poster.jpg",
                    mp4:    "/assets/videos/home_morning.mp4"
                }
            });
        }
    };

})

;

