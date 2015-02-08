angular.module( 'app.about', [
  'ui.router',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'layout.about', {
    url: '/about',
    views: {
      "page": {
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
