{include file="includes/modal"}
<script src="/themes/clientarea/default/assets/js/public.js?v={$Ver}"></script>

<style>
/* 基础变量定义 */
:root {
 --primary: #f08a5d;
 --primary-dark: #e67e22;
 --primary-light: #fad7a0;
 --secondary: #f9b384;
 --accent: #ffbe76;
 --dark: #2d3436;
 --light: #ffffff;
 --gray: #636e72;
 --gray-light: #f8f8f8;
 --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
 --card-hover-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
}

/* 卡片样式 */
.card {
 border: none;
 border-radius: 15px;
 box-shadow: var(--card-shadow);
 transition: all 0.3s ease;
 overflow: hidden;
 margin-bottom: 20px;
 animation: fadeIn 0.5s ease-out;
}

.card:hover {
 box-shadow: var(--card-hover-shadow);
 transform: translateY(-5px);
}

@keyframes fadeIn {
 from { opacity: 0; transform: translateY(10px); }
 to { opacity: 1; transform: translateY(0); }
}

/* Update card body to position decorations properly */
.card-body {
 padding: 25px;
 position: relative;
 overflow: hidden;
}

.card-body .decoration {
 z-index: 1;
}

/* 安全项目样式 */
.security-header {
 position: relative;
 overflow: hidden;
 background: linear-gradient(135deg, var(--primary), var(--secondary));
 border: none;
}

.security-header::before {
 content: "";
 position: absolute;
 top: -50px;
 right: -50px;
 width: 150px;
 height: 150px;
 border-radius: 50%;
 background: linear-gradient(135deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.05));
 z-index: 0;
}

.security-header::after {
 content: "";
 position: absolute;
 bottom: -30px;
 left: -30px;
 width: 100px;
 height: 100px;
 border-radius: 50%;
 background: linear-gradient(135deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.05));
 z-index: 0;
}

.security-avatar {
 display: flex;
 justify-content: center;
 align-items: center;
}

/* Update security logo to match theme */
.security-logo {
 width: 60px;
 height: 60px;
 display: flex;
 justify-content: center;
 align-items: center;
 font-size: 24px;
 font-weight: bold;
 color: #fff;
 background: linear-gradient(135deg, var(--primary), var(--secondary));
 box-shadow: 0 5px 15px rgba(240, 138, 93, 0.3);
 transition: all 0.3s ease;
 border-radius: 50%;
}

.security-logo:hover {
 transform: scale(1.05);
 box-shadow: 0 8px 20px rgba(240, 138, 93, 0.4);
}

/* Add styles for security-info to remove blue background */
.security-info {
 background: transparent;
 padding: 10px;
 border-radius: 10px;
}

.security-username {
 font-size: 1.5rem;
 font-weight: 600;
 margin-bottom: 0.5rem;
 display: flex;
 align-items: center;
 gap: 10px;
}

.security-strength {
 display: flex;
 flex-direction: column;
 gap: 5px;
}

.security-label {
 font-size: 0.9rem;
 color: rgba(255, 255, 255, 0.8);
}

.security-text {
 font-weight: 500;
}

.security-meta {
 font-size: 0.9rem;
}

.security-meta ul {
 margin-bottom: 0;
}

.security-meta label {
 color: rgba(255, 255, 255, 0.8);
 margin-bottom: 0;
}

.progress {
 height: 6px;
 border-radius: 10px;
 background-color: rgba(255, 255, 255, 0.2);
 overflow: hidden;
}

/* Update progress bar to match theme */
.progress-bar {
 border-radius: 10px;
 background: linear-gradient(90deg, rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.7));
}

/* 安全项目卡片 */
/* Update the security items layout to prevent overlapping */
.security-items {
 display: flex;
 flex-direction: column;
 gap: 25px;
 position: relative;
 z-index: 2;
}

/* Add container for security items to prevent decoration overlap */
.security-items-container {
 position: relative;
 z-index: 2;
}

.security-item {
 display: flex;
 align-items: flex-start;
 gap: 20px;
 padding: 20px;
 border-radius: 12px;
 background-color: #fff;
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.03);
 transition: all 0.3s ease;
 position: relative;
 overflow: hidden;
 z-index: 2;
}

.security-item:hover {
 transform: translateY(-5px);
 box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
}

.security-item-icon {
 width: 50px;
 height: 50px;
 border-radius: 12px;
 display: flex;
 justify-content: center;
 align-items: center;
 font-size: 20px;
 color: #fff;
 background: linear-gradient(135deg, var(--primary), var(--secondary));
 box-shadow: 0 5px 15px rgba(240, 138, 93, 0.2);
 transition: all 0.3s ease;
 position: relative;
 z-index: 2;
 margin-right: 15px;
}

.security-item:hover .security-item-icon {
 transform: scale(1.1) rotate(5deg);
}

.security-item-info {
 display: flex;
 flex: 1;
 justify-content: space-between;
 align-items: center;
}

.security-item-text {
 flex: 1;
}

.security-item-title {
 font-size: 1.1rem;
 font-weight: 600;
 margin-bottom: 5px;
 display: flex;
 align-items: center;
 gap: 10px;
}

.security-item-title small {
 font-size: 0.8rem;
 color: var(--primary);
 display: flex;
 align-items: center;
 gap: 5px;
}

.security-item-desc {
 font-size: 0.85rem;
 color: var(--gray);
 max-width: 80%;
}

/* 按钮样式 */
.btn-primary {
 background-color: var(--primary);
 border-color: var(--primary);
 color: white;
 box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
 padding: 0.6rem 1.5rem;
 border-radius: 50px;
 font-weight: 600;
 transition: all 0.3s ease;
 position: relative;
 overflow: hidden;
 z-index: 1;
}

