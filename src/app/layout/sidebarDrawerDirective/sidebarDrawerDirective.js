(function () {

    angular.module('app.layout.sidebarDrawerDirective', [
        'ui.router'
    ])
        .directive( 'sidebarDrawer', function () {
            return {
                restrict : 'E',
                replace: true,
                controller: function($rootScope, $scope, $http){
                    $scope.open = false;
                    $scope.toggleDrawer = function(){
                        $scope.dirty = true;
                        $scope.open = !$scope.open;
                    };

                    $rootScope.$on('$stateChangeStart',
                        function(event, toState, toParams, fromState, fromParams){
                            $scope.open = false;
                        });
                },
                templateUrl: 'app/layout/sidebarDrawerDirective/sidebarDrawerDirective.tpl.html'
            };
        });
}());