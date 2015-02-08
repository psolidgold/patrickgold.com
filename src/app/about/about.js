angular.module( 'app.about', [
  'ui.router',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'about', {
    url: '/about',
    views: {
      "main": {
        controller: 'AboutController',
        templateUrl: 'app/about/about.tpl.html'
      }
    },
    data:{ pageTitle: 'Who am I?' }
  });
})

.controller( 'AboutController', function AboutCtrl( $scope ) {

})
;
