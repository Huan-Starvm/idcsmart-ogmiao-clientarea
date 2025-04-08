{if $ErrorMsg}
{include file="error/alert" value="$ErrorMsg"}
{/if}

{if $SuccessMsg}
{include file="error/notifications" value="$SuccessMsg" url="/clientarea"}
{/if}

<script src="/themes/clientarea/default/assets/js/public.js?v={$Ver}"></script>
<script>
    var mk = '{$Setting.msfntk}';
</script>

<style>
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
  --card-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
  --card-hover-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
  --input-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
  --input-focus-shadow: 0 0 0 3px rgba(240, 138, 93, 0.2);
  --btn-shadow: 0 5px 15px rgba(240, 138, 93, 0.3);
  --btn-hover-shadow: 0 8px 25px rgba(240, 138, 93, 0.4);
}

body {
  background: linear-gradient(135deg, #f8f9fa 0%, #f0f2f5 100%);
  background-image: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23f08a5d' fill-opacity='0.05' fill-rule='evenodd'/%3E%3C/svg%3E");
  font-family: "Poppins", "PingFang SC", "Microsoft YaHei", "微软雅黑", "Hiragino Sans GB", "STHeiti",
    "WenQuanYi Micro Hei", sans-serif;
  color: var(--dark);
  line-height: 1.6;
}

.page-title-box h4.mb-0.font-size-18,
.page-title-box .page-title-right,
.breadcrumb-item,
.page-title-box {
  display: none !important;
  visibility: hidden !important;
  height: 0 !important;
  opacity: 0 !important;
  overflow: hidden !important;
  margin: 0 !important;
  padding: 0 !important;
}

.page-content {
  padding-top: 0 !important;
}

.container-fluid {
  padding-top: 0 !important;
  padding-left: 0 !important;
  padding-right: 0 !important;
}

.pwreset-container {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 4rem 0;
  position: relative;
  z-index: 1;
  width: 100%;
  box-sizing: border-box;
  background: linear-gradient(135deg, rgba(240, 138, 93, 0.03) 0%, rgba(249, 179, 132, 0.03) 100%);
}

.pwreset-card {
  width: 100%;
  max-width: 400px;
  background: #ffffff;
  border-radius: 20px;
  box-shadow: var(--card-shadow);
  overflow: hidden;
  position: relative;
  transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  border: 1px solid rgba(240, 138, 93, 0.1);
  box-sizing: border-box;
}

.pwreset-card:hover {
  box-shadow: var(--card-hover-shadow);
  transform: translateY(-5px);
}

.pwreset-header {
  padding: 1.8rem 1.8rem 1rem;
  text-align: center;
  position: relative;
}

.pwreset-logo {
  max-height: 70px;
  margin-bottom: 1.5rem;
  transition: all 0.3s ease;
  filter: drop-shadow(0 2px 5px rgba(0, 0, 0, 0.1));
}

.pwreset-logo:hover {
  transform: scale(1.05);
}

.pwreset-body {
  padding: 0.8rem 1.8rem 1.8rem;
  position: relative;
}

.pwreset-tabs {
  display: flex;
  margin-bottom: 1.5rem;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  position: relative;
}

.pwreset-tab {
  flex: 1;
  text-align: center;
  padding: 0.8rem 0;
  font-weight: 500;
  color: var(--gray);
  cursor: pointer;
  position: relative;
  transition: all 0.3s ease;
  font-size: 0.95rem;
}

.pwreset-tab.active {
  color: var(--primary);
  font-weight: 600;
}

.pwreset-tab.active::after {
  content: "";
  position: absolute;
  bottom: -1px;
  left: 25%;
  width: 50%;
  height: 3px;
  background-color: var(--primary);
  border-radius: 3px;
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.27, 1.55);
}

.pwreset-tab:hover:not(.active) {
  color: var(--primary-dark);
}

.pwreset-form-group {
  margin-bottom: 1.2rem;
  position: relative;
}

.pwreset-label {
  display: block;
  margin-bottom: 0.4rem;
  font-weight: 500;
  color: var(--dark);
  font-size: 0.9rem;
  transition: all 0.3s ease;
}