.btn-primary:hover {
 background-color: var(--primary-dark);
 border-color: var(--primary-dark);
 transform: translateY(-3px);
 box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
}

.btn-primary:active {
 transform: translateY(-1px);
 box-shadow: 0 3px 10px rgba(240, 138, 93, 0.3);
}

.btn-primary::after {
 content: '';
 position: absolute;
 top: 0;
 left: -100%;
 width: 100%;
 height: 100%;
 background: linear-gradient(90deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0));
 transition: all 0.4s ease;
 z-index: -1;
}

.btn-primary:hover::after {
 left: 100%;
}

.btn-outline-primary {
 color: var(--primary);
 border-color: var(--primary);
 background-color: transparent;
 box-shadow: 0 2px 10px rgba(240, 138, 93, 0.1);
 padding: 0.6rem 1.5rem;
 border-radius: 50px;
 font-weight: 600;
 transition: all 0.3s ease;
 position: relative;
 overflow: hidden;
 z-index: 1;
}

.btn-outline-primary:hover {
 color: #fff;
 background-color: var(--primary);
 border-color: var(--primary);
 transform: translateY(-3px);
 box-shadow: 0 6px 20px rgba(240, 138, 93, 0.3);
}

.btn-outline-primary:active {
 transform: translateY(-1px);
 box-shadow: 0 3px 10px rgba(240, 138, 93, 0.2);
}

.btn-outline-light {
 color: var(--dark);
 border-color: #e0e0e0;
 background-color: transparent;
 box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
 padding: 0.6rem 1.5rem;
 border-radius: 50px;
 font-weight: 600;
 transition: all 0.3s ease;
}

.btn-outline-light:hover {
 color: var(--dark);
 background-color: #f8f9fa;
 border-color: #e0e0e0;
 transform: translateY(-3px);
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
}

/* 表单控件样式 */
.form-control {
 border-radius: 8px;
 border: 1px solid rgba(240, 138, 93, 0.2);
 transition: all 0.3s ease;
 box-shadow: 0 2px 10px rgba(240, 138, 93, 0.05);
 padding: 0.6rem 1rem;
 height: calc(1.5em + 1.2rem + 2px);
}

.form-control:focus {
 box-shadow: 0 0 0 4px rgba(240, 138, 93, 0.15);
 border-color: var(--primary);
}

.form-control:hover {
 border-color: var(--primary);
 box-shadow: 0 2px 8px rgba(240, 138, 93, 0.15);
 transform: translateY(-1px);
}

.form-control[readonly] {
 background-color: rgba(240, 138, 93, 0.05);
 cursor: not-allowed;
}

.input-group-append .btn {
 border-top-right-radius: 8px;
 border-bottom-right-radius: 8px;
}

/* 徽章样式 */
.badge {
 padding: 0.4em 0.8em;
 font-weight: 500;
 border-radius: 50px;
}

.badge-success {
 background-color: #28c76f;
 box-shadow: 0 3px 8px rgba(40, 199, 111, 0.3);
}

.badge-light {
 background-color: rgba(255, 255, 255, 0.9);
 color: var(--primary);
 box-shadow: 0 3px 8px rgba(0, 0, 0, 0.1);
}

/* 模态框样式 */
.modal-content {
 border: none;
 border-radius: 15px;
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
 overflow: hidden;
}

.modal-header {
 border-bottom: 1px solid rgba(240, 138, 93, 0.1);
 padding: 1.5rem;
}

.modal-body {
 padding: 1.5rem;
}

.modal-footer {
 border-top: 1px solid rgba(240, 138, 93, 0.1);
 padding: 1.5rem;
}

/* 响应式调整 */
@media (max-width: 992px) {
 .security-item-info {
   flex-direction: column;
   align-items: flex-start;
   gap: 15px;
 }
 
 .security-item-desc {
   max-width: 100%;
 }
}

@media (max-width: 768px) {
 .security-meta ul li {
   display: block;
   margin-bottom: 5px;
 }
 
 .security-item {
   flex-direction: column;
   align-items: flex-start;
   padding: 15px;
   margin-bottom: 10px;
 }
 
 .security-item-icon {
   margin-bottom: 15px;
   margin-right: 0;
 }

 .security-items {
   gap: 15px;
 }
 
 .card .decoration-1,
 .card .decoration-2,
 .decoration-3 {
   width: 80px;
   height: 80px;
 }
}

@media (max-width: 576px) {
 .card-body {
   padding: 15px;
 }
 
 .security-username {
   font-size: 1.2rem;
 }
 
 .security-item-title {
   font-size: 1rem;
 }
 
 .security-item-desc {
   font-size: 0.8rem;
 }
}

/* 装饰元素 */
.decoration {
 position: absolute;
 border-radius: 50%;
 background: linear-gradient(135deg, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.1));
 opacity: 0.2;
 z-index: 0;
}

/* Update the card decoration positioning */
.card .decoration-1 {
 top: -50px;
 right: -50px;
 width: 150px;
 height: 150px;
}

.card .decoration-2 {
 bottom: -50px;
 left: -50px;
 width: 120px;
 height: 120px;
}

.decoration-1 {
 width: 100px;
 height: 100px;
 top: -30px;
 right: -30px;
 animation: float 8s ease-in-out infinite;
}

.decoration-2 {
 width: 70px;
 height: 70px;
 bottom: -20px;
 left: -20px;
 animation: float 6s ease-in-out infinite 1s;
}

/* Add a third decoration for more visual interest */
.decoration-3 {
 width: 80px;
 height: 80px;
 top: 50%;
 right: -40px;
 animation: float 7s ease-in-out infinite 0.5s;
}

