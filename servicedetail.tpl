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
  --danger: #fc5c65;
  --success: #26de81;
  --warning: #fed330;
  --info: #45aaf2;
  --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
  --card-hover-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
  
  /* 新增深色变量，用于按钮 */
  --primary-darker: #d35400;
  --button-text: #ffffff;
}

/* Force override ALL blue colors */
[style*="color: #4d83ff"], [style*="color:#4d83ff"],
[style*="color: #3656ff"], [style*="color:#3656ff"],
[style*="color: #5f88fe"], [style*="color:#5f88fe"],
[style*="color: #2196f3"], [style*="color:#2196f3"],
[style*="color: #1e88e5"], [style*="color:#1e88e5"],
[style*="color: #0d6efd"], [style*="color:#0d6efd"],
[style*="color: #007bff"], [style*="color:#007bff"],
[style*="color: #0275d8"], [style*="color:#0275d8"],
[style*="color: #3498db"], [style*="color:#3498db"],
[style*="color: #2980b9"], [style*="color:#2980b9"],
[style*="color: blue"], [style*="color:blue"] {
  color: #f08a5d !important;
}

/* Force override ALL blue background colors */
[style*="background-color: #4d83ff"], [style*="background-color:#4d83ff"],
[style*="background-color: #3656ff"], [style*="background-color:#3656ff"],
[style*="background-color: #5f88fe"], [style*="background-color:#5f88fe"],
[style*="background-color: #2196f3"], [style*="background-color:#2196f3"],
[style*="background-color: #1e88e5"], [style*="background-color:#1e88e5"],
[style*="background-color: #0d6efd"], [style*="background-color:#0d6efd"],
[style*="background-color: #007bff"], [style*="background-color:#007bff"],
[style*="background-color: #0275d8"], [style*="background-color:#0275d8"],
[style*="background-color: #3498db"], [style*="background-color:#3498db"],
[style*="background-color: #2980b9"], [style*="background-color:#2980b9"],
[style*="background-color: blue"], [style*="background-color:blue"] {
  background-color: #f08a5d !important;
}

/* Force override ALL blue border colors */
[style*="border-color: #4d83ff"], [style*="border-color:#4d83ff"],
[style*="border-color: #3656ff"], [style*="border-color:#3656ff"],
[style*="border-color: #5f88fe"], [style*="border-color:#5f88fe"],
[style*="border-color: #2196f3"], [style*="border-color:#2196f3"],
[style*="border-color: #1e88e5"], [style*="border-color:#1e88e5"],
[style*="border-color: #0d6efd"], [style*="border-color:#0d6efd"],
[style*="border-color: #007bff"], [style*="border-color:#007bff"],
[style*="border-color: #0275d8"], [style*="border-color:#0275d8"],
[style*="border-color: #3498db"], [style*="border-color:#3498db"],
[style*="border-color: #2980b9"], [style*="border-color:#2980b9"],
[style*="border-color: blue"], [style*="border-color:blue"] {
  border-color: #f08a5d !important;
}

