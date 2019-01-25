const app = angular.module("addApp", []);
app.controller("addController", function ($scope, $http) {

    $scope.dept = ["Web World", "Creations"];

    $scope.sendemp = () => {
        console.log($scope.add);
    }

});