@keyframes float {
 0% { transform: translateY(0px); }
 50% { transform: translateY(-10px); }
 100% { transform: translateY(0px); }
}

.novalid {
 min-width: 80px;
 height: 26px;
 line-height: 20px;
 background-color: rgba(253, 254, 254, 0.32);
 box-shadow: 0px 6px 14px 2px rgba(6, 31, 179, 0.26);
 border-radius: 4px;
 color: #fff;
}

/* Update sidebar cards to have proper spacing */
.col-sm-4 .card .security-item {
 margin-bottom: 0;
}

/* Update sidebar cards to match main card styling */
.col-sm-4 .card .card-body {
 padding: 20px;
}

.col-sm-4 .security-item {
 box-shadow: none;
 padding: 0;
 margin-bottom: 0;
}

.col-sm-4 .security-item::before {
 display: none;
}

.col-sm-4 .security-item-info {
 flex-direction: column;
 align-items: flex-start;
 gap: 15px;
}

/* Add hover effect to all buttons */
.btn {
 transition: all 0.3s ease;
}

.btn:hover {
 transform: translateY(-3px);
 box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
}

/* Update modal styling for consistency */
.modal-content {
 border-radius: 15px;
 overflow: hidden;
}

.modal-header {
 background: linear-gradient(to right, var(--primary-light), var(--primary));
 color: white;
 border-bottom: none;
}

.modal-header .close {
 color: white;
 opacity: 0.8;
 transition: opacity 0.3s ease;
}

.modal-header .close:hover {
 opacity: 1;
}

/* Update bg-info class to use theme colors instead of blue */
.bg-info {
 background-color: var(--secondary) !important;
}

/* Search for any box-shadow properties with blue colors (#4677fb, #527ef5) and replace them with the theme's primary colors */

/* If there are any box-shadow properties with blue colors like:
box-shadow: inset 0 0 0 10px #4677fb, inset 0 0 0 20px #527ef5;
*/

/* Replace them with the theme's primary colors: */
/* For example:
box-shadow: inset 0 0 0 10px var(--primary), inset 0 0 0 20px var(--secondary);
*/

/* Check for any other blue colors in the CSS and replace them */
/* For example, if there are any background colors or border colors with blue values */
/* Replace #4677fb with var(--primary) or #f08a5d */
/* Replace #527ef5 with var(--secondary) or #f9b384 */

/* If there are any specific instances of box-shadow with blue colors that aren't visible in the provided code snippet, 
   they should be replaced with the theme's primary colors */
