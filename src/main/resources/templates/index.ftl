<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1 user-scalable=no">
    <title>${title}</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/teams-table.css"/>
    <link rel="stylesheet" type="text/css" href="css/navbar.css">
    <link rel="stylesheet" type="text/css" href="css/form-signin.css">
    <link rel="stylesheet" type="text/css" href="css/sidenav.css">

    <script src="js/lib/angular.min.js"></script>
    <script src="js/lib/angular-ui-router.min.js"></script>
    <script src="js/lib/localforage.min.js"></script>
    <script src="js/lib/ngStorage.min.js"></script>
    <script src="js/app.js"></script>
    <script src="js/controllers/TeamService.js"></script>
    <script src="js/controllers/TeamController.js"></script>
    <script src="js/controllers/StandingsController.js"></script>
    <script src="js/utils/SidenavControls.js"></script>
</head>


<body ng-app="mzpsApp">
<!-- Static navbar -->
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" ui-sref="home">Turnieje Ligowe MZPS</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a ui-sref="standings">Tabela</a></li>
                <li><a ui-sref="tourneys">Turnieje</a></li>
                <li><a ui-sref="teams">Zespoły</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>

<div class="container-fluid">
    <div ui-view></div>
</div>

</body>
</html>