/* Force override ALL blue gradients */
[style*="background-image: linear-gradient"], [style*="background-image:linear-gradient"] {
  background-image: linear-gradient(87deg, #f08a5d 0%, #e67e22 100%) !important;
}

/* Force override common blue classes */
.text-primary, .text-info, .text-blue, .text-azure, .text-indigo {
  color: #f08a5d !important;
}

.bg-primary, .bg-info, .bg-blue, .bg-azure, .bg-indigo {
  background-color: #f08a5d !important;
}

.border-primary, .border-info, .border-blue, .border-azure, .border-indigo {
  border-color: #f08a5d !important;
}

/* Force override specific blue classes */
.dc {
  color: #f08a5d !important;
}

.bg-gradient-primary, .bg-gradient-info, .bg-gradient-blue {
  background-image: linear-gradient(87deg, #f08a5d 0%, #e67e22 100%) !important;
}

/* Force override blue buttons */
.btn-primary, .btn-info, .btn-blue {
  background-color: #f08a5d !important;
  border-color: #f08a5d !important;
  color: white !important;
}

.btn-outline-primary, .btn-outline-info, .btn-outline-blue {
  color: #f08a5d !important;
  border-color: #f08a5d !important;
}

.btn-outline-primary:hover, .btn-outline-info:hover, .btn-outline-blue:hover {
  background-color: #f08a5d !important;
  color: white !important;
}

/* Force override blue links */
a:not(.btn) {
  color: #f08a5d;
}

a:not(.btn):hover {
  color: #e67e22;
}

/* Force override blue form elements */
.form-control:focus {
  border-color: #f08a5d !important;
  box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25) !important;
}

.custom-control-input:checked ~ .custom-control-label::before {
  background-color: #f08a5d !important;
  border-color: #f08a5d !important;
}

/* Force override blue progress bars */
.progress-bar {
  background-color: #f08a5d !important;
}

/* Force override blue badges */
.badge-primary, .badge-info, .badge-blue {
  background-color: #f08a5d !important;
}

/* Force override blue alerts */
.alert-primary, .alert-info, .alert-blue {
  background-color: rgba(240, 138, 93, 0.1) !important;
  border-color: rgba(240, 138, 93, 0.2) !important;
  color: #e67e22 !important;
}

/* Force override blue pagination */
.page-item.active .page-link {
  background-color: #f08a5d !important;
  border-color: #f08a5d !important;
}

.page-link {
  color: #f08a5d !important;
}

.page-link:hover {
  color: #e67e22 !important;
}

/* Force override blue nav elements */
.nav-pills .nav-link.active, 
.nav-pills .show > .nav-link {
  background-color: #f08a5d !important;
  color: #ffffff !important;
}

.nav-tabs .nav-link.active {
  color: #f08a5d !important;
  border-bottom-color: #f08a5d !important;
}

/* Force override blue list groups */
.list-group-item-primary, .list-group-item-info, .list-group-item-blue {
  background-color: rgba(240, 138, 93, 0.1) !important;
  color: #e67e22 !important;
}

/* Force override blue tables */
.table-primary, .table-info, .table-blue,
.table-primary > th, .table-info > th, .table-blue > th,
.table-primary > td, .table-info > td, .table-blue > td {
  background-color: rgba(240, 138, 93, 0.1) !important;
}

/* Force override blue tooltips */
.tooltip-inner {
  background-color: #f08a5d !important;
}

.bs-tooltip-top .arrow::before {
  border-top-color: #f08a5d !important;
}

.bs-tooltip-bottom .arrow::before {
  border-bottom-color: #f08a5d !important;
}

.bs-tooltip-left .arrow::before {
  border-left-color: #f08a5d !important;
}

.bs-tooltip-right .arrow::before {
  border-right-color: #f08a5d !important;
}

/* Force override blue SVG elements */
svg [fill="#4d83ff"], svg [fill="#3656ff"], svg [fill="#5f88fe"],
svg [fill="#2196f3"], svg [fill="#1e88e5"], svg [fill="#0d6efd"],
svg [fill="#007bff"], svg [fill="#0275d8"], svg [fill="#3498db"],
svg [fill="#2980b9"], svg [fill="blue"] {
  fill: #f08a5d !important;
}

svg [stroke="#4d83ff"], svg [stroke="#3656ff"], svg [stroke="#5f88fe"],
svg [stroke="#2196f3"], svg [stroke="#1e88e5"], svg [stroke="#0d6efd"],
svg [stroke="#007bff"], svg [stroke="#0275d8"], svg [stroke="#3498db"],
svg [stroke="#2980b9"], svg [stroke="blue"] {
  stroke: #f08a5d !important;
}

/* Force override any other blue elements */
* {
  --blue: #f08a5d !important;
  --indigo: #f08a5d !important;
  --primary: #f08a5d !important;
  --info: #f9b384 !important;
}

/* General Styles */
body {
  color: var(--dark);
  background-color: var(--light);
  font-family: 'Inter', sans-serif;
}

a {
  color: var(--primary);
  transition: all 0.3s ease;
}

a:hover {
  color: var(--primary-dark);
  text-decoration: none;
}

.card {
  border: none;
  border-radius: 15px;
  box-shadow: var(--card-shadow);
  transition: all 0.3s ease;
}

.card:hover {
  box-shadow: var(--card-hover-shadow);
}

.card-header {
  background-color: rgba(240, 138, 93, 0.05);
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  border-radius: 15px 15px 0 0 !important;
}

.card-footer {
  background-color: rgba(240, 138, 93, 0.05);
  border-top: 1px solid rgba(0, 0, 0, 0.05);
}

/* Form Elements */
.error-tip{
    color: var(--danger);
    margin: 0;
    padding: 0;
    line-height: 36px;
    margin-left: 13rem;
    display: none;
    font-size: 0.85rem;
}

.ml-8{
    margin-left: 8.3rem;
}

.contract_mc{
    width: 100%;
    height: 100%;
    position: fixed;
    right: 0px;
    top: 0px;
    background: #000;
    z-index: 999999;
    opacity: 0.4;
}

.pt-9{
    padding-top: 9px;
}

.must-reinstall-check:before{
    content: '*';
    color: var(--danger);
}

.d-flex-cl{
    flex-direction: column;
}

.d-flex-cl .reinstallAgreeCheckbox{
    color: var(--danger);
}

/* Custom styling to match clientarea design */
.modal-content {
    border: none;
    border-radius: 15px;
    box-shadow: var(--card-shadow);
}

.modal-header {
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    background-color: rgba(240, 138, 93, 0.03);
}

.modal-footer {
    border-top: 1px solid rgba(0, 0, 0, 0.05);
    background-color: rgba(240, 138, 93, 0.03);
}

.modal-title {
    font-weight: 700;
    color: var(--dark);
    position: relative;
}

.btn-primary {
    background-color: var(--primary);
    border-color: var(--primary);
    color: white;
    box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
    border-radius: 50px;
    padding: 0.6rem 1.5rem;
    font-weight: 600;
    transition: all 0.3s;
}

.btn-primary:hover {
    background-color: var(--primary-dark);
    border-color: var(--primary-dark);
    transform: translateY(-3px);
    box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
}

.btn-secondary, .btn-outline-light {
    border-radius: 50px;
    padding: 0.6rem 1.5rem;
    font-weight: 600;
    transition: all 0.3s;
}

.btn-secondary:hover, .btn-outline-light:hover {
    transform: translateY(-3px);
}

.form-control {
    border: 1px solid rgba(240, 138, 93, 0.2);
    border-radius: 50px;
    padding: 0.6rem 1.2rem;
    transition: all 0.3s;
}

.form-control:focus {
    border-color: var(--primary);
    box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
}

.alert-danger {
    background-color: rgba(252, 92, 101, 0.1);
    border-color: rgba(252, 92, 101, 0.2);
    color: var(--danger);
    border-radius: 10px;
}

.custom-control-input:checked ~ .custom-control-label::before {
    background-color: var(--primary);
    border-color: var(--primary);
}

.custom-switch .custom-control-label::before {
    border-color: rgba(240, 138, 93, 0.3);
}

.custom-control-label {
    cursor: pointer;
}

.fas.fa-dice {
    color: var(--primary);
    cursor: pointer;
    transition: all 0.3s;
}

.fas.fa-dice:hover {
    transform: rotate(180deg);
    color: var(--primary-dark);
}

.selectpicker {
    border-radius: 50px !important;
}

.bootstrap-select .dropdown-toggle:focus, 
.bootstrap-select>select.mobile-device:focus+.dropdown-toggle {
    outline: none !important;
    box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25) !important;
}