</style>
<div class="card mb-4 security-header">
	<div class="card-body">
        <div class="decoration decoration-1"></div>
        <div class="decoration decoration-2"></div>
		<div class="row align-items-center text-white pl-md-4">
			<div class="col-sm-2 col-md-1 phonehide">
				<div class="security-avatar">
					<div class="security-logo p-4 rounded-circle">
						{if preg_match("/^[0-9]*[A-Za-z]+$/is", substr($Userinfo.user.username,0,1))}
						{$Userinfo.user.username|substr=0,1|upper}
						{elseif preg_match("/^[\x7f-\xff]*$/", substr($Userinfo.user.username,0,3))}
						{$Userinfo.user.username|substr=0,3}
						{else}
						{$Userinfo.user.username|substr=0,1|upper}
						{/if}
					</div>
				</div>
			</div>
			<div class="col-sm-3 ml-3">
				<div class="security-info">
					<div class="security-username">
						{$Userinfo.user.username}
						{if $Setting.certifi_open==1}
						{if $Userinfo.user.certifi.status == '1'}
						<span class="badge badge-success">{$Lang.real_name_authentication}</span>
						{else}
						<span class="badge badge-light novalid">{$Lang.no_real_name_authentication}</span>
						{/if}
						{/if}
					</div>
					<div class="security-strength">
						<div class="security-label">
							{$Lang.account_security_strength}:
							<span class="security-text">
								{$percentage[0]}
							</span>
						</div>
						<div class="security-text">
							<div class="progress">
								<div class="progress-bar" role="progressbar" style="width: {$percentage[1]}%"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-5">
				<div class="security-meta">
					<ul class="list-inline mb-2">
						<li class="list-inline-item">
							<label class="mb-0">{$Lang.mailbox}：</label>
							{if $Userinfo.user.email}
							{$Userinfo.user.email}
							{else}
							{$Lang.unbound}
							{/if}
						</li>

						<li class="list-inline-item">
							<label class="mb-0">{$Lang.opening_time}：</label>
							{$Userinfo.user.create_time|date="Y-m-d H:i:s"}
						</li>
						<ul class="list-inline mb-0">
							<li class="list-inline-item">
								<label class="mb-0">{$Lang.mobile_phone}：</label>
								{if $Userinfo.user.phonenumber}
								{$Userinfo.user.phonenumber}
								{else}
								{$Lang.unbound}
								{/if}
							</li>
						</ul>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-8">
		<div class="card mb-3">
			<div class="card-body">
                <div class="decoration decoration-1"></div>
                <div class="decoration decoration-2"></div>
                <div class="decoration decoration-3"></div>
				<div class="security-items-container">
					<div class="security-items">

					<div class="security-item">
						<div class="security-item-icon bg-primary">
							<i class="far fa-key"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									{$Lang.login_password}
									{if $Userinfo.user.is_password}
									<small style="white-space: nowrap;">
										<i class="far fa-check-circle"></i>
										{$Lang.set}
									</small>
									{/if}
								</h4>
								<div class="security-item-desc">
									{$Lang.regularly_details}
								</div>
							</div>
							{if $Userinfo.user.is_password}
							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#modifyPasswordModal" onclick="showPassword()">{$Lang.modify}</a>
							{else}
							<a data-target="#modifyPasswordModal" onclick="showPassword()" data-toggle="modal"
								class="btn btn-outline-primary w-md waves-effect waves-light">{$Lang.set_password}</a>
							{/if}
						</div>
					</div>
					<!-- Security-item END -->
					{if $Userinfo.shd_allow_sms_send}
					<div class="security-item">
						<div class="security-item-icon bg-info">
							<i class="far fa-mobile-android"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									{$Lang.mobile_phone_binding}
									{if $Userinfo.user.phonenumber}
									<small style="white-space: nowrap;">
										<span
											class="phonehide">{$Userinfo.user.phonenumber|substr=0,3}****{$Userinfo.user.phonenumber|substr=7,11}</span>
										<i class="far fa-check-circle"></i>
										{$Lang.set}
									</small>
									{/if}
								</h4>
								<div class="security-item-desc">
									{$Lang.regularly_details}
								</div>
							</div>
							{if $Userinfo.user.phonenumber&&$BindPhoneChange==0}
							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#bindPhoneChangeModal1" id="bindPhoneChangeBtn1">{$Lang.modify}</a>
							{elseif $Userinfo.user.phonenumber&&$BindPhoneChange==1}

							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#bindPhoneChangeModal2" id="bindPhoneChangeBtn2">{$Lang.modify}</a>
							{else}

							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#bindPhoneModal">{$Lang.bind_now}</a>
							{/if}
						</div>
					</div>
					{/if}
					<!-- Security-item END -->

					{if $Userinfo.shd_allow_email_send}
					<div class="security-item">
						<div class="security-item-icon bg-primary">
							<i class="far fa-envelope-open"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									{$Lang.mailbox_binding}
									{if $Userinfo.user.email}
									<small style="white-space: nowrap;">
										<span class="phonehide">{$Userinfo.user.email}</span>
										<i class="far fa-check-circle"></i>
										{$Lang.set}
									</small>
									{/if}
								</h4>
								<div class="security-item-desc">
									{$Lang.reset_password_notice}
								</div>
							</div>
							{if $Userinfo.user.email&&$BindEmailChange==0}

							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#changeEmailHandleModal1">{$Lang.modify}</a>
							{elseif $Userinfo.user.email&&$BindEmailChange==1 /}

							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#changeEmailHandleModal2">{$Lang.modify}</a>
							{else}

							<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#bindEmailHandleModal">{$Lang.mailbox_binding}</a>
							{/if}
						</div>
					</div>
					{/if}
					<!-- Security-item END -->

					{if $Setting.certifi_open==1}
					<div class="security-item">
						<div class="security-item-icon bg-info">
							<i class="far fa-id-card"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									{$Lang.real_name_authentications}
									{if $Userinfo.user.certifi.status==1}
									<small style="white-space: nowrap;">
										<i class="far fa-check-circle"></i>
										{$Lang.set}
									</small>
									{/if}
								</h4>
								<div class="security-item-desc">
									{$Lang.personal_security}
								</div>
							</div>
							{if $Userinfo.user.certifi.status == 1}
							{if $Userinfo.user.certifi.type == 'certifi_person'}
							<a href="verified?action=enterprises&step=info"
								class="btn btn-outline-primary w-md waves-effect waves-light">去企业认证</a>
							{else}
							<a href="verified" class="btn btn-outline-primary w-md waves-effect waves-light">{$Lang.certified}</a>
							{/if}
							{else}
							<a href="verified" class="btn btn-primary w-md waves-effect waves-light">{$Lang.not_certified}</a>

							{/if}
						</div>
					</div>
					<!-- Security-item END -->
					{/if}

					{if $Userinfo.allow_second_verify}
					<div class="security-item">
						<div class="security-item-icon bg-info">
							<i class="far fa-shield-check"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									{$Lang.secondary_verification}
									{if $Userinfo.user.second_verify}
									<small style="white-space: nowrap;">
										<i class="far fa-check-circle"></i>
										{$Lang.set}
									</small>
									{/if}
								</h4>
								<div class="security-item-desc">
									{$Lang.secondary_verification_details}
								</div>
							</div>
							{if $Userinfo.user.second_verify}

							<a class="btn btn-primary w-md waves-effect waves-light"
								onclick="closeSecondHandleClick()">{$Lang.close}</a>
							{else}

							<a class="btn btn-primary w-md waves-effect waves-light" data-toggle="modal"
								data-target="#toggleSecondVerifyModalOpen">{$Lang.opens_two}</a>
							{/if}
						</div>
					</div>
					<!-- Security-item END -->
					{/if}

					{if $Userinfo.allow_resource_api}
					<!-- <div class="security-item">
						<div class="security-item-icon bg-primary">
							<i class="far fa-link"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									API
								</h4>
								<div class="security-item-desc">
									{$Lang.administration_details}
								</div>
							</div>

							<a class="btn btn-primary w-md waves-effect waves-light" onclick="showApiPwdHandleClick()">{$Lang.view_secret_key}</a>
						</div>
					</div> -->
					<!-- Security-item END -->
					{/if}

					{if $Bot==1}
					<div class="security-item">
						<div class="security-item-icon bg-primary">
							<i class="far fa-link-horizontal"></i>
						</div>
						<div class="security-item-info">
							<div class="security-item-text">
								<h4 class="security-item-title">
									{$Lang.interflow_license}
								</h4>
								<div class="security-item-desc">
									{$Lang.interflow_license_details}
								</div>
							</div>

							<a class="btn btn-primary w-md waves-effect waves-light"
								onclick="showInterflowlicenseHandleClick()">{$Lang.license}</a>
						</div>
					</div>
					<!-- Security-item END -->
					{/if}
				</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-4">

		{if $Userinfo.shd_allow_sms_send}
		<div class="card mb-3">
			<div class="card-body">
                <div class="decoration decoration-1"></div>
                <div class="decoration decoration-2"></div>
				<div class="security-item">
					<div class="security-item-info">
						<div class="security-item-text">
							<h4 class="security-item-title">
								{$Lang.sms_reminder}
							</h4>
							<div class="security-item-desc">
								{$Lang.sms_settings}
							</div>
						</div>
						{if !$Userinfo.user.phonenumber}
						<button data-v-2d646d70="" disabled="disabled" type="button"
							class="btn btn-outline-primary w-md waves-effect waves-light">{$Lang.need_bind_mobile_phone}</button>
						{elseif $Userinfo.user.is_login_sms_reminder==1}

						<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
							data-target="#loginSmsReminderModal">{$Lang.cancel}</a>
						{else}

						<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
							data-target="#loginSmsReminderModalOpen">{$Lang.opens_two}</a>
						{/if}
					</div>
				</div>
				<!-- Security-item END -->

			</div>
		</div>
		{/if}

		{if $Userinfo.shd_allow_email_send}
		<div class="card mb-3">
			<div class="card-body">
                <div class="decoration decoration-1"></div>
                <div class="decoration decoration-2"></div>
				<div class="security-item">
					<div class="security-item-info">
						<div class="security-item-text">
							<h4 class="security-item-title">
								{$Lang.email_reminder}
							</h4>
							<div class="security-item-desc">
								{$Lang.mailbox_settings}
							</div>
						</div>
						{if !$Userinfo.user.email}
						<button data-v-2d646d70="" disabled="disabled" type="button"
							class="btn btn-outline-primary w-md waves-effect waves-light">{$Lang.need_bind_mailbox}</button>
						{elseif $Userinfo.user.email_remind==1}

						<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
							data-target="#loginEmailReminderModal">{$Lang.cancel}</a>
						{else}

						<a class="btn btn-outline-primary w-md waves-effect waves-light" data-toggle="modal"
							data-target="#loginEmailReminderModalOpen">{$Lang.set_up_now}</a>
						{/if}
					</div>
				</div>
				<!-- Security-item END -->

			</div>
		</div>
		{/if}

		{if $Security.oauthBind}
		<div class="card">
			<div class="card-body">
                <div class="decoration decoration-1"></div>
                <div class="decoration decoration-2"></div>
				<h4 class="card-title mb-4">{$Lang.third_party_login}</h4>
				{foreach $Security.oauthBind as $oauth}
				<div class="security-item">
					<div class="security-item-icon">
						{$oauth.img}
					</div>
					<div class="security-item-info">
						<div class="security-item-text">
							<h4 class="security-item-title">
								{$oauth.name}

							</h4>
							<div class="security-item-desc">
								{if $oauth.oauth=="bind"}
								{$Lang.nickname}：{$oauth.username}
								{elseif $oauth.oauth == 'unbind'}
								{$Lang.unbound}
								{/if}
							</div>
						</div>
						{if $oauth.oauth == 'unbind'}
						<a href="{$oauth.url}" class="btn btn-primary w-md waves-effect waves-light">{$Lang.binding}</a>
						{elseif $oauth.oauth == 'bind'}
						<a href="javascript: getModal('oauthBind/untie/{$oauth.dirName}', '{$Lang.prompt}', '{$Lang.make_sure_unbind}{$oauth.name}?', {status: 1});"
							class="btn btn-outline-primary w-md waves-effect waves-light">{$Lang.solution}</a>
						{/if}
					</div>
				</div>
				<!-- Security-item END -->

				{/foreach}

			</div>
		</div>
		{else}
		<div class="security-item-image"></div>
		{/if}
	</div>
