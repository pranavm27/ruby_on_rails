var app = angular.module('BlrAnalytics', []);
app.controller('myCtrl', ['$scope', function myCtrl($scope) {
    $scope.users = gon.users;
}]);