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

.card-body {
 padding: 25px;
 position: relative;
 overflow: hidden;
}

.card-body::before {
 content: "";
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 3px;
 background: linear-gradient(90deg, var(--primary), var(--primary-light), var(--primary));
 opacity: 0.7;
}

.card-title {
 font-size: 1.25rem;
 font-weight: 700;
 color: var(--dark);
 margin-bottom: 1.5rem;
 position: relative;
 display: inline-block;
}

.card-title::after {
 content: "";
 position: absolute;
 bottom: -8px;
 left: 0;
 width: 40px;
 height: 3px;
 background: var(--primary);
 border-radius: 3px;
}

/* 表单控件样式 */
.form-group {
 margin-bottom: 1.5rem;
 position: relative;
}

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

select.form-control {
 background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='4' height='5' viewBox='0 0 4 5'%3e%3cpath fill='%23f08a5d' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e");
 background-repeat: no-repeat;
 background-position: right 1rem center;
 background-size: 8px 10px;
 padding-right: 2.5rem;
 -webkit-appearance: none;
 -moz-appearance: none;
 appearance: none;
}

textarea.form-control {
 min-height: 100px;
 resize: vertical;
}

/* 标签样式 */
label {
 font-weight: 500;
 color: var(--dark);
 margin-bottom: 0.5rem;
 font-size: 0.9rem;
}

/* 复选框样式 */
.custom-control-input:checked ~ .custom-control-label::before {
 background-color: var(--primary);
 border-color: var(--primary);
 box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
}

.custom-control-label::before {
 transition: all 0.3s ease;
}

.custom-control-input:focus ~ .custom-control-label::before {
 box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
}

.custom-control-input:checked ~ .custom-control-label {
 font-weight: 600;
 color: var(--primary-dark);
}

/* 提交按钮样式 */
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