</div>


<!-- start: 修改密码模态框 -->
<div class="modal fade" id="modifyPasswordModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{if
					$Userinfo.user.is_password}{$Lang.change_password}{else}{$Lang.set_password}{/if}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="modifyPwdForm" class="needs-validation" novalidate>
					{if $Userinfo.user.is_password}
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{$Lang.original_password}</label>
						<div class="col-sm-8">
							<div class="input-group">
		
								<input type="password" name="old_password" class="form-control old_password" id="oldPwd"
									onblur="oldPwdBlur()" placeholder="{$Lang.security_please_enter_password}" required />
								<div class="input-group-append">
									<button type="button" class="btn btn-secondary  old_password_btn">
										<i class="far fa-eye"></i>
									</button>
								</div>
							</div>
							<input type="hidden" name="flag" vaule="1" />
						</div>
					</div>
					{else/}
					<input type="hidden" name="flag" vaule="2" />
					{/if}
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{if
							$Userinfo.user.is_password}{$Lang.new_password}{else}{$Lang.password}{/if}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="password" name="password" class="form-control password" id="pwd" onblur="pwdBlur()"
									placeholder="{if $Userinfo.user.is_password}{$Lang.security_please_new_password}{else}{$Lang.security_please_password}{/if}"
									required />
								<div class="input-group-append">
									<button type="button" class="btn btn-secondary  password_btn">
										<i class="far fa-eye"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{if
							$Userinfo.user.is_password}{$Lang.repeat_new_password}{else}{$Lang.repeat_then_password}{/if}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="password" name="re_password" class="form-control re_password" id="rePwd"
									onblur="rePwdBlur()"
									placeholder="{if $Userinfo.user.is_password}{$Lang.repeat_new_password}{else}{$Lang.repeat_password}{/if}"
									required />
								<div class="input-group-append">
									<button type="button" class="btn btn-secondary  re_password_btn">
										<i class="far fa-eye"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
					{if $Verify.allow_resetpwd_captcha==1&&$Userinfo.user.is_password}
					{include file="includes/verify" type="allow_resetpwd_captcha"}
					{elseif $Verify.allow_setpwd_captcha==1&&!$Userinfo.user.is_password}
					{include file="includes/verify" type="allow_setpwd_captcha"}
					{/if}
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="modifyPwdSubmit"
					onclick="modifyPwdCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<script>
	var _url = '';
	var phoneType = '{$BindPhoneChange}'
	var is_password = '{$Userinfo.user.is_password}';
	var emailType = '{$BindEmailChange}'
	var WebUrl = '/';
	//修改密码input事件
	function oldPwdBlur() {
		var oldPwd = document.getElementById('oldPwd')
		if (oldPwd && oldPwd.value == '') {
			oldPwd.classList.remove("is-valid"); //清除合法状态
			oldPwd.classList.add("is-invalid"); //添加非法状态
			return
		} else if (oldPwd) {
			oldPwd.classList.remove("is-invalid");
			oldPwd.classList.add("is-valid");
		}
	}

	function validateCode() {
		var valCode = document.getElementById('loginSmsReminderCode')
		if (valCode.value == '') {
			valCode.classList.remove("is-valid"); //清除合法状态
			valCode.classList.add("is-invalid"); //添加非法状态
			return
		} else if (valCode) {
			valCode.classList.remove("is-invalid");
			valCode.classList.add("is-valid");
		}
	}

	function emailReminderCode() {
		var emailReminderCode = document.getElementById('loginEmailReminderCode')
		if (emailReminderCode.value == '') {
			emailReminderCode.classList.remove("is-valid"); //清除合法状态
			emailReminderCode.classList.add("is-invalid"); //添加非法状态
			return
		} else if (emailReminderCode) {
			emailReminderCode.classList.remove("is-invalid");
			emailReminderCode.classList.add("is-valid");
		}
	}

	function pwdBlur() {
		var pwd = document.getElementById('pwd')
		if (pwd.value == '') {
			pwd.classList.remove("is-valid"); //清除合法状态
			pwd.classList.add("is-invalid"); //添加非法状态
			return
		} else {
			pwd.classList.remove("is-invalid");
			pwd.classList.add("is-valid");
		}
	}

	function rePwdBlur() {
		var rePwd = document.getElementById('rePwd')
		if (rePwd.value == '') {
			rePwd.classList.remove("is-valid"); //清除合法状态
			rePwd.classList.add("is-invalid"); //添加非法状态
			return
		} else {
			rePwd.classList.remove("is-invalid");
			rePwd.classList.add("is-valid");
		}
	}
	//修改手机绑定模态框 input事件
	function bindPhoneChangeCode1Blur() {
		var code1 = document.getElementById('bindPhoneChangeCode1')
		if (code1.value == '') {
			code1.classList.remove("is-valid"); //清除合法状态
			code1.classList.add("is-invalid"); //添加非法状态
			return
		} else {
			code1.classList.remove("is-invalid");
			code1.classList.add("is-valid");
		}
	}
	//修改手机绑定模态框 input事件
	function changeEmailHandleCodeBlur() {
		var code1 = document.getElementById('changeEmailHandleCode1')
		if (code1.value == '') {
			code1.classList.remove("is-valid"); //清除合法状态
			code1.classList.add("is-invalid"); //添加非法状态
			return
		} else {
			code1.classList.remove("is-invalid");
			code1.classList.add("is-valid");
		}
	}
