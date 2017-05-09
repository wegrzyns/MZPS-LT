<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><span class="lead">Lista turniejów</span></div>
    <div class="panel-body">
    	<div class="table-responsive">
        	<table class="table table-hover">
            	<thead>
            	<tr>
                	<th></th>
                	<th>Nazwa turnieju</th>
                	<th>Data</th>
                	<th width="100"></th>
                	<th width="100"></th>
				</tr>
				</thead>
                <tbody>
                <tr ng-repeat="u in ctrl.getAllTourneys()">
                    <td>{{ $index + 1 }}</td>
                    <td>{{u.name}}</td>
                    <td>{{u.date}}</td>
                    <td>
                        <button type="button" ng-click="ctrl.editTourney(u.id)" class="btn btn-success custom-width">Edit
                        </button>
                    </td>
                    <td>
                        <button type="button" ng-click="ctrl.removeTourney(u.id)" class="btn btn-danger custom-width">
                            Remove
                        </button>
                    </td>
                </tr>
                </tbody>
			</table>
		</div>
	</div>
</div>

<#--ONLY IF ADMIN-->
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><span class="lead">Nowy turniej</span></div>
    <div class="panel-body">
        <div class="formcontainer">
            <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
            <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                <input type="hidden" ng-model="ctrl.team.id"/>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label" for="uname">Nazwa zespołu</label>
                        <div class="col-md-7">
                            <input type="text" ng-model="ctrl.team.name" id="uname"
                                   class="username form-control input-sm" placeholder="Enter team name" required
                                   ng-minlength="3"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label" for="category">Kategoria</label>
                        <div class="col-md-7">
                            <select ng-model="ctrl.team.category" id="category" required">
                            <option>Mlodzik</option>
                            <option>Mlodziczka</option>
                            <option>Kadet</option>
                            <option>Kadetka</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label" for="sex">Trener</label>
                        <div class="col-md-7">
                            <input type="text" ng-model="ctrl.team.coach" id="coach"
                                   class="form-control input-sm" placeholder="Enter coach name" required
                                   ng-minlength="5"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label" for="contact">Telefon kontaktowy</label>
                        <div class="col-md-7">
                            <input type="number" ng-model="ctrl.team.phone" id="phone"
                                   class="form-control input-sm" placeholder="Enter contact phone number" required
                                   ng-minlength="9"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-actions floatRight">
                        <input type="submit" value="{{!ctrl.team.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm"
                               ng-disabled="myForm.$invalid || myForm.$pristine">
                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm"
                                ng-disabled="myForm.$pristine">Reset Form
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><span class="lead">Lista lig</span></div>
    <div class="panel-body">TEST</div>
</div>

<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><span class="lead">Nowa liga</span></div>
    <div class="panel-body">TESTl</div>
</div>