/* 装饰元素 */
.decoration {
 position: absolute;
 border-radius: 50%;
 background: linear-gradient(135deg, var(--primary), var(--secondary));
 opacity: 0.1;
 z-index: 0;
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

@keyframes float {
 0% { transform: translateY(0px); }
 50% { transform: translateY(-10px); }
 100% { transform: translateY(0px); }
}

/* 响应式调整 */
@media (max-width: 992px) {
 .card-body {
   padding: 20px;
 }
}

@media (max-width: 768px) {
 .card-body {
   padding: 15px;
 }
 
 .form-control {
   font-size: 0.9rem;
   padding: 0.5rem 0.8rem;
 }
 
 .btn-primary {
   padding: 0.5rem 1.2rem;
 }
}

@media (max-width: 576px) {
 .card-body {
   padding: 15px 10px;
 }
 
 .form-group {
   margin-bottom: 1rem;
 }
 
 .form-control {
   font-size: 0.85rem;
   padding: 0.4rem 0.7rem;
 }
 
 .btn-primary {
   padding: 0.4rem 1rem;
   font-size: 0.9rem;
 }
 
 .card-title {
   font-size: 1.1rem;
 }
 
 label {
   font-size: 0.85rem;
 }
}

/* 错误提示样式 */
.invalid-feedback {
 color: #fc5c65;
 font-size: 0.8rem;
 margin-top: 0.25rem;
}

.was-validated .form-control:invalid, 
.form-control.is-invalid {
 border-color: #fc5c65;
 background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='none' stroke='%23fc5c65' viewBox='0 0 12 12'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23fc5c65' stroke='none'/%3e%3c/svg%3e");
 background-repeat: no-repeat;
 background-position: right calc(0.375em + 0.1875rem) center;
 background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
}

.was-validated .form-control:invalid:focus, 
.form-control.is-invalid:focus {
 border-color: #fc5c65;
 box-shadow: 0 0 0 0.2rem rgba(252, 92, 101, 0.25);
}

/* 成功提示样式 */
.was-validated .form-control:valid, 
.form-control.is-valid {
 border-color: #28c76f;
 background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath fill='%2328c76f' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e");
 background-repeat: no-repeat;
 background-position: right calc(0.375em + 0.1875rem) center;
 background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
}

.was-validated .form-control:valid:focus, 
.form-control.is-valid:focus {
 border-color: #28c76f;
 box-shadow: 0 0 0 0.2rem rgba(40, 199, 111, 0.25);
}

/* 表单分组样式 */
.form-section {
 position: relative;
 padding: 20px;
 margin-bottom: 20px;
 border-radius: 10px;
 background-color: rgba(240, 138, 93, 0.03);
 border: 1px solid rgba(240, 138, 93, 0.1);
}

.form-section-title {
 position: absolute;
 top: -12px;
 left: 20px;
 background-color: white;
 padding: 0 10px;
 font-size: 0.9rem;
 font-weight: 600;
 color: var(--primary);
}

/* 分隔线样式 */
.section-divider {
 height: 1px;
 background: linear-gradient(90deg, rgba(240, 138, 93, 0.2), rgba(240, 138, 93, 0.05), rgba(240, 138, 93, 0.2));
 margin: 30px 0;
 position: relative;
}

.section-divider::before {
 content: "";
 position: absolute;
 width: 40px;
 height: 3px;
 background: var(--primary);
 top: -1px;
 left: 50%;
 transform: translateX(-50%);
 border-radius: 3px;
}
</style>

{if $ErrorMsg}
{include file="error/alert" value="$ErrorMsg"}
{/if}

{if $SuccessMsg}
{include file="error/notifications" value="$SuccessMsg" url=""}
{/if}

<form method="post" class="needs-validation" novalidate>
  <div class="card">
    <div class="card-body">
      <div class="decoration decoration-1"></div>
      <div class="decoration decoration-2"></div>
      <h4 class="card-title mb-4">{$Lang.contact_information}</h4>
      <div class="row">
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="email-input">{$Lang.email_address}</label>
            <input type="text" class="form-control" id="email-input" value="{$Userinfo.user.email}" placeholder="" readonly>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="phone-input">{$Lang.phone_number}</label>
            <input type="text" class="form-control" id="phone-input" value="{$Userinfo.user.phonenumber}" placeholder="" readonly>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="qq-input">{$Lang.qq_number}</label>
            <input type="text" data-parsley-type="number" class="form-control" id="qq-input" name="qq" value="{$Userinfo.user.qq}"
              placeholder="{$Lang.please_enter_qq_number}" oninput="value=value.replace(/[^\d]/g,'')">
          </div>
        </div>
      </div>
      
      <div class="section-divider"></div>
      
      <h4 class="card-title mb-4">{$Lang.details}</h4>
      <div class="row">
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="username-input">{$Lang.real_name}</label>
            <input type="text" class="form-control" id="username-input" name="username" value="{$Userinfo.user.username}" required />
            <div class="invalid-feedback">
              {$Lang.real_name} {$Lang.is_required}
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="company-input">{$Lang.corporate_name}</label>
            <input type="text" class="form-control" id="company-input" name="companyname" value="{$Userinfo.user.companyname}"
              placeholder="{$Lang.please_enter_company_name}">
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="country-select">{$Lang.country}</label>
            <select class="form-control" id="country-select" name="country">
              {foreach $Details.areas.country as $country}
              <option {if $country.name==$Userinfo.user.country}selected{/if} value="{$country.name}">{$country.name}</option>
              {/foreach}
            </select>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="province-input">{$Lang.province}</label>
            <input type="text" class="form-control" id="province-input" name="province" value="{$Userinfo.user.province}">
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="city-input">{$Lang.city}</label>
            <input type="text" class="form-control" id="city-input" name="city" value="{$Userinfo.user.city}">
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="region-input">{$Lang.region}</label>
            <input type="text" class="form-control" id="region-input" name="region" value="{$Userinfo.user.region}">
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="address-input">{$Lang.address}</label>
            <input type="text" class="form-control" id="address-input" name="address1" value="{$Userinfo.user.address1}">
          </div>
        </div>
      </div>
      
      <div class="section-divider"></div>
      
      <h4 class="card-title mb-4">{$Lang.other_information}</h4>
      <div class="row">
        <div class="col-sm-12 col-12">
          <div class="form-group">
            <label for="payment-select">{$Lang.default_payment}</label>
            {if $Userinfo.gateways}
            <select class="form-control" id="payment-select" name="defaultgateway">
              {foreach $Userinfo.gateways as $gateway}
              <option value="{$gateway.name}" {if $Userinfo.user.defaultgateway==$gateway.name}selected{/if}>
                {$gateway.title}</option>
              {/foreach}
            </select>
            {/if}
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label for="group-input">{$Lang.user_group}</label>
            <input type="text" class="form-control" id="group-input" value="{$Userinfo.client_group.group_name|default="默认分组"}"
              readonly="">
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label>{$Lang.marketing_information}</label>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="marketing_emails_opt_in"
                name="marketing_emails_opt_in" value="1" {if $Userinfo.user.marketing_emails_opt_in==1}
                checked="checked" {/if}>
              <label class="custom-control-label" for="marketing_emails_opt_in">{$Lang.accept_marketing_information}</label>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <div class="form-group">
            <label>{$Lang.send_close_title}</label>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="send_close_in"
                     name="send_close" value="1" {if $Userinfo.user.send_close==1}
                checked="checked" {/if}>
              <label class="custom-control-label" for="send_close_in">{$Lang.send_close}</label>
            </div>
          </div>
        </div>
        
        {if $Userinfo.customs}
        <div class="col-12">
          <div class="form-section mt-4">
            <span class="form-section-title">{$Lang.custom_fields}</span>
            <div class="row">
              {foreach $Userinfo.customs as $custom}
              <div class="col-sm-6 col-12">
                <div class="form-group" data-order="{$custom.sortorder}">
                  <label for="custom-{$custom.id}">{$custom.fieldname}</label>
                  {if $custom.fieldtype == 'dropdown'}
                  <select class="form-control" id="custom-{$custom.id}" name="custom[{$custom.id}]">
                    {foreach :explode(",",$custom.fieldoptions) as $field}
                    <option {if $field==$custom.value}selected{/if}>{$field}</option>
                    {/foreach}
                  </select>
                  {elseif $custom.fieldtype == 'text'}
                  <input type="text" class="form-control" id="custom-{$custom.id}" name="custom[{$custom.id}]" value="{$custom.value}"
                    placeholder="{$custom.description}" {if $custom.required}required{/if} />
                  {elseif $custom.fieldtype == 'password'}
                  <input type="password" class="form-control" id="custom-{$custom.id}" name="custom[{$custom.id}]" value="{$custom.value}"
                    placeholder="{$custom.description}" {if $custom.required}required{/if} />
                  {elseif $custom.fieldtype == 'link'}
                  <input type="text" class="form-control" id="custom-{$custom.id}" name="custom[{$custom.id}]" value="{$custom.value}"
                    placeholder="{$custom.description}" {if $custom.required}required{/if} />
                  {elseif $custom.fieldtype == 'tickbox'}
                  <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="custom-{$custom.id}" name="custom[{$custom.id}]" 
                      {if $custom.value}checked{/if} value="1">
                    <label class="custom-control-label" for="custom-{$custom.id}">{$custom.description}</label>
                  </div>
                  {elseif $custom.fieldtype == 'textarea'}
                  <textarea class="form-control" id="custom-{$custom.id}" name="custom[{$custom.id}]" rows="5"
                    placeholder="{$custom.description}">{$custom.value}</textarea>
                  {/if}
                  {if $custom.required}
                  <div class="invalid-feedback">
                    {$custom.fieldname} {$Lang.is_required}
                  </div>
                  {/if}
                </div>
              </div>
              {/foreach}
            </div>
          </div>
        </div>
        {/if}
        
        <div class="col-sm-12 mt-4">
          <div class="form-group mb-0 text-center">
            <button type="submit" class="btn btn-primary px-5 submitBtn">
              <i class="bx bx-save mr-2"></i>{$Lang.submit}
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>

<script>
// Form validation
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
          
          // Find the first invalid element and focus it
          const invalidElement = form.querySelector(':invalid');
          if (invalidElement) {
            invalidElement.focus();
            
            // Scroll to the invalid element with smooth animation
            invalidElement.scrollIntoView({
              behavior: 'smooth',
              block: 'center'
            });
          }
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

// Add animation to form elements
document.addEventListener('DOMContentLoaded', function() {
  // Animate form groups on page load
  const formGroups = document.querySelectorAll('.form-group');
  formGroups.forEach((group, index) => {
    group.style.opacity = '0';
    group.style.transform = 'translateY(20px)';
    
    setTimeout(() => {
      group.style.transition = 'all 0.5s ease';
      group.style.opacity = '1';
      group.style.transform = 'translateY(0)';
    }, 100 + (index * 50));
  });
  
  // Add ripple effect to submit button
  const submitBtn = document.querySelector('.submitBtn');
  if (submitBtn) {
    submitBtn.addEventListener('mousedown', function(e) {
      const x = e.clientX - e.target.getBoundingClientRect().left;
      const y = e.clientY - e.target.getBoundingClientRect().top;
      
      const ripple = document.createElement('span');
      ripple.style.position = 'absolute';
      ripple.style.width = '1px';
      ripple.style.height = '1px';
      ripple.style.borderRadius = '50%';
      ripple.style.backgroundColor = 'rgba(255, 255, 255, 0.7)';
      ripple.style.transform = 'scale(0)';
      ripple.style.left = x + 'px';
      ripple.style.top = y + 'px';
      ripple.style.animation = 'ripple 0.6s linear';
      
      this.appendChild(ripple);
      
      setTimeout(() => {
        ripple.remove();
      }, 600);
    });
    
    // Add keyframe animation for ripple effect
    const style = document.createElement('style');
    style.textContent = `
      @keyframes ripple {
        to {
          transform: scale(100);
          opacity: 0;
        }
      }
    `;
    document.head.appendChild(style);
  }
  
  // Add hover effect to form controls
  const formControls = document.querySelectorAll('.form-control:not([readonly])');
  formControls.forEach(control => {
    control.addEventListener('mouseenter', function() {
      this.style.transform = 'translateY(-2px)';
      this.style.boxShadow = '0 5px 15px rgba(240, 138, 93, 0.15)';
    });
    
    control.addEventListener('mouseleave', function() {
      this.style.transform = '';
      this.style.boxShadow = '';
    });
  });
});
</script>