.pwreset-input {
  width: 100%;
  height: 42px;
  padding: 0.6rem 1rem;
  font-size: 0.95rem;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 12px;
  transition: all 0.3s ease;
  background-color: #fff;
  box-shadow: var(--input-shadow);
}

.pwreset-input:focus {
  outline: none;
  border-color: var(--primary);
  box-shadow: var(--input-focus-shadow);
  transform: translateY(-2px);
}

.pwreset-input::placeholder {
  color: #aaa;
  opacity: 0.7;
}

.phone-input-group {
  display: flex;
  position: relative;
  border-radius: 12px;
  box-shadow: var(--input-shadow);
  transition: all 0.3s ease;
  overflow: hidden;
}

.phone-input-group:focus-within {
  box-shadow: var(--input-focus-shadow);
  transform: translateY(-2px);
}

.phone-input-group .pwreset-input-select {
  width: 30%;
  height: 42px;
  padding: 0.6rem 1rem;
  font-size: 0.95rem;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 12px 0 0 12px;
  background-color: #f8f9fa;
  transition: all 0.3s ease;
  border-right: none;
  appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 24 24' fill='none' stroke='%23f08a5d' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 10px center;
  padding-right: 30px;
}

.phone-input-group .pwreset-input {
  flex: 1;
  border-radius: 0 12px 12px 0;
  box-shadow: none;
}

.phone-input-group .pwreset-input:focus {
  transform: none;
}

.code-input-group {
  display: flex;
  position: relative;
  border-radius: 12px;
  box-shadow: var(--input-shadow);
  transition: all 0.3s ease;
  overflow: hidden;
}

.code-input-group:focus-within {
  box-shadow: var(--input-focus-shadow);
  transform: translateY(-2px);
}

.code-input-group .pwreset-input {
  border-radius: 12px 0 0 12px;
  box-shadow: none;
}

.code-input-group .pwreset-input:focus {
  transform: none;
}

.code-input-group .pwreset-input-group-append {
  display: flex;
}

.code-input-group .pwreset-input-group-append .btn {
  border-radius: 0 12px 12px 0;
  height: 42px;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0 1.5rem;
  white-space: nowrap;
  background-color: var(--primary);
  color: white;
  border: none;
  font-weight: 600;
  transition: all 0.3s ease;
  cursor: pointer;
}

.code-input-group .pwreset-input-group-append .btn:hover {
  background-color: var(--primary-dark);
}

.pwreset-btn {
  display: block;
  width: 100%;
  height: 42px;
  background-color: var(--primary);
  color: white;
  border: none;
  border-radius: 12px;
  font-weight: 600;
  font-size: 0.95rem;
  cursor: pointer;
  transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  margin-bottom: 1.5rem;
  text-align: center;
  line-height: 42px;
  box-shadow: var(--btn-shadow);
  position: relative;
  overflow: hidden;
}

.pwreset-btn::after {
  content: "";
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.0));
  transition: all 0.4s ease;
}

.pwreset-btn:hover {
  background-color: var(--primary-dark);
  transform: translateY(-3px);
  box-shadow: var(--btn-hover-shadow);
}

.pwreset-btn:hover::after {
  left: 100%;
}

.pwreset-btn:active {
  transform: translateY(-1px);
  box-shadow: var(--btn-shadow);
}

.pwreset-login {
  text-align: center;
  font-size: 0.9rem;
  color: var(--gray);
}

.pwreset-login a {
  color: var(--primary);
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s ease;
  margin-left: 5px;
}

.pwreset-login a:hover {
  color: var(--primary-dark);
  text-decoration: underline;
}

.pwreset-decoration {
  position: absolute;
  border-radius: 50%;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  opacity: 0.1;
  z-index: 0;
}

.pwreset-decoration-1 {
  width: 180px;
  height: 180px;
  top: -90px;
  right: -90px;
}

.pwreset-decoration-2 {
  width: 120px;
  height: 120px;
  bottom: -60px;
  left: -60px;
}

.pwreset-decoration-3 {
  width: 250px;
  height: 250px;
  top: 10%;
  left: 5%;
  position: fixed;
  border-radius: 50%;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  opacity: 0.03;
  z-index: 0;
}

