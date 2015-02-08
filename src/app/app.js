angular.module( 'app', [
  'templates-app',
  'templates-common',
  'app.home',
  'app.about',
  'ui.router'
])

.config( function myAppConfig ( $stateProvider, $urlRouterProvider ) {
  $urlRouterProvider.otherwise( '/home' );

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
