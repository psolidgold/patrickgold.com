angular.module( 'app', [
  'templates-app',
  'templates-common',
  'app.layout',
  'ngAnimate',
  'ui.router'
])

.config( function myAppConfig ( $stateProvider, $urlRouterProvider, $httpProvider ) {
  $urlRouterProvider.otherwise( '/home' );
  $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
})

.run( function run () {

})

.controller( 'AppController', function AppCtrl ( $scope, $location ) {
  $scope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
    if ( angular.isDefined( toState.data.pageTitle ) ) {
      $scope.pageTitle = toState.data.pageTitle + ' | Patrick Gold' ;
    }
  });
})

;