.pwreset-decoration-4 {
  width: 350px;
  height: 350px;
  bottom: 5%;
  right: 5%;
  position: fixed;
  border-radius: 50%;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  opacity: 0.04;
  z-index: 0;
}

.tab-content {
  position: relative;
}

.tab-pane {
  display: none;
}

.tab-pane.active {
  display: block;
  animation: fadeIn 0.5s ease forwards;
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

@keyframes float {
  0% { transform: translateY(0px); }
  50% { transform: translateY(-10px); }
  100% { transform: translateY(0px); }
}

@keyframes pulse {
  0% { transform: scale(1); }
  50% { transform: scale(1.05); }
  100% { transform: scale(1); }
}

.spinner {
  display: inline-block;
  width: 16px;
  height: 16px;
  border: 2px solid rgba(255, 255, 255, 0.3);
  border-radius: 50%;
  border-top-color: #fff;
  animation: spin 1s ease-in-out infinite;
  margin-right: 8px;
}

@keyframes spin {
  to { transform: rotate(360deg); }
}

@media (max-width: 1200px) {
  .pwreset-card {
    max-width: 420px;
  }
}

@media (max-width: 992px) {
  .pwreset-card {
    max-width: 380px;
  }
  
  .pwreset-input,
  .phone-input-group .pwreset-input-select,
  .code-input-group .pwreset-input-group-append .btn,
  .pwreset-btn {
    height: 40px;
    font-size: 0.9rem;
  }
  
  .pwreset-btn {
    line-height: 40px;
  }

  .pwreset-header {
    padding: 2rem 2rem 1rem;
  }

  .pwreset-body {
    padding: 1rem 2rem 2rem;
  }

  .pwreset-logo {
    max-height: 60px;
  }

  .pwreset-decoration-3,
  .pwreset-decoration-4 {
    opacity: 0.02;
  }
}

@media (max-width: 768px) {
  .pwreset-card {
    max-width: 100%;
    width: 90%;
  }
  
  .pwreset-header {
    padding: 1.5rem 1.5rem 0.8rem;
  }
  
  .pwreset-body {
    padding: 0.8rem 1.5rem 1.5rem;
  }
  
  .pwreset-input,
  .phone-input-group .pwreset-input-select,
  .code-input-group .pwreset-input-group-append .btn,
  .pwreset-btn {
    height: 38px;
    font-size: 0.85rem;
  }
  
  .pwreset-btn {
    line-height: 38px;
  }
  
  .pwreset-form-group {
    margin-bottom: 1rem;
  }

  .pwreset-container {
    padding: 5rem 1rem 2rem;
  }

  .pwreset-card {
    max-width: 100%;
    width: 90%;
  }

  .pwreset-header {
    padding: 1.8rem 1.8rem 1rem;
  }

  .pwreset-body {
    padding: 0.8rem 1.5rem 1.5rem;
  }

  .pwreset-logo {
    max-height: 55px;
    margin-bottom: 1.2rem;
  }

  .pwreset-form-group {
    margin-bottom: 1.5rem;
  }

  .pwreset-input,
  .phone-input-group .pwreset-input-select,
  .code-input-group .pwreset-input-group-append .btn {
    height: 48px;
  }

  .pwreset-btn {
    height: 48px;
    line-height: 48px;
    font-size: 0.95rem;
    margin-bottom: 1.5rem;
  }

  .pwreset-decoration-1 {
    width: 150px;
    height: 150px;
    top: -75px;
    right: -75px;
  }

  .pwreset-decoration-2 {
    width: 100px;
    height: 100px;
    bottom: -50px;
    left: -50px;
  }
}

@media (max-width: 576px) {
  body, html {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    overflow-x: hidden;
  }

  .pwreset-container {
    padding: 5rem 0.5rem 1rem;
    margin: 0;
    width: 100%;
    box-sizing: border-box;
  }

  .pwreset-card {
    width: 100%;
    margin: 0 auto;
    box-sizing: border-box;
  }

  .pwreset-header {
    padding: 1.5rem 1.5rem 0.8rem;
  }

  .pwreset-body {
    padding: 0.8rem 1.5rem 1.5rem;
  }

  .pwreset-logo {
    max-height: 50px;
    margin-bottom: 1rem;
  }

  .pwreset-tabs {
    margin-bottom: 1.5rem;
  }

  .pwreset-tab {
    padding: 0.8rem 0;
    font-size: 0.95rem;
  }

  .pwreset-form-group {
    margin-bottom: 1.2rem;
  }

  .pwreset-label {
    margin-bottom: 0.5rem;
    font-size: 0.9rem;
  }

  .pwreset-input,
  .phone-input-group .pwreset-input-select,
  .code-input-group .pwreset-input-group-append .btn {
    height: 45px;
    font-size: 0.95rem;
    padding: 0.6rem 1rem;
  }

  .pwreset-btn {
    height: 45px;
    line-height: 45px;
    font-size: 0.95rem;
    margin-bottom: 1.5rem;
  }

  .code-input-group {
    flex-direction: column;
  }

  .code-input-group .pwreset-input {
    width: 100%;
    border-radius: 12px;
    margin-bottom: 0.5rem;
  }

  .code-input-group .pwreset-input-group-append {
    width: 100%;
  }

  .code-input-group .pwreset-input-group-append .btn {
    width: 100%;
    border-radius: 12px;
  }
}

@media (max-width: 375px) {
  .pwreset-container {
    padding: 5rem 0.5rem 1rem;
  }

  .pwreset-card {
    width: 100%;
    border-radius: 10px;
  }

  .pwreset-header {
    padding: 1rem 1rem 0.5rem;
  }

  .pwreset-body {
    padding: 0.5rem 1rem 1rem;
  }

  .pwreset-logo {
    max-height: 45px;
  }

  .pwreset-tab {
    font-size: 0.9rem;
  }

  .pwreset-label {
    font-size: 0.85rem;
  }

  .pwreset-input,
  .phone-input-group .pwreset-input-select,
  .code-input-group .pwreset-input-group-append .btn {
    height: 42px;
    font-size: 0.9rem;
  }

  .pwreset-btn {
    height: 42px;
    line-height: 42px;
    font-size: 0.9rem;
  }

  .phone-input-group {
    flex-direction: column;
  }

  .phone-input-group .pwreset-input-select {
    width: 100%;
    border-radius: 12px;
    border-right: 1px solid rgba(0, 0, 0, 0.1);
    margin-bottom: 0.5rem;
  }

  .phone-input-group .pwreset-input {
    width: 100%;
    border-radius: 12px;
  }
}

@media (max-width: 320px) {
  .pwreset-input-select {
    width: 100%;
    padding: 0.6rem 0.4rem;
    font-size: 0.8rem;
  }

  .pwreset-input-group-append .btn {
    padding: 0 0.6rem;
    font-size: 0.75rem;
  }
}

.pwreset-card {
  will-change: transform;
  backface-visibility: hidden;
}

.pwreset-decoration {
  will-change: transform;
  backface-visibility: hidden;
}

@supports (-webkit-touch-callout: none) {
  .pwreset-container {
    min-height: -webkit-fill-available;
  }

  .pwreset-input,
  .pwreset-input-select,
  .pwreset-btn {
    -webkit-appearance: none;
    border-radius: 12px;
  }
}

@media (max-height: 500px) and (orientation: landscape) {
  .pwreset-container {
    padding: 1rem;
  }

  .pwreset-card {
    max-width: 500px;
  }

  .pwreset-header {
    padding: 1rem 1.5rem 0.5rem;
  }

  .pwreset-body {
    padding: 0.5rem 1.5rem 1rem;
  }

  .pwreset-logo {
    max-height: 40px;
    margin-bottom: 0.5rem;
  }

  .pwreset-decoration-3,
  .pwreset-decoration-4 {
    display: none;
  }
}

@media screen and (-webkit-min-device-pixel-ratio: 0) { 
  select,
  textarea,
  input {
    font-size: 16px !important;
  }
}

input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus {
  -webkit-box-shadow: 0 0 0px 1000px white inset;
  transition: background-color 5000s ease-in-out 0s;
}

.pwreset-tab,
.pwreset-btn,
.pwreset-login a {
  padding: 8px;
  min-height: 44px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.pwreset-tab {
  min-height: 44px;
}

.btn-primary {
  background-color: var(--primary);
  border-color: var(--primary);
}

.btn-primary:hover {
  background-color: var(--primary-dark);
  border-color: var(--primary-dark);
}

.form-control {
  height: 42px;
  border-radius: 12px;
  box-shadow: var(--input-shadow);
  transition: all 0.3s ease;
}

.form-control:focus {
  border-color: var(--primary);
  box-shadow: var(--input-focus-shadow);
}

.input-group-prepend {
  width: auto;
}

.input-group-append .btn {
  height: 42px;
  border-radius: 0 12px 12px 0;
  background-color: var(--primary);
  border-color: var(--primary);
}

.input-group-append .btn:hover {
  background-color: var(--primary-dark);
  border-color: var(--primary-dark);
}

.select2-container--default .select2-selection--single {
  height: 42px;
  border-radius: 12px 0 0 12px;
  border: 1px solid rgba(0, 0, 0, 0.1);
}

.select2-container--default .select2-selection--single .select2-selection__rendered {
  line-height: 42px;
}

.select2-container--default .select2-selection--single .select2-selection__arrow {
  height: 42px;
}

.auth-full-bg .bg-overlay {
  background-size: cover;
  opacity: 1;
}

/* Animation for decorative elements */
.pwreset-decoration-1 {
  animation: float 6s ease-in-out 0s infinite;
}

.pwreset-decoration-2 {
  animation: float 6s ease-in-out 0.5s infinite;
}

.pwreset-decoration-3 {
  animation: float 6s ease-in-out 1s infinite;
}

.pwreset-decoration-4 {
  animation: float 6s ease-in-out 1.5s infinite;
}
</style>

<div class="pwreset-container">
  {if $Setting.login_header}
  <div class="text-center mb-4">{$Setting.login_header}</div>
  {/if}

  <div class="pwreset-decoration-3"></div>
  <div class="pwreset-decoration-4"></div>

  <div class="pwreset-card">
    <div class="pwreset-decoration pwreset-decoration-1"></div>
    <div class="pwreset-decoration pwreset-decoration-2"></div>
    
    <div class="pwreset-header">
      <a href="{$Setting.web_jump_url}">
        <img src="{$Setting.web_logo}" alt="{$Setting.company_name}" class="pwreset-logo">
      </a>
    </div>
    
    <div class="pwreset-body">
      <ul class="pwreset-tabs">
        {if $Pwreset.allow_login_phone}
          <li class="pwreset-tab {if $Pwreset.allow_login_phone}active{/if}" data-target="phone">
            {$Lang.mobile_phone_retrieval}
          </li>
        {/if}

        {if $Pwreset.allow_login_email}
          <li class="pwreset-tab {if $Pwreset.allow_login_email && !$Pwreset.allow_login_phone}active{/if}" data-target="email">
            {$Lang.email_retrieval}
          </li>
        {/if}
      </ul>

      <div class="tab-content">
        {if $Pwreset.allow_login_email}
        <div id="email" class="tab-pane {if $Pwreset.allow_login_email && !$Pwreset.allow_login_phone}active{/if}">
          <form method="post" action="/pwreset?action=email">
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="emailInp">{$Lang.mailbox}</label>
              <input type="text" class="pwreset-input" id="emailInp" name="email" placeholder="{$Lang.please_input_email}" required>
            </div>
            
            {if $Verify.allow_email_forgetpwd_captcha==1}
            {include file="includes/verify" type="allow_email_forgetpwd_captcha" positon="top"}
            {/if}
            
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="code">{$Lang.verification_code}</label>
              <div class="code-input-group">
                <input type="text" class="pwreset-input" id="code" name="code" placeholder="{$Lang.please_enter_code}" required>
                <div class="pwreset-input-group-append">
                  <button class="btn" type="button" onclick="getCode(this,'reset_email_send','allow_email_forgetpwd_captcha')">{$Lang.get_code}</button>
                </div>
              </div>
            </div>
            
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="emailPwd">{$Lang.password}</label>
              <input type="password" class="pwreset-input" name="password" id="emailPwd" placeholder="{$Lang.please_enter_password}" required>
            </div>
            
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="emailPwdCheck">{$Lang.confirm_password}</label>
              <input type="password" class="pwreset-input" name="checkPassword" id="emailPwdCheck" placeholder="{$Lang.please_password_again}" required>
            </div>
            
            <button class="pwreset-btn" type="submit">{$Lang.reset}</button>
          </form>
        </div>
        {/if}
        
        {if $Pwreset.allow_login_phone}
        <div id="phone" class="tab-pane {if $Pwreset.allow_login_phone}active{/if}">
          <form method="post" action="/pwreset?action=phone">
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="phoneInp">{$Lang.phone_number}</label>
              <div class="phone-input-group">
                {if $Pwreset.allow_login_register_sms_global==1}
                <select class="pwreset-input-select" name="phone_code" id="phoneCodeSel">
                  {foreach $SmsCountry as $list}
                  <option value="{$list.phone_code}" {if $list.phone_code=="+86"}selected{/if}>{$list.link}</option>
                  {/foreach}
                </select>
                {/if}
                <input type="text" class="pwreset-input" id="phoneInp" name="phone" placeholder="{$Lang.please_enter_your_mobile_phone_number}" required>
              </div>
            </div>
            
            {if $Verify.allow_phone_forgetpwd_captcha==1}
            {include file="includes/verify" type="allow_phone_forgetpwd_captcha" positon="top"}
            {/if}
            
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="code">{$Lang.verification_code}</label>
              <div class="code-input-group">
                <input type="text" class="pwreset-input" id="code" name="code" placeholder="{$Lang.please_enter_code}" required>
                <div class="pwreset-input-group-append">
                  <button class="btn" type="button" onclick="getCode(this,'reset_phone_send','allow_phone_forgetpwd_captcha')">{$Lang.get_code}</button>
                </div>
              </div>
            </div>
            
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="phonePwd">{$Lang.password}</label>
              <input type="password" class="pwreset-input" name="password" id="phonePwd" placeholder="{$Lang.please_enter_password}" required>
            </div>
            
            <div class="pwreset-form-group">
              <label class="pwreset-label" for="phonePwdCheck">{$Lang.confirm_password}</label>
              <input type="password" class="pwreset-input" name="checkPassword" id="phonePwdCheck" placeholder="{$Lang.please_password_again}" required>
            </div>
            
            <button class="pwreset-btn" type="submit">{$Lang.reset}</button>
          </form>
        </div>
        {/if}
      </div>
      
      <div class="pwreset-login">
        {$Lang.there_already_account} <a href="login">{$Lang.sign_in}</a>
      </div>
    </div>
  </div>

  {if $Setting.login_footer}
  <div class="text-center mt-4">{$Setting.login_footer}</div>
  {/if}
</div>

<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
  // Initialize tabs
  initializeTabs();
  
  // Add animations to decorative elements
  initializeAnimations();
  
  // Optimize for different devices
  optimizeForDevice();
});

