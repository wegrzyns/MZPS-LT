var app = angular.module('mzpsApp', ['ui.router', 'ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:8080/',
    TEAM_SERVICE_API: 'http://localhost:8080/teams/',
    TOURNEY_SERVICE_API: 'http://localhost:8080/tourneys/',
    ADMIN_SERVICE_API: 'http://localhost:8080/admin/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function ($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'home',
                controller: 'HomeController',
                controllerAs: 'ctrl'
            })
            .state('standings', {
                url: '/standings',
                templateUrl: 'standings',
                controller: 'StandingsController',
                controllerAs: 'ctrl'
            })
            .state('tourneys', {
                url: '/tourneys',
                templateUrl: 'tourneys',
                controller: 'TourneysController',
                controllerAs: 'ctrl',
                resolve: {
                    matchResults: function ($q, TourneysService) {
                        console.log('Load tourneys');
                        var deferred = $q.defer();
                        TourneysService.loadAllMatchResults().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            })
            .state('teams', {
                url: '/teams',
                templateUrl: 'teams',
                controller: 'TeamController',
                controllerAs: 'ctrl',
                resolve: {
                    teams: function ($q, TeamService) {
                        console.log('Load all teams');
                        var deferred = $q.defer();
                        TeamService.loadAllTeams().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            })
            .state('admin', {
                url: '/admin',
                templateUrl: 'admin',
                controller: 'AdminController',
                controllerAs: 'ctrl',
                resolve: {
                    tourneys: function ($q, AdminService) {
                        console.log('Load all tourneys');
                        var deferred = $q.defer();
                        AdminService.loadAllTourneys().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            })
            .state('teams.category', {
                url: '/teams/category'
            })
        ;
        $urlRouterProvider.otherwise('/');
    }]);