.bootstrap-select .dropdown-menu {
    border-radius: 15px;
    box-shadow: var(--card-shadow);
    border: 1px solid rgba(240, 138, 93, 0.1);
    overflow: hidden;
}

/* Add these styles to fix the dropdown menu display issues */
.bootstrap-select .dropdown-menu {
    max-height: 300px !important;
    overflow: visible !important;
    z-index: 9999 !important;
}

.bootstrap-select .dropdown-menu .inner {
    max-height: 280px !important;
    overflow-y: auto !important;
}

.bootstrap-select .dropdown-menu .inner .dropdown-item {
    display: flex;
    align-items: center;
    padding: 0.5rem 1rem;
    cursor: pointer;
    transition: background-color 0.2s;
}

.bootstrap-select .dropdown-menu .inner .dropdown-item:hover,
.bootstrap-select .dropdown-menu .inner .dropdown-item:focus {
    background-color: rgba(240, 138, 93, 0.1);
}

.bootstrap-select .dropdown-menu .inner .dropdown-item.active,
.bootstrap-select .dropdown-menu .inner .dropdown-item:active {
    background-color: var(--primary);
    color: white;
}

.bootstrap-select .dropdown-menu .inner .dropdown-item .text {
    display: flex;
    align-items: center;
}

.bootstrap-select .dropdown-menu .inner .dropdown-item .text img {
    margin-right: 10px;
}

/* Fix for dropdown positioning */
.bootstrap-select.show .dropdown-menu {
    opacity: 1;
    visibility: visible;
    transform: translateY(0);
}

/* Fix for dropdown toggle */
.bootstrap-select .dropdown-toggle {
    background-color: white;
    border: 1px solid rgba(240, 138, 93, 0.2);
    border-radius: 50px;
    padding: 0.6rem 1.2rem;
}

.bootstrap-select .dropdown-toggle:focus {
    outline: none !important;
    box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25) !important;
}

/* Fix for dropdown toggle arrow */
.bootstrap-select .dropdown-toggle::after {
    margin-left: 10px;
}

.bootstrap-select .dropdown-item.active, 
.bootstrap-select .dropdown-item:active {
    background-color: var(--primary);
}

.bootstrap-select .dropdown-item:hover {
    background-color: rgba(240, 138, 93, 0.1);
}

.is-invalid {
    border-color: var(--danger) !important;
}

/* Animation for modals */
.modal.fade .modal-dialog {
    transition: transform 0.3s ease-out, opacity 0.3s ease-out;
    transform: translateY(-20px);
    opacity: 0;
}

.modal.show .modal-dialog {
    transform: translateY(0);
    opacity: 1;
}

/* Pulse animation for buttons */
@keyframes pulse {
    0% {
        transform: scale(1);
    }
    50% {
        transform: scale(1.05);
    }
    100% {
        transform: scale(1);
    }
}

.btn-primary.submit {
    animation: pulse 2s infinite;
}

.btn-primary.submit:hover {
    animation: none;
}

/* Service Detail Specific Styles */
.service-status {
    display: inline-block;
    padding: 0.35rem 0.75rem;
    border-radius: 50px;
    font-size: 0.85rem;
    font-weight: 600;
}

.service-status.active {
    background-color: rgba(38, 222, 129, 0.1);
    color: var(--success);
}

.service-status.suspended {
    background-color: rgba(254, 211, 48, 0.1);
    color: var(--warning);
}

.service-status.terminated {
    background-color: rgba(252, 92, 101, 0.1);
    color: var(--danger);
}

.service-status.pending {
    background-color: rgba(69, 170, 242, 0.1);
    color: var(--info);
}

.service-detail-card {
    height: 100%;
    display: flex;
    flex-direction: column;
}

.service-detail-card .card-body {
    flex: 1;
}