function initializeTabs() {
  const tabs = document.querySelectorAll('.pwreset-tab');
  
  tabs.forEach(tab => {
    tab.addEventListener('click', function() {
      // Remove active class from all tabs
      tabs.forEach(t => t.classList.remove('active'));
      
      // Add active class to clicked tab
      this.classList.add('active');
      
      // Hide all tab panes
      document.querySelectorAll('.tab-pane').forEach(pane => {
        pane.classList.remove('active');
      });
      
      // Show the corresponding tab pane
      const target = this.getAttribute('data-target');
      document.getElementById(target).classList.add('active');
    });
  });
}

function initializeAnimations() {
  // Add floating animation to decorations with different delays
  const decorations = document.querySelectorAll('.pwreset-decoration');
  decorations.forEach((decoration, index) => {
    const delay = index * 0.5;
    decoration.style.animation = `float 6s ease-in-out ${delay}s infinite`;
  });
}

function optimizeForDevice() {
  const isMobile = window.innerWidth < 768;
  const isSmallScreen = window.innerWidth < 576;
  const isVerySmallScreen = window.innerWidth < 375;
  
  // Adjust code input groups on small screens
  const codeInputGroups = document.querySelectorAll('.code-input-group');
  codeInputGroups.forEach(group => {
    if (isSmallScreen) {
      group.style.flexDirection = 'column';
      
      const input = group.querySelector('.pwreset-input');
      if (input) {
        input.style.width = '100%';
        input.style.borderRadius = '12px';
        input.style.marginBottom = '0.5rem';
      }
      
      const appendDiv = group.querySelector('.pwreset-input-group-append');
      if (appendDiv) {
        appendDiv.style.width = '100%';
        
        const button = appendDiv.querySelector('.btn');
        if (button) {
          button.style.width = '100%';
          button.style.borderRadius = '12px';
        }
      }
    }
  });
  
  // Adjust phone input groups on very small screens
  const phoneInputGroups = document.querySelectorAll('.phone-input-group');
  phoneInputGroups.forEach(group => {
    if (isVerySmallScreen) {
      group.style.flexDirection = 'column';
      
      const select = group.querySelector('.pwreset-input-select');
      if (select) {
        select.style.width = '100%';
        select.style.borderRadius = '12px';
        select.style.marginBottom = '0.5rem';
        select.style.borderRight = '1px solid rgba(0, 0, 0, 0.1)';
      }
      
      const input = group.querySelector('.pwreset-input');
      if (input) {
        input.style.width = '100%';
        input.style.borderRadius = '12px';
      }
    }
  });
}

