## Session 1: Gon and AngularJs

### Setting up Gon
- Gemfile add line 
```
gem 'gon'
```
- Layout file, app/views/layouts/application.html.haml add line in the head tag
```
= include_gon
```
- We are now ready to use the functionality.

### Setting up Angular JS
- Gemfile add line
```
gem 'angularjs-rails', '1.3.8'
```
- Add below line in app/assets/javascripts/application.js

```
//= require angular
```
- Name your angular app, this can be done on layouts/application.html.haml, HTML tag

```
{"ng-app" => 'BlrAnalytics'}
```
- Test your Angular JS, it is working or not.
- Create a ng-model for a input tag. Check its working. Code below

```        
%div{ 'ng-app' => 'BlrAnalytics', 'ng-controller' => 'myCtrl' }
  %form
    %input{ 'type' => 'text', 'ng-model' => 'newEntry.name' }
  {{newEntry.name}}
```
  
- Next is create a Angular controller, assign a gon variable in rails controller and display the result using angular JS.
- Below is the code to achieve it.

#### Defining Angular Controller
Passing gon object from Rails controller

```
def index
  gon.users = User.all
end
```

In JS File

```
var app = angular.module('BlrAnalytics', []);
app.controller('BlrAnalytics', ['$scope', function myCtrl($scope) {
    $scope.users = gon.users;
}]);
```
In HAML File

```
%div{ 'ng-app' => 'BlrAnalytics', 'ng-controller' => 'myCtrl' }
  %ul
    %li{ 'ng-repeat' => 'user in users' }
      {{user.name}}
```