.service-detail-card .icon-box {
    width: 48px;
    height: 48px;
    border-radius: 12px;
    background-color: rgba(240, 138, 93, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 1rem;
}

.service-detail-card .icon-box i {
    color: var(--primary);
    font-size: 1.5rem;
}

.service-detail-card h5 {
    font-weight: 700;
    margin-bottom: 0.5rem;
}

.service-detail-card p {
    color: var(--gray);
    margin-bottom: 0;
}

.service-detail-tabs .nav-tabs {
    border-bottom: 1px solid rgba(240, 138, 93, 0.2);
}

.service-detail-tabs .nav-link {
    border: none;
    color: var(--gray);
    font-weight: 600;
    padding: 1rem 1.5rem;
    transition: all 0.3s;
}

.service-detail-tabs .nav-link:hover {
    color: var(--primary);
}

.service-detail-tabs .nav-link.active {
    color: var(--primary);
    border-bottom: 2px solid var(--primary);
    background-color: transparent;
}

.service-action-btn {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgba(240, 138, 93, 0.1);
    color: var(--primary);
    transition: all 0.3s;
}

.service-action-btn:hover {
    background-color: var(--primary);
    color: white;
    transform: translateY(-3px);
}

/* Table Styles */
.table {
    border-collapse: separate;
    border-spacing: 0;
}

.table th {
    font-weight: 600;
    color: var(--dark);
    border-top: none;
    background-color: rgba(240, 138, 93, 0.03);
}

.table td {
    vertical-align: middle;
    color: var(--gray);
}

.table-hover tbody tr:hover {
    background-color: rgba(240, 138, 93, 0.03);
}

.table-striped tbody tr:nth-of-type(odd) {
    background-color: rgba(240, 138, 93, 0.02);
}

/* Badge Styles */
.badge {
    padding: 0.5em 0.75em;
    font-weight: 600;
    border-radius: 50px;
}

.badge-primary {
    background-color: var(--primary);
}

.badge-secondary {
    background-color: var(--secondary);
}

.badge-success {
    background-color: var(--success);
}

.badge-danger {
    background-color: var(--danger);
}

.badge-warning {
    background-color: var(--warning);
}

.badge-info {
    background-color: var(--info);
}

/* Progress Bar Styles */
.progress {
    height: 0.75rem;
    border-radius: 50px;
    background-color: rgba(240, 138, 93, 0.1);
}

.progress-bar {
    background-color: var(--primary);
    border-radius: 50px;
}

/* Tooltip Styles */
.tooltip .tooltip-inner {
    background-color: var(--dark);
    border-radius: 8px;
    padding: 0.5rem 1rem;
    font-size: 0.85rem;
}

.tooltip.bs-tooltip-top .arrow::before {
    border-top-color: var(--dark);
}

.tooltip.bs-tooltip-bottom .arrow::before {
    border-bottom-color: var(--dark);
}

.tooltip.bs-tooltip-left .arrow::before {
    border-left-color: var(--dark);
}

.tooltip.bs-tooltip-right .arrow::before {
    border-right-color: var(--dark);
}

/* Chart Styles */
.chart-container {
    position: relative;
    height: 300px;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .error-tip {
        margin-left: 0;
    }
    
    .ml-8 {
        margin-left: 0;
    }
    
    .service-detail-tabs .nav-link {
        padding: 0.75rem 1rem;
    }
}
.server_header_box {
   height: auto;
   background-image: linear-gradient(87deg, #f08a5d 0%, #e67e22 100%) !important;
   border-radius: 15px;
   padding: 20px 25px;
   color: #ffffff;
   box-shadow: 0 5px 15px rgba(240, 138, 93, 0.2);
   border: none;
}

/* Add these specific overrides for the missed blue styles */
.configuration-btn-down {
    width: 100%;
    text-align: center;
    line-height: 36px;
    color: #f08a5d !important; /* Changed from #5F88FE to orange theme color */
}

.left_wrap_btn {
    display: inline-block;
    width: 80px;
    height: 20px;
    background-color: #f08a5d !important; /* Changed from #5f88fe to orange theme color */
    box-shadow: 0px 6px 14px 2px rgba(240, 138, 93, 0.26) !important; /* Changed from rgba(6, 31, 179, 0.26) to orange shadow */
    border-radius: 4px;
    color: #ffffff;
    text-align: center;
    border: none;
}

/* Add this to ensure any other potential blue elements are caught */
[style*="color: #5F88FE"], [style*="color:#5F88FE"],
[style*="color: #5f88fe"], [style*="color:#5f88fe"] {
  color: #f08a5d !important;
}

[style*="background-color: #5F88FE"], [style*="background-color:#5F88FE"],
[style*="background-color: #5f88fe"], [style*="background-color:#5f88fe"] {
  background-color: #f08a5d !important;
}

[style*="border-color: #5F88FE"], [style*="border-color:#5F88FE"],
[style*="border-color: #5f88fe"], [style*="border-color:#5f88fe"] {
  border-color: #f08a5d !important;
}

[style*="box-shadow:"][style*="rgba(6, 31, 179"],
[style*="box-shadow: "][style*="rgba(6, 31, 179"] {
  box-shadow: 0px 6px 14px 2px rgba(240, 138, 93, 0.26) !important;
}

/* 方案一：深色渐变按钮样式 */
.custom-button {
    background-image: linear-gradient(to right, #d35400, #e67e22) !important;
    color: white !important;
    border: none !important;
    box-shadow: 0 4px 10px rgba(211, 84, 0, 0.3) !important;
    font-weight: 600 !important;
    position: relative !important;
    overflow: hidden !important;
    z-index: 1 !important;
    transition: all 0.3s ease !important;
}

.custom-button::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: linear-gradient(to right, #e67e22, #d35400) !important;
    opacity: 0;
    z-index: -1;
    transition: opacity 0.3s ease;
}

.custom-button:hover::after {
    opacity: 1;
}

.custom-button:hover, 
.custom-button:focus, 
.custom-button:active {
    transform: translateY(-2px) !important;
    box-shadow: 0 6px 15px rgba(211, 84, 0, 0.4) !important;
}

/* 方案二：带边框和内阴影的按钮 */
.custom-button-alt {
    background-color: #d35400 !important;
    color: white !important;
    border: 2px solid #c44d00 !important;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 4px 10px rgba(211, 84, 0, 0.3) !important;
    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2) !important;
    font-weight: 600 !important;
    transition: all 0.3s ease !important;
}

.custom-button-alt:hover, 
.custom-button-alt:focus, 
.custom-button-alt:active {
    background-color: #c44d00 !important;
    border-color: #b34600 !important;
    transform: translateY(-2px) !important;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 6px 15px rgba(211, 84, 0, 0.4) !important;
}

/* 方案三：3D 效果按钮 */
.custom-button-3d {
    background-color: #e67e22 !important;
    color: white !important;
    border: none !important;
    border-bottom: 4px solid #d35400 !important;
    font-weight: 600 !important;
    position: relative !important;
    top: 0 !important;
    transition: all 0.2s ease !important;
}

.custom-button-3d:hover, 
.custom-button-3d:focus {
    background-color: #f39c12 !important;
    top: -2px !important;
    border-bottom-width: 6px !important;
}

.custom-button-3d:active {
    top: 2px !important;
    border-bottom-width: 2px !important;
    background-color: #d35400 !important;
}

/* 图标样式 */
.btn-primary.dropdown-toggle.custom-button .mdi,
.btn-primary.dropdown-toggle.custom-button-alt .mdi,
.btn-primary.dropdown-toggle.custom-button-3d .mdi {
    color: white !important;
    transition: all 0.3s ease !important;
}

/* 服务模块按钮样式 */
.service_module_button.custom-button,
.service_module_button.custom-button-alt,
.service_module_button.custom-button-3d {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    padding: 0.6rem 1.2rem !important;
}

/* 添加按钮光晕效果 */
@keyframes glow {
    0% {
        box-shadow: 0 0 5px rgba(230, 126, 34, 0.5);
    }
    50% {
        box-shadow: 0 0 20px rgba(230, 126, 34, 0.8);
    }
    100% {
        box-shadow: 0 0 5px rgba(230, 126, 34, 0.5);
    }
}

.service_module_button.custom-button:hover,
.service_module_button.custom-button-alt:hover {
    animation: glow 2s infinite;
}
</style>

<script src="/themes/clientarea/default/assets/libs/moment/moment.js?v={$Ver}"></script>
<script src="/themes/clientarea/default/assets/libs/clipboard/clipboard.min.js?v={$Ver}"></script>
<!-- select -->
<link rel="stylesheet" href="/themes/clientarea/default/assets/libs/bootstrap-select/css/bootstrap-select.min.css?v={$Ver}">
<script src="/themes/clientarea/default/assets/libs/bootstrap-select/js/bootstrap-select.min.js?v={$Ver}"></script>
<script src="/themes/clientarea/default/assets/js/public.js?v={$Ver}"></script>
<link rel="stylesheet" href="{$Request.domain}{$Request.rootUrl}/vendor/dcimcloud/css/selectFilter.css">
<script src="{$Request.domain}{$Request.rootUrl}/vendor/dcimcloud/js/sweetAlert2.min.js"></script>
<script src="{$Request.domain}{$Request.rootUrl}/vendor/dcimcloud/js/selectFilter.js"></script>
<script src="/themes/clientarea/default/assets/libs/echarts/echarts.min.js?v={$Ver}"></script>

{if $Detail.host_data.type == "hostingaccount"}
    {include file="servicedetail/hosting"}
{elseif $Detail.host_data.type == "server" /}
    {include file="servicedetail/dedicated"}
{elseif $Detail.host_data.type == "cloud" /}
    {include file="servicedetail/cloud"}
{elseif $Detail.host_data.type == "dcimcloud" /}
    {include file="servicedetail/zjmfcloud"}
{elseif $Detail.host_data.type == "dcim" /}
    {include file="servicedetail/zjmfdcim"}
{elseif $Detail.host_data.type == "software" /}
    {include file="servicedetail/software"}
{elseif $Detail.host_data.type == "cdn" /}
    {include file="servicedetail/cdn"}
{elseif $Detail.host_data.type == "other" /}
    {include file="servicedetail/general"}
{elseif $Detail.host_data.type == "ssl" /}
    {include file="servicedetail/ssl"}
{else /}
{/if}

{if $ErrorMsg}{include file="error/alert" value="$ErrorMsg"}{/if}
{include file="includes/modal"}
{include file="servicedetail/upgrade"}
{include file="servicedetail/upgrade-configoptions"}

<!-- 合同蒙层 -->
{if $ForceContract}
<div class="contract_mc"></div>
<div class="modal" style="display: block;z-index:999999;width: 100%">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">合同签订提示</h5>
			</div>
			<div class="modal-body">
                <span>该产品需要签订, 请 {if $ForceContract.base || $ForceContract.has_contract}<a href="/contract" style="color: var(--primary);">前往签订</a>{else}<a href="/contracthost?keywords={$Detail.host_data.id}" style="color: var(--primary);">前往签订</a>{/if}
                    {if $ForceContract.force}，逾期{$ForceContract.suspended}天未签订会{if $ForceContract.suspended_type=='suspended'}暂停产品服务{else}无法访问产品内页{/if}</span>
                {/if}
			</div>
			<div class="modal-footer">
                {if $ForceContract.base || $ForceContract.has_contract}
                    <button type="button" class="btn btn-primary" onclick="javascript: location.href='/contract'">确定</button>
                {else}
                    <button type="button" class="btn btn-primary" onclick="javascript: location.href='/contracthost?keywords={$Detail.host_data.id}'">确定</button>
                {/if}
                {if $ForceContract.regdated == 0 || $ForceContract.force == 0}
				<button type="button" class="btn btn-outline-light qd_cancel">取消</button>
                {/if}
			</div>
		</div>
	</div>
</div>
{/if}

<!-- 服务器内页 修改备注 弹窗 -->
<div class="modal fade" id="modifyRemarkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{$Lang.modify_remarks}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label text-right">{$Lang.remarks}</label>
						<div class="col-sm-9">
							<div class="input-group">
								<input id="remarkInp" type="text" value="{$Detail.host_data.remark}" class="form-control api_password"
									placeholder="{$Lang.please_input}" />
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
				<button type="button" class="btn btn-primary" onclick="modifyRemarkSubmit({$Think.get.id})">{$Lang.determine}</button>
			</div>
		</div>
	</div>
</div>

<!-- 重置密码弹窗 --> 
<div class="modal fade" id="moduleResetPass" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">{$Lang.reset_password}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="resetPassword">
                <div class="modal-body">
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-md-3 col-form-label d-flex justify-content-end">{$Lang.password}</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control getPassword" name="password">
                        </div>
                        <div class="col-md-1 fs-18 d-flex align-items-center">
                            <i class="fas fa-dice create_random_pass pointer" onclick="create_random_pass()"></i>
                        </div>
                        <label id="password-error-tip" class="control-label error-tip" for="password"></label>
                    </div>
                    <div class="alert alert-danger" role="alert">
                        {$Lang.reset_pwd_tip_one}<br>
                        {$Lang.reset_pwd_tip_two}<br>
                        {$Lang.reset_pwd_tip_three}           
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-md-3 col-form-label d-flex justify-content-end">强制关机</label>
                        <div class="col-md-6 pt-9">
                            <label>
                                <input type="checkbox" class="mr-1 getForce" id="force" name="force">同意强制关机
                            </label>
                        </div>
                        <label id="force-error-tip" class="control-label error-tip" for="force">请同意强制关机</label>
                    </div>
                </div>
                <input type="hidden" name="func" value="crack_pass">
                <input type="hidden" name="id" value="{$Think.get.id}">
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$Lang.cancel}</button>
                <button type="button" class="btn btn-primary submit" onclick="moduleResetPass($(this))">{$Lang.determine}</button>
            </div>
        </div>
    </div>
</div>

<!-- 重装系统弹窗 -->
<div class="modal fade" id="moduleReinstall" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">{$Lang.reinstall_system}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-2 d-flex align-items-center justify-content-end">
                            <label class="float-right mb-0">{$Lang.system}</label>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group mb-0">
                                <select class="form-control configoption_os_group selectpicker" data-style="btn-default" name="os_group" onchange="moduleReinstallOsGroupChange($(this))">
                                  {foreach $Detail.cloud_os_group as $item} 
                                    {if strtolower($item.name)=="windows"}
                                    {assign name="os_svg" value="1" /}
                                    {elseif strtolower($item.name)=="centos"/}
                                    {assign name="os_svg" value="2" /}
                                    {elseif strtolower($item.name)=="ubuntu"/}
                                    {assign name="os_svg" value="3" /}
                                    {elseif strtolower($item.name)=="debian"/}
                                    {assign name="os_svg" value="4" /}
                                    {elseif strtolower($item.name)=="esxi"/}
                                    {assign name="os_svg" value="5" /}
                                    {elseif strtolower($item.name)=="xenserver"/}
                                    {assign name="os_svg" value="6" /}
                                    {elseif strtolower($item.name)=="freebsd"/}
                                    {assign name="os_svg" value="7" /}
                                    {elseif strtolower($item.name)=="fedora"/}
                                    {assign name="os_svg" value="8" /}
                                    {else/}
                                    {assign name="os_svg" value="9" /}
                                    {/if}
                                    <option data-content="<img class='mr-1' src='/upload/common/system/{$os_svg}.svg' height='20'/>{$item.name}" value="{$item.id}">{$item.name}</option>
                                  {/foreach}
                                </select>
                            </div>
                        </div>
						
                        <div class="col-md-5">
                            <div class="form-group">
                                <select class="form-control" name="os" data-os='{:json_encode($Detail.cloud_os)}'>
                                    {foreach $Detail.cloud_os as $item}
                                        <option value="{$item.id}" data-group="{$item.group}" {if $item.group != $Detail.cloud_os_group[0]['id']}style="display:none;"{/if}>{$item.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                    </div>
                    {if $Detail.reinstall_random_port}
                        <div class="form-group row">
                            <label for="horizontal-firstname-input" class="col-md-2 col-form-label d-flex justify-content-end">{$Lang.port}</label>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="port" value="22">
                            </div>
                            <div class="col-md-1 fs-18 d-flex align-items-center">
                                <i class="fas fa-dice module_reinstall_random_port" onclick="module_reinstall_random_port()"></i>
                            </div>
                        </div>
                    {/if}
                    {if $Detail.reinstall_format_data_disk}
                    <div class="row">
                        <label class="col-md-2 col-form-label d-flex align-items-center justify-content-end" for="moduleReinstallFormatDataDisk">{$Lang.format_data_disk}</label>
                        <div class="custom-control custom-switch custom-switch-md mb-4 ml-2" dir="ltr">
                            <input type="checkbox" class="custom-control-input" id="moduleReinstallFormatDataDisk" name="format_data_disk" value="1">
                            <label class="custom-control-label" for="moduleReinstallFormatDataDisk"></label>
                        </div>
                    </div>
                    {/if}
                    <div class="row">
                        <div class="col-md-3 offset-md-2 d-flex d-flex-cl justify-content-end">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="moduleReinstallConfirm" value="1" onchange="reinstallConfirm($(this))">
                                <label class="custom-control-label" for="moduleReinstallConfirm">{$Lang.finished_backup}</label>
                            </div>
                            <div class="reinstallAgreeCheckbox" id="reinstallAgreeCheckbox"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-9">
                            <div id="moduleReinstallMsg"></div>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="func" value="reinstall">
                <input type="hidden" name="id" value="{$Think.get.id}">
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$Lang.cancel}</button>
                <button type="button" class="btn btn-primary submit" onclick="moduleReinstall($(this))">{$Lang.determine}</button>
            </div>
        </div>
    </div>
</div>

<!-- 升降级商品 -->
<div id="upgradeProductDiv"></div>
<div id="upgradeConfigDiv"></div>
<div id="orderFlowDiv"></div>
<div id="renewDiv"></div>

<script>
    // 重置密码密码校验规则
    var passwordRules = {:json_encode($Detail.host_data.password_rule.rule)};
    var setting_web_url = '';
    
    $(document).on('blur', '.getPassword', function(){
		veriPassword()
    })
    
    function veriPassword(){
        let result = checkingPwd1($(".getPassword").val(), passwordRules.num, passwordRules.upper, passwordRules.lower, passwordRules.special)
      
		if(result.flag) {
			$('#password-error-tip').css('display','none');
			$('.getPassword').removeClass("is-invalid");
		} else {
			$("#password-error-tip").html(result.msg);
			$(".getPassword").addClass("is-invalid");
			$('#password-error-tip').css('display','block');
		}
    }
    
    $(function(){
        $("#resetPassword").on('click',".create_random_pass",function(e){
            veriPassword()
        })
        
        $('.qd_cancel').on('click',function(){
            $('.contract_mc,.modal').hide()
        })
        
        // Properly initialize and configure selectpicker
        $('.selectpicker').selectpicker({
            style: 'btn-default',
            size: 8,
            liveSearch: true,
            mobile: false,
            showTick: true
        });
        
        // Fix for dropdown menu display issues
        $('.bootstrap-select').on('shown.bs.dropdown', function () {
            $(this).find('.dropdown-menu').css({
                'opacity': '1',
                'visibility': 'visible',
                'transform': 'translateY(0)',
                'z-index': '9999'
            });
        });
        
        // Ensure proper selection handling
        $('.bootstrap-select').on('changed.bs.select', function (e, clickedIndex, isSelected, previousValue) {
            // Force refresh of the dropdown after selection
            $(this).selectpicker('refresh');
        });
        
        // Add animation to modals
        $('.modal').on('show.bs.modal', function (e) {
            $(this).find('.modal-dialog').attr('data-top', $(this).find('.modal-dialog').css('margin-top'));
            $(this).find('.modal-dialog').css('margin-top', '100px');
            $(this).find('.modal-dialog').animate({
                marginTop: $(this).find('.modal-dialog').attr('data-top')
            }, 300);
        });
    })

    $(".getForce").change(function () {
        if($(this).is(':checked')){
            $('#force-error-tip').css('display', 'none');
        } else {
            $("#force-error-tip").html('请勾选同意强制关机');
            $('#force-error-tip').css('display', 'block');
        }
    });
    
    // Random password generator with animation
    function create_random_pass() {
        const dice = document.querySelector('.create_random_pass');
        dice.classList.add('fa-spin');
        
        // Generate a random password
        const length = 12;
        const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+";
        let password = "";
        
        for (let i = 0; i < length; i++) {
            const randomIndex = Math.floor(Math.random() * charset.length);
            password += charset[randomIndex];
        }
        
        // Set the password value
        $(".getPassword").val(password);
        
        // Verify the password
        veriPassword();
        
        setTimeout(() => {
            dice.classList.remove('fa-spin');
        }, 500);
    }
    
    // Random port generator with animation
    function module_reinstall_random_port() {
        const dice = document.querySelector('.module_reinstall_random_port');
        dice.classList.add('fa-spin');
        
        // Generate random port between 10000 and 65535
        const randomPort = Math.floor(Math.random() * (65535 - 10000 + 1)) + 10000;
        $('input[name="port"]').val(randomPort);
        
        setTimeout(() => {
            dice.classList.remove('fa-spin');
        }, 500);
    }

    // Add this function to fix the OS group change functionality
    function moduleReinstallOsGroupChange(obj) {
        var group = obj.val();
        var os = $('select[name="os"]');
        var osData = os.data('os');
        
        // Clear current options
        os.empty();
        
        // Add new options based on selected group
        $.each(osData, function(index, item) {
            if (item.group == group) {
                os.append('<option value="' + item.id + '">' + item.name + '</option>');
            }
        });
        
        // Refresh the select
        if (os.hasClass('selectpicker')) {
            os.selectpicker('refresh');
        }
        
        // Trigger change event
        os.trigger('change');
    }

    // Add this function to handle reinstall confirmation
    function reinstallConfirm(obj) {
        if (obj.is(':checked')) {
            $('#reinstallAgreeCheckbox').html('');
            $('.submit').prop('disabled', false);
        } else {
            $('#reinstallAgreeCheckbox').html('请确认已完成备份');
            $('.submit').prop('disabled', true);
        }
    }
    
    // Function to handle module reset password
    function moduleResetPass(obj) {
        // Check if force is checked
        if (!$('.getForce').is(':checked')) {
            $('#force-error-tip').css('display', 'block');
            return false;
        }
        
        // Check if password is valid
        let result = checkingPwd1($(".getPassword").val(), passwordRules.num, passwordRules.upper, passwordRules.lower, passwordRules.special);
        if (!result.flag) {
            $("#password-error-tip").html(result.msg);
            $(".getPassword").addClass("is-invalid");
            $('#password-error-tip').css('display', 'block');
            return false;
        }
        
        // Disable button and show loading
        obj.attr('disabled', true);
        obj.prepend('<i class="bx bx-loader bx-spin font-size-16 align-middle mr-2"></i>');
        
        // Submit form via AJAX
        $.ajax({
            url: '/servicedetail',
            type: 'POST',
            data: $('#resetPassword').serialize(),
            dataType: 'json',
            success: function(res) {
                if (res.status == 200) {
                    // Success
                    $('#moduleResetPass').modal('hide');
                    toastr.success(res.msg);
                    setTimeout(function() {
                        window.location.reload();
                    }, 1000);
                } else {
                    // Error
                    toastr.error(res.msg);
                }
            },
            complete: function() {
                // Re-enable button and remove loading
                obj.attr('disabled', false);
                obj.find('.bx-spin').remove();
            }
        });
    }
    
    // Function to handle module reinstall
    function moduleReinstall(obj) {
        // Check if confirmation is checked
        if (!$('#moduleReinstallConfirm').is(':checked')) {
            $('#reinstallAgreeCheckbox').html('请确认已完成备份');
            return false;
        }
        
        // Disable button and show loading
        obj.attr('disabled', true);
        obj.prepend('<i class="bx bx-loader bx-spin font-size-16 align-middle mr-2"></i>');
        
        // Submit form via AJAX
        $.ajax({
            url: '/servicedetail',
            type: 'POST',
            data: $('#moduleReinstall form').serialize(),
            dataType: 'json',
            success: function(res) {
                if (res.status == 200) {
                    // Success
                    $('#moduleReinstall').modal('hide');
                    toastr.success(res.msg);
                    setTimeout(function() {
                        window.location.reload();
                    }, 1000);
                } else {
                    // Error
                    toastr.error(res.msg);
                }
            },
            complete: function() {
                // Re-enable button and remove loading
                obj.attr('disabled', false);
                obj.find('.bx-spin').remove();
            }
        });
    }
    
    // Function to modify remark
    function modifyRemarkSubmit(id) {
        var remark = $('#remarkInp').val();
        
        $.ajax({
            url: '/servicedetail',
            type: 'POST',
            data: {
                id: id,
                func: 'modifyRemark',
                remark: remark
            },
            dataType: 'json',
            success: function(res) {
                if (res.status == 200) {
                    // Success
                    $('#modifyRemarkModal').modal('hide');
                    toastr.success(res.msg);
                    setTimeout(function() {
                        window.location.reload();
                    }, 1000);
                } else {
                    // Error
                    toastr.error(res.msg);
                }
            }
        });
    }
</script>
<script src="/themes/clientarea/default/assets/js/servicedetail.js?v={$Ver}"></script>