function getCode(obj, url, className) {
  // Disable the button to prevent multiple clicks
  obj.disabled = true;
  
  // Get the phone number or email
  let phone = '';
  let phoneCode = '';
  let email = '';
  
  if (url.includes('phone')) {
    phone = document.getElementById('phoneInp').value;
    phoneCode = document.getElementById('phoneCodeSel') ? document.getElementById('phoneCodeSel').value : '+86';
    
    // Validate phone number
    if (!phone) {
      alert('请输入手机号码'); // Please enter phone number
      obj.disabled = false;
      return;
    }
  } else {
    email = document.getElementById('emailInp').value;
    
    // Validate email
    if (!email) {
      alert('请输入邮箱'); // Please enter email
      obj.disabled = false;
      return;
    }
  }
  
  // Get captcha if needed
  let captcha = '';
  if (className && document.querySelector('.' + className + ' input[name="captcha"]')) {
    captcha = document.querySelector('.' + className + ' input[name="captcha"]').value;
    if (!captcha) {
      alert('请输入验证码'); // Please enter captcha
      obj.disabled = false;
      return;
    }
  }
  
  // Create countdown timer
  let countdown = 60;
  const originalText = obj.innerHTML;
  const timer = setInterval(() => {
    countdown--;
    obj.innerHTML = countdown + 's';
    
    if (countdown <= 0) {
      clearInterval(timer);
      obj.innerHTML = originalText;
      obj.disabled = false;
    }
  }, 1000);
  
  // Send AJAX request to get verification code
  const xhr = new XMLHttpRequest();
  xhr.open('POST', '/' + url, true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4) {
      try {
        const response = JSON.parse(xhr.responseText);
        if (response.status !== 200) {
          clearInterval(timer);
          obj.innerHTML = originalText;
          obj.disabled = false;
          alert(response.msg || '发送失败，请重试'); // Send failed, please try again
        }
      } catch (e) {
        clearInterval(timer);
        obj.innerHTML = originalText;
        obj.disabled = false;
        alert('发送失败，请重试'); // Send failed, please try again
      }
    }
  };
  
  let data = '';
  if (url.includes('phone')) {
    data = 'phone=' + encodeURIComponent(phone) + '&phone_code=' + encodeURIComponent(phoneCode);
  } else {
    data = 'email=' + encodeURIComponent(email);
  }
  
  if (captcha) {
    data += '&captcha=' + encodeURIComponent(captcha);
  }
  
  xhr.send(data);
}
</script>