</script>
<!-- end: 修改密码模态框 -->

<!-- start: 手机绑定模态框 -->
<div class="modal fade" id="bindPhoneModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{$Lang.mobile_phone_binding}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<input type="hidden" name="phone_code" value="+86" />
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{$Lang.phone_number}</label>
						<div class="col-sm-8">
							<input type="text" name="phone" class="form-control" id="phoneNum" placeholder="{$Lang.input_mobile}" />
						</div>
					</div>
					{if $Verify.allow_phone_bind_captcha==1}
					{include file="includes/verify" type="allow_phone_bind_captcha" id="captchaPhone1"}
					{/if}
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" class="form-control " id="code"
									placeholder="{$Lang.please_enter_code}" />
								<div class="input-group-append">
									<button
										onclick="getCheckCode('bind_phone','phone','bind-phone-button','post', undefined, 'bindPhoneModal','captcha_allow_phone_bind_captchacaptchaPhone1')"
										class="btn btn-primary bind-phone-button" type="button">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="bindPhoneSubmit"
					onclick="bindPhoneCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start: 修改手机绑定 -->
<div class="modal fade" id="bindPhoneChangeModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{$Lang.verify_original_phone}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<input type="hidden" name="type" value="{if $BindPhoneChange==0}1{else}2{/if}" />
					<input type="hidden" name="phone_code" value="+86" />
					<div class="form-group row mb-4">
						<label class="col-sm-3 col-form-label text-right">{$Lang.phone_number}</label>
						<div class="col-sm-8">
							{if $Userinfo.user.phonenumber}
							<input type="text" name="tel" readonly id="oldTel"
								value="{$Userinfo.user.phonenumber|substr=0,3}****{$Userinfo.user.phonenumber|substr=7,11}"
								class="form-control" placeholder="{$Lang.input_mobile}" />
							{/if}
						</div>
					</div>
					{if $Verify.allow_phone_bind_captcha==1}
					{include file="includes/verify" type="allow_phone_bind_captcha" id="captchaPhone2"}
					{/if}
					<div class="form-group row mb-0">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" id="bindPhoneChangeCode1" class="form-control "
									onblur="bindPhoneChangeCode1Blur()" placeholder="{$Lang.please_enter_code}" />
								<div class="input-group-append">
									<button
										onclick="getCheckCode('bind_phone_code','tel','bind-phone-button1','get',1, 'bindPhoneChangeModal1','captcha_allow_phone_bind_captchacaptchaPhone2')"
										class="btn btn-primary bind-phone-button1" type="button">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="bindPhoneChangeSubmit1"
					onclick="phoneChangeBtn()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="bindPhoneChangeModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{$Lang.bind_mobile_phone}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<input type="hidden" name="type" value="{if $BindPhoneChange==0}1{else}2{/if}" />
					<input type="hidden" name="phone_code" value="+86" />
					<div class="form-group row mb-4">
						<label class="col-sm-3 col-form-label text-right">{$Lang.phone_number}</label>
						<div class="col-sm-8">
							<input type="text" name="tel" id="newTel" class="form-control" placeholder="{$Lang.input_mobile}" />
						</div>
					</div>
					{if $Verify.allow_phone_bind_captcha==1}
					{include file="includes/verify" type="allow_phone_bind_captcha" id="captchaPhone3"}
					{/if}
					<div class="form-group row mb-0">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" id="bindPhoneChangeCode2" class="form-control "
									placeholder="{$Lang.please_enter_code}" />
								<div class="input-group-append">
									<button id="bindPhoneChangeCodeBtn2"
										onclick="getCheckCode('bind_phone_code','tel','bind-phone-button2','get',2, 'bindPhoneChangeModal2','captcha_allow_phone_bind_captchacaptchaPhone3')"
										class="btn btn-primary bind-phone-button2" type="button">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="bindPhoneChangeSubmit2"
					onclick="phoneChangeBtn2()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start 短信提醒 关闭 -->
