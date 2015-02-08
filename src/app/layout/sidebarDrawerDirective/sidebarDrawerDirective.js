(function () {

    angular.module('app.layout.sidebarDrawerDirective', [
        'ui.router'
    ])
        .directive( 'sidebarDrawer', function () {
            return {
                restrict : 'E',
                replace: true,
                controller: ["$scope","$http", function($scope, $http){

                }],
                templateUrl: 'app/layout/sidebarDrawerDirective/sidebarDrawerDirective.tpl.html'
            };
        });
}());