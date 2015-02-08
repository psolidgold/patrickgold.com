angular.module( 'app.work', [
  'ui.router',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'layout.work', {
    url: '/work',
    views: {
      "page": {
        controller: 'WorkController',
        templateUrl: 'app/work/work.tpl.html'
      }
    },
    data:{ pageTitle: 'What have I done?' }
  });
})

.controller( 'WorkController', function AboutCtrl( $scope ) {

})
;