<div class="modal fade" id="loginSmsReminderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{$Lang.turn_off_sms_alert}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<input type="hidden" name="phone_code" value="+86" />
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{$Lang.phone_number}</label>
						<div class="col-sm-8">
							<input type="text" name="name" readonly
								value="{$Userinfo.user.phonenumber|substr=0,3}****{$Userinfo.user.phonenumber|substr=7,11}"
								class="form-control" placeholder="{$Lang.input_mobile}" />
						</div>
					</div>
					{if $Verify.allow_cancel_sms_captcha==1}
					{include file="includes/verify" type="allow_cancel_sms_captcha" id="captchaSms1"}
					{/if}
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" class="form-control " id="loginSmsReminderCode"
									placeholder="{$Lang.please_enter_code}" onblur="validateCode()" />
								<div class="input-group-append">
									<button
										onclick="getCheckCode('remind_send','phone','bind-phone-button','get', undefined, 'loginSmsReminderModal',id='captcha_allow_cancel_sms_captchacaptchaSms1')"
										class="btn btn-primary bind-phone-button" type="button">{$Lang.get_code}</button>
								</div>

							</div>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="loginSmsReminderSubmit"
					onclick="loginSmsReminderCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start: 短信提醒 开启 -->
<div class="modal fade" id="loginSmsReminderModalOpen" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.prompt}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="d-flex align-items-center">
					<i class="far fa-exclamation-circle fs-20 text-warning mr-2"></i>
					{$Lang.on_reminder}
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="loginSmsReminderSubmitOpen"
					onclick="smsSubmitOpenBtn()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>

<!-- end -->


<!-- start: 邮箱绑定 -->
<div class="modal fade" id="bindEmailHandleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.mailbox_binding}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<div class="form-group row mb-4">
						<label class="col-sm-3 col-form-label text-right">{$Lang.mailbox}</label>
						<div class="col-sm-8">
							<input type="text" name="email" class="form-control" placeholder="{$Lang.please_input_email}"
								id="bindEmailHandleEmail" />
						</div>
					</div>
					{if $Verify.allow_email_bind_captcha==1}
					{include file="includes/verify" type="allow_email_bind_captcha" id="captchaEmail1"}
					{/if}
					<div class="form-group row mb-0">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" class="form-control" placeholder="{$Lang.please_enter_code}"
									id="bindEmailHandleCode" />
								<div class="input-group-append">
									<button class="btn btn-primary bind-email-button"
										onclick="getCheckCode('bind_email','email','bind-email-button','post', undefined, 'bindEmailHandleModal','captcha_allow_email_bind_captchacaptchaEmail1')"
										type="button" id="button-addon2">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="bindEmailHandleSubmit"
					onclick="bindEmailHandleCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start: 邮箱修改 -->
<div class="modal fade" id="changeEmailHandleModal1" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.verify_original_email}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<input type="hidden" name="type" value="{if $BindEmailChange==0}1{else}2{/if}" />
					<div class="form-group row mb-4">
						<label class="col-sm-3 col-form-label text-right">{$Lang.mailbox}</label>
						<div class="col-sm-8">
							<input type="text" name="email" id="changeEmailHandleEmail1" readonly value="{$Userinfo.user.email}"
								class="form-control" placeholder="{$Lang.please_input_email}" />
						</div>
					</div>
					{if $Verify.allow_email_bind_captcha==1}
					{include file="includes/verify" type="allow_email_bind_captcha" id="captchaEmail2"}
					{/if}
					<div class="form-group row mb-0">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" id="changeEmailHandleCode1" onblur="changeEmailHandleCodeBlur()"
									class="form-control" placeholder="{$Lang.please_enter_code}" />
								<div class="input-group-append">
									<button class="btn btn-primary bind-email-button1"
										onclick="getCheckCode('change_email','email','bind-email-button1','post',1, 'changeEmailHandleModal1','captcha_allow_email_bind_captchacaptchaEmail2')"
										type="button" id="button-addon2">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="changeEmailHandleSubmit1"
					onclick="changeEmailBtn()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="changeEmailHandleModal2" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.bind_new_mailbox}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<input type="hidden" name="type" value="{if $BindEmailChange==0}1{else}2{/if}" id="captcha3" />
					<div class="form-group row mb-4">
						<label class="col-sm-3 col-form-label text-right">{$Lang.mailbox}</label>
						<div class="col-sm-8">
							<input type="text" name="email" id="changeEmailHandleEmail2" class="form-control"
								placeholder="{$Lang.please_input_email}" />
						</div>
					</div>
					{if $Verify.allow_email_bind_captcha==1}
					{include file="includes/verify" type="allow_email_bind_captcha" id="captchaEmail3"}
					{/if}
					<div class="form-group row mb-0">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" id="changeEmailHandleCode2" class="form-control"
									placeholder="{$Lang.please_enter_code}" />
								<div class="input-group-append">
									<button class="btn btn-primary bind-email-button2"
										onclick="getCheckCode('change_email','email','bind-email-button2','post',2, 'changeEmailHandleModal2','captcha_allow_email_bind_captchacaptchaEmail3')"
										type="button" id="button-addon2">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="changeEmailHandleSubmit2"
					onclick="changeEmailBtn2()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start: 邮箱提醒 关闭 -->
<div class="modal fade id="loginEmailReminderModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.off_reminder}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" value="{$Token}" />
					<div class="form-group row mb-4">
						<label class="col-sm-3 col-form-label text-right">{$Lang.mailbox}</label>
						<div class="col-sm-8">
							<input type="text" name="email" readonly value="{$Userinfo.user.email}" class="form-control"
								placeholder="{$Lang.please_input_email}" />
						</div>
					</div>
					{if $Verify.allow_cancel_email_captcha==1}
					{include file="includes/verify" type="allow_cancel_email_captcha"}
					{/if}
					<div class="form-group row mb-0">
						<label class="col-sm-3 col-form-label text-right">{$Lang.verification_code}</label>
						<div class="col-sm-8">
							<div class="input-group">
								<input type="text" name="code" id="loginEmailReminderCode" class="form-control"
									placeholder="{$Lang.please_enter_code}" onblur="emailReminderCode()" />
								<div class="input-group-append">
									<button class="btn btn-primary bind-email-button"
										onclick="getCheckCode('remind_email_send','email','bind-email-button','get', undefined, 'loginEmailReminderModal','captcha_allow_cancel_email_captcha')"
										type="button" id="button-addon2">{$Lang.get_code}</button>
								</div>
							</div>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="loginEmailReminderSubmit"
					onclick="loginEmailReminderCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start: 邮箱提醒 开启 -->
<div class="modal fade" id="loginEmailReminderModalOpen" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.prompt}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="d-flex align-items-center">
					<i class="far fa-exclamation-circle fs-20 text-warning mr-2"></i>
					{$Lang.open_mailbox_reminder}
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="loginEmailReminderSubmitOpen"
					onclick="loginEmailReminderSubmitOpen()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>
<!-- start: 二次验证 开启 -->
<div class="modal fade" id="toggleSecondVerifyModalOpen" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.prompt}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="d-flex align-items-center">
					<i class="far fa-exclamation-circle fs-20 text-warning mr-2"></i>
					{$Lang.determine_verification}
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
				<button type="button" class="btn btn-primary mr-2" id="toggleSecondVerifySubmitOpen"
					onclick="toggleSecondVerifySubmitOpen()">{$Lang.determine}</button>
			</div>
		</div>
	</div>
</div>

<!-- start: api -->
<div class="modal fade" id="getapiModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.modify_key}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label text-right">{$Lang.api_key}</label>
						<div class="col-sm-9">
							<div class="input-group">
								<input id="copy-apiss" type="password" name="api" value="{$Userinfo.user.api_password}"
									data-clipboard-text="{$Userinfo.user.api_password}" class="form-control api_passwordss"
									placeholder="{$Lang.please_enter_code}" />
								<div class="input-group-append">
									<button type="button" class="btn btn-secondary btn-password">
										<i class="far fa-eye"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group row mb-0">
						<label class="col-sm-2"></label>
						<div class="col-sm-8">
							<button type="button" class="btn btn-default btn-sm btn-copies w-xs mr-1"
								data-clipboard-target="#copy-apiss" id="btn-copies" onclick="cpBtn()">
								{$Lang.copy}
							</button>
							<button type="button" onClick="getApiPwd()" class="btn btn-default btn-sm btn-random w-xs">
								{$Lang.reset}
							</button>
						</div>
					</div>
				</form>
				<script src="/themes/clientarea/default/assets/libs/clipboard/clipboard.min.js"></script>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="getapiModalSubmit"
					onclick="getapiModalCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>

<!-- start: interflow -->
<div class="modal fade" id="interflowModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{$Lang.seting_license}</h5>

				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="accountbind-form">
					
					<div class="form-group row">
						<label class="col-sm-2 col-form-label text-right" name="i_type">
						</label>
						<div class="col-sm-9">
							<div class="input-group">
								<input id="copy-apiss" name="qq" class="form-control"/>
							</div>
						</div>
					</div>

				</form>
				<script src="/themes/clientarea/default/assets/libs/clipboard/clipboard.min.js"></script>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary mr-2" id="getapiModalSubmit"
					onclick="getapiModalCheckForm()">{$Lang.determine}</button>
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
			</div>
		</div>
	</div>
</div>

<script src="/themes/clientarea/default/assets/js/security.js?v={$Ver}"></script>

