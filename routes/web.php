<?php
Route::get('/', function () {
	return redirect()->route('dashboard_login');
});

Route::group(['prefix' => 'admin'], function () {

	Route::group(['middleware' => ['IfAdminNotLogIn', 'ArcsSystemLogin']], function() {
		
		Route::get('/login', 'DashboardController@login')->name('dashboard_login');
		Route::post('/login', 'DashboardController@loginAction')->name('dashboard_login_action');
		Route::get('/password-reset-link', 'DashboardController@resetLink')->name('reset_link');
		Route::post('/send-reset-link', 'DashboardController@sendLink')->name('send_link');
		Route::get('/reset-password/{token}', 'DashboardController@resetPassword')->name('reset_pwd');
		Route::post('/reset-password/{token}', 'DashboardController@resetPasswordAction')->name('post_reset_pwd');

	}); // end IfAdminNotLogIn middleware

	/********** AFTER ADMIN LOGIN PART **********/
	/********** DASHBOARD ACTION START *********/
	Route::group(['prefix' => 'dashboard',  'middleware' => ['IfAdminLogIn'] ], function () {
		
		Route::get('/', 'DashboardController@index')->name('dashboard');
		Route::get('/logout', 'DashboardController@logout')->name('logout');

		Route::get('/arindam/module', 'ArindamController@module');
		Route::post('/arindam/module', 'ArindamController@moduleSave')->name('ari.module.save');
		Route::get('/arindam/permission', 'ArindamController@permission');
		Route::post('/arindam/permission', 'ArindamController@permissionSave')->name('ari.permission.save');

		Route::group(['prefix' => 'settings'], function () {  //, 'middleware' => ['role:Super-Admin'] 

			Route::get('/', 'SettingsController@generalSettings')->name('gen_sett');
			Route::post('/save', 'SettingsController@saveGeneralSettings')->name('sv_gen_sett');
		});

		/*************** USER MANAGEMENT ******************/
		Route::group(['prefix' => 'users-management'], function () {

			Route::get('/', 'UserController@index')->name('users_list');
			Route::get('/create-user', 'UserController@createUser')->name('crte_user');
			Route::post('/save-user', 'UserController@saveUser')->name('save_user');
			Route::get('/edit-user/{user_timestamp_id}', 'UserController@editUser')->name('edit_user');
			Route::post('/update-user/{user_timestamp_id}', 'UserController@updateUser')->name('upd_user');
			Route::get('/reset-password/{user_timestamp_id}', 'UserController@resetPassword')->name('rst_pwd');
			Route::post('/update-password/{user_timestamp_id}', 'UserController@updatePassword')->name('upd_pwd');
			Route::get('/delete-user/{user_timestamp_id}', 'UserController@deleteUser')->name('del_usr');
			Route::get('/profile', 'UserController@profile')->name('usr_profile');
			Route::post('/profile', 'UserController@profileUpdate')->name('upd_profile');
			Route::get('/change-password', 'UserController@changePassword')->name('cng_pwd');
			Route::post('/change-password', 'UserController@changePasswordSave')->name('save_pwd');
			Route::post('/users-action', 'UserController@takeAction')->name('usrTKact');

			Route::get('/permissions/{user_timestamp_id}', 'UserController@userPermissions')->name('edit_user_permission');
			Route::post('/permissions/{user_timestamp_id}', 'UserController@userPermissionsUpdate')->name('update_user_permission');
		});

		Route::get('/active-inactive', 'CommonController@activeInactive')->name('acInac');
		Route::get('/forced-email-verify/{uid}', 'CommonController@forcedEmailVerify')->name('forceEmailVerify');
		/*** Global Image Delete ***/
		Route::get('/global-image-delete', 'DashboardController@globalImageDelete')->name('glbImgDel');

	}); //end dashboard prefix
	/********** END DASHBOARD ACTION *********/

}); //end admin prefix


