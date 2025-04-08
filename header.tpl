<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>{$Title} - {$Setting.company_name}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="{$Setting.web_seo_desc}" name="description" />
<meta content="{$Setting.web_seo_keywords}" name="keywords" />
<meta content="{$Setting.company_name}" name="author" />

<!-- 引入header.css文件 -->
<link rel="stylesheet" href="/themes/clientarea/ogmiao/assets/css/header.css">

{include file="includes/head"}
<script>
var setting_web_url = '{$Setting.web_url}'
var language = {:json_encode($_LANG)};
</script>
{php}$hooks=hook('client_area_head_output');{/php}
{if $hooks}
{foreach $hooks as $item}
 {$item}
{/foreach}
{/if}

<!-- 隐藏魔方财务版权信息 -->
<script type="text/javascript">
    $(function() {
        $("a").each(function() {
            if($(this).text().trim() === "Powered by ©智简魔方") {
                $(this).remove();
            }
        });
        
        // 使用MutationObserver监听DOM变化，确保动态加载的内容也能被处理
        const observer = new MutationObserver(function() {
            $("a").each(function() {
                if($(this).text().trim() === "Powered by ©智简魔方") {
                    $(this).remove();
                }
            });
        });
        
        observer.observe(document.body, { 
            childList: true,
            subtree: true
        });
    });
</script>

<style>
 /* 基本加载屏幕样式 - 确保即使CSS文件未加载也能工作 */
 #loading-screen {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background-color: #ffffff;
   z-index: 9999;
   display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center;
   transition: opacity 0.5s ease, visibility 0.5s ease;
   opacity: 1;
   visibility: visible;
 }
 
 .loading-logo {
   width: 120px;
   height: auto;
   margin-bottom: 30px;
   animation: pulse 2s infinite ease-in-out;
 }
 
 .loading-spinner {
   width: 50px;
   height: 50px;
   border: 3px solid rgba(240, 138, 93, 0.2);
   border-radius: 50%;
   border-top-color: #f08a5d;
   animation: spin 1s linear infinite;
   margin-bottom: 20px;
 }
 
 .loading-text {
   font-size: 16px;
   font-weight: 500;
   color: #2d3436;
   font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
 }
 
 @keyframes spin {
   to { transform: rotate(360deg); }
 }
 
 @keyframes pulse {
   0%, 100% { transform: scale(1); }
   50% { transform: scale(1.05); }
 }
 
 /* 在CSS加载前隐藏body内容 */
 body {
   visibility: hidden;
 }
 
 body.loaded {
   visibility: visible;
 }

/* Add these styles to the existing style block */
/* Mobile menu animation improvements */
@media (max-width: 992px) {
 .vertical-menu {
   transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1), box-shadow 0.3s ease !important;
   transform: translateX(-100%);
   box-shadow: none;
   will-change: transform;
 }
 
 body.sidebar-enable .vertical-menu {
   transform: translateX(0);
   box-shadow: 0 0 25px rgba(0, 0, 0, 0.15);
 }
 
 /* Overlay for mobile menu */
 .menu-overlay {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   z-index: 97;
   opacity: 0;
   visibility: hidden;
   transition: opacity 0.3s ease, visibility 0.3s ease;
 }
 
 body.sidebar-enable .menu-overlay {
   opacity: 1;
   visibility: visible;
 }
}

/* Menu arrow styling */
.menu-arrow {
 font-size: 16px;
 margin-left: 5px;
 transition: transform 0.3s ease;
 display: inline-block;
}

#sidebar-menu li.mm-active > a .menu-arrow {
 transform: rotate(180deg);
}

/* Submenu animation */
#sidebar-menu ul.sub-menu {
 max-height: 0;
 overflow: hidden;
 transition: max-height 0.3s ease;
}

#sidebar-menu li.mm-active > ul.sub-menu {
 max-height: 1000px; /* Large enough to accommodate any submenu */
}

/* First-level menu item hover effect */
#sidebar-menu > ul > li > a {
 position: relative;
 overflow: hidden;
}

#sidebar-menu > ul > li > a::after {
 content: '';
 position: absolute;
 bottom: 0;
 left: 0;
 width: 0;
 height: 2px;
 background-color: var(--primary);
 transition: width 0.3s ease;
 transform-origin: left center;
}

#sidebar-menu > ul > li > a:hover::after,
#sidebar-menu > ul > li.mm-active > a::after {
width: 100%;
}

/* Ensure the underline doesn't reset when toggling active state */
#sidebar-menu > ul > li.mm-active > a::after {
width: 100% !important;
}

/* Prevent any reverse animation when clicking */
#sidebar-menu > ul > li > a.has-arrow::after {
transition: width 0.3s ease !important;
}

@media (max-width: 992px) {
 #sidebar-menu > ul > li > a.has-arrow:after {
   display: none !important;
 }
 
 #sidebar-menu ul li a {
   padding: 0.625rem 1.5rem;
 }
 
 #sidebar-menu ul li a.has-arrow {
   display: flex;
   justify-content: space-between;
   align-items: center;
 }
 
 /* Submenu item animation */
 #sidebar-menu ul.sub-menu li {
   transform: translateX(-10px);
   opacity: 0;
   transition: transform 0.3s ease, opacity 0.3s ease;
   transition-delay: calc(var(--item-index, 0) * 0.05s);
 }
 
 #sidebar-menu li.mm-active > ul.sub-menu li {
   transform: translateX(0);
   opacity: 1;
 }
}
</style>

</head>
<body>
<!-- Add this overlay div for mobile menu -->
<div class="menu-overlay"></div>
<!-- Loading Screen -->
<div id="loading-screen" data-theme="light">
 <img src="/upload/logo1.png" alt="狐狐云" class="loading-logo">
 <div class="loading-spinner"></div>
 <div class="loading-text">正在加载中，请稍候...</div>
</div>
<header id="page-topbar">
<div class="navbar-header">
<div class="d-flex align-items-center">
 <button type="button" class="btn header-item mr-2" id="vertical-menu-btn">
   <i class="bx bx-menu-alt-left"></i>
 </button>
 
 
<div class="navbar-brand-box">
 <a href="{$Setting.web_jump_url}" class="logo logo-dark">
   <span class="logo-sm">
     <img src="/upload/logo1.png" alt="{$Setting.company_name}" height="32">
   </span>
   <span class="logo-lg">
     <img src="/upload/logo1.png" alt="{$Setting.company_name}" height="40">
   </span>
 </a>

 <a href="{$Setting.web_jump_url}" class="logo logo-light">
   <span class="logo-sm">
     <img src="/upload/logo1.png" alt="{$Setting.company_name}" height="32">
   </span>
   <span class="logo-lg">
     <img src="/upload/logo1.png" alt="{$Setting.company_name}" height="40">
   </span>
 </a>
</div>
</div>

 <div class="d-flex align-items-center">
   
   <!-- 修改购物车图标 -->
   <div class="dropdown d-none d-lg-inline-block">
     <a href="cart?action=viewcart" class="top-nav-btn" title="购物车">
       <div class="top-nav-icon">
         <i class="bx bx-shopping-bag"></i>
       </div>
     </a>
   </div>

   <!-- 修改消息通知图标 -->
   <div class="dropdown d-none d-lg-inline-block">
     <a href="message" class="top-nav-btn" title="消息中心">
       <div class="top-nav-icon">
         <i class="bx bx-message-dots"></i>
         {if $Setting.unread_num != '0'}
         <span class="notification-badge">{$Setting.unread_num}</span>
         {/if}
       </div>
     </a>
   </div>

   {if $Userinfo}
   <!-- 修改用户头像和名称样式 -->
   <div class="dropdown d-inline-block">
     <button type="button" class="top-nav-user-btn" id="page-header-user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       <div class="user-avatar-container">
         {if $Userinfo.user.qq}
           <img src="https://q1.qlogo.cn/g?b=qq&nk={$Userinfo.user.qq}&s=640" alt="User" class="user-avatar">
         {else}
           <div class="user-avatar-text">
             {if preg_match("/^[0-9]*[A-Za-z]+$/is", substr($Userinfo.user.username,0,1))} 
               {$Userinfo.user.username|substr=0,1|upper} 
             {elseif preg_match("/^[\x7f-\xff]*$/", substr($Userinfo.user.username,0,3))} 
               {$Userinfo.user.username|substr=0,3}
             {else}
               {$Userinfo.user.username|substr=0,1|upper} 
             {/if}
           </div>
         {/if}
       </div>
       <span class="user-name">{$Userinfo.user.username}</span>
       <i class="bx bx-chevron-down user-dropdown-icon"></i>
     </button>
     <div class="dropdown-menu dropdown-menu-right">
       <a class="dropdown-item" href="details">
         <i class="bx bxs-user-detail font-size-16 align-middle mr-1"></i>
         <span>{$Lang.personal_information}</span>
       </a>
       <a class="dropdown-item" href="security">
         <i class="bx bx-cog font-size-16 align-middle mr-1"></i>
         <span>{$Lang.security_center}</span>
       </a>
       <a class="dropdown-item" href="message">
         <i class="bx bx-message-square-dots font-size-16 align-middle mr-1"></i>
         <span>{$Lang.message_center}</span>
       </a>
       {if $Setting.certifi_open==1}
       <a class="dropdown-item" href="verified"> 
         <i class="bx bxs-id-card font-size-16 align-middle mr-1"></i>
         <span>{$Lang.real_name_authentications}</span>
       </a>
       {/if}
       <a class="dropdown-item text-danger" href="logout">
         <i class="bx bx-power-off font-size-16 align-middle mr-1 text-danger"></i>
         <span>{$Lang.log_out}</span>
       </a>
     </div>
   </div>
   {else}
   <div class="d-flex align-items-center">
     <a href="/login" class="btn btn-primary">
       {$Lang.please_login}
     </a>
   </div>
   {/if}
 </div>
</div>
</header>

{include file="includes/menu"}

<div class="main-content">
<div class="page-content">
{if $TplName != 'clientarea'}
{include file="includes/pageheader"}
{/if}
<div class="container-fluid">

<script>
document.addEventListener('DOMContentLoaded', function() {
// Improved mobile menu animation and dropdown icon handling
function enhanceCollapsedMenu() {
const isCollapsed = document.body.classList.contains('vertical-collpsed');

// Get all menu items with submenus
document.querySelectorAll('#sidebar-menu > ul > li').forEach(function(item) {
 const subMenu = item.querySelector('ul.sub-menu');
 if (!subMenu) return;
 
 // Remove previous event listeners to prevent duplicates
 item.removeEventListener('mouseenter', handleMouseEnter);
 item.removeEventListener('mouseleave', handleMouseLeave);
 
 // Add dropdown indicator if not already present
 const menuLink = item.querySelector('a.has-arrow');
 if (menuLink && !menuLink.querySelector('.menu-arrow')) {
   const arrow = document.createElement('i');
   arrow.className = 'menu-arrow bx bx-chevron-down';
   arrow.style.fontSize = '16px';
   arrow.style.marginLeft = '5px';
   arrow.style.transition = 'transform 0.3s ease';
   menuLink.appendChild(arrow);
 }
 
 // If collapsed, add hover events for desktop
 if (isCollapsed) {
   item.addEventListener('mouseenter', handleMouseEnter);
   item.addEventListener('mouseleave', handleMouseLeave);
 } else {
   // Reset submenu styles in expanded mode
   resetSubMenuStyle(subMenu);
   
   // Update arrow rotation based on menu state
   const arrow = item.querySelector('.menu-arrow');
   if (arrow) {
     if (item.classList.contains('mm-active')) {
       arrow.style.transform = 'rotate(180deg)';
       
       // Ensure the underline stays at 100% when menu is active
       const menuLink = item.querySelector('a.has-arrow');
       if (menuLink) {
         menuLink.style.setProperty('--underline-width', '100%');
       }
     } else {
       arrow.style.transform = 'rotate(0deg)';
     }
   }
 }
});

// If not collapsed, reset all submenu styles
if (!isCollapsed) {
 document.querySelectorAll('#sidebar-menu ul.sub-menu').forEach(resetSubMenuStyle);
}

// Add click handler for arrows in mobile view
if (window.innerWidth <= 992) {
 document.querySelectorAll('#sidebar-menu .menu-arrow').forEach(function(arrow) {
   arrow.removeEventListener('click', toggleMobileSubmenu);
   arrow.addEventListener('click', toggleMobileSubmenu);
 });
 
 // Add index to submenu items for staggered animation
 document.querySelectorAll('#sidebar-menu ul.sub-menu').forEach(function(subMenu) {
   const items = subMenu.querySelectorAll('li');
   items.forEach(function(item, index) {
     item.style.setProperty('--item-index', index);
   });
 });
}
}

// Handle mouse enter for collapsed menu
function handleMouseEnter() {
const subMenu = this.querySelector('ul.sub-menu');
if (!subMenu) return;

const itemRect = this.getBoundingClientRect();

// Set submenu styles
subMenu.style.display = 'block';
subMenu.style.position = 'fixed';
subMenu.style.left = '70px';
subMenu.style.top = itemRect.top + 'px';
subMenu.style.width = '190px';
subMenu.style.zIndex = '99999';
subMenu.style.backgroundColor = 'var(--menu-bg)';
subMenu.style.boxShadow = '0 5px 15px rgba(0, 0, 0, 0.1)';
subMenu.style.borderLeft = '3px solid var(--primary)';
subMenu.style.borderRadius = '0 0 5px 0';
subMenu.style.padding = '5px 0';
subMenu.style.overflow = 'visible';
subMenu.style.opacity = '0';
subMenu.style.transform = 'translateX(-10px)';
subMenu.style.transition = 'opacity 0.3s ease, transform 0.3s ease';

// Trigger animation after a small delay
setTimeout(() => {
 subMenu.style.opacity = '1';
 subMenu.style.transform = 'translateX(0)';
}, 10);
}

// Handle mouse leave for collapsed menu
function handleMouseLeave() {
const subMenu = this.querySelector('ul.sub-menu');
if (subMenu) {
 subMenu.style.opacity = '0';
 subMenu.style.transform = 'translateX(-10px)';
 
 // Hide after animation completes
 setTimeout(() => {
   subMenu.style.display = 'none';
 }, 300);
}
}

// Toggle submenu in mobile view
function toggleMobileSubmenu(e) {
e.preventDefault();
e.stopPropagation();

const menuItem = this.closest('li');
const subMenu = menuItem.querySelector('ul.sub-menu');
const menuLink = menuItem.querySelector('a.has-arrow');

// Preserve the underline when toggling
if (menuLink && menuLink.querySelector('::after')) {
 // Ensure the underline stays at 100% width when active
 if (!menuItem.classList.contains('mm-active')) {
   menuLink.style.setProperty('--underline-width', '100%');
 }
}

if (menuItem.classList.contains('mm-active')) {
 // Close submenu
 this.style.transform = 'rotate(0deg)';
 menuItem.classList.remove('mm-active');
} else {
 // Open submenu
 this.style.transform = 'rotate(180deg)';
 menuItem.classList.add('mm-active');
}
}

// Reset submenu style to default
function resetSubMenuStyle(subMenu) {
// Remove inline styles but keep transitions
subMenu.style.display = '';
subMenu.style.position = '';
subMenu.style.left = '';
subMenu.style.top = '';
subMenu.style.width = '';
subMenu.style.zIndex = '';
subMenu.style.backgroundColor = '';
subMenu.style.boxShadow = '';
subMenu.style.borderLeft = '';
subMenu.style.borderRadius = '';
subMenu.style.padding = '';
subMenu.style.overflow = '';
subMenu.style.opacity = '';
subMenu.style.transform = '';

// Keep transition for smooth animations
subMenu.style.transition = 'max-height 0.3s ease, opacity 0.3s ease, transform 0.3s ease';
}

// Improve mobile sidebar animation
function enhanceMobileSidebar() {
const sidebar = document.querySelector('.vertical-menu');
const overlay = document.querySelector('.menu-overlay');
if (!sidebar || !overlay) return;

// Add click event to overlay to close menu
overlay.addEventListener('click', function() {
 document.body.classList.remove('sidebar-enable');
});

// Add touch swipe to close menu
let startX, startTime;
sidebar.addEventListener('touchstart', function(e) {
 startX = e.touches[0].clientX;
 startTime = Date.now();
}, { passive: true });

sidebar.addEventListener('touchmove', function(e) {
 if (!startX) return;
 
 const currentX = e.touches[0].clientX;
 const deltaX = currentX - startX;
 
 // If swiping left and menu is open
 if (deltaX < -30 && document.body.classList.contains('sidebar-enable')) {
   const progress = Math.min(Math.abs(deltaX) / 250, 1);
   sidebar.style.transform = `translateX(${-progress * 100}%)`;
   overlay.style.opacity = 1 - progress;
 }
}, { passive: true });

sidebar.addEventListener('touchend', function(e) {
 if (!startX) return;
 
 const currentX = e.changedTouches[0].clientX;
 const deltaX = currentX - startX;
 const deltaTime = Date.now() - startTime;
 
 // If swiped left fast enough or far enough
 if ((deltaX < -50 || (deltaX < -30 && deltaTime < 300)) && 
     document.body.classList.contains('sidebar-enable')) {
   document.body.classList.remove('sidebar-enable');
 } else {
   // Reset position
   sidebar.style.transform = '';
   overlay.style.opacity = '';
 }
 
 startX = null;
}, { passive: true });
}

// Monitor vertical menu button clicks
const verticalMenuBtn = document.getElementById('vertical-menu-btn');
if (verticalMenuBtn) {
verticalMenuBtn.addEventListener('click', function() {
  // For mobile view
  if (window.innerWidth <= 992) {
    setTimeout(enhanceMobileSidebar, 10);
  }
  
  // For desktop view
  setTimeout(enhanceCollapsedMenu, 300);
});
}

// Initialize
setTimeout(enhanceCollapsedMenu, 500);
setTimeout(enhanceMobileSidebar, 500);

// Monitor window resize
window.addEventListener('resize', function() {
setTimeout(enhanceCollapsedMenu, 300);
setTimeout(enhanceMobileSidebar, 300);
});

// Monitor body class changes
const observer = new MutationObserver(function(mutations) {
mutations.forEach(function(mutation) {
  if (mutation.attributeName === 'class') {
    setTimeout(enhanceCollapsedMenu, 300);
    setTimeout(enhanceMobileSidebar, 10);
  }
});
});

observer.observe(document.body, { attributes: true });

// Fix for menu underline animation
document.querySelectorAll('#sidebar-menu > ul > li > a').forEach(function(link) {
 link.addEventListener('click', function(e) {
   // Prevent the underline from resetting on click
   if (this.classList.contains('has-arrow')) {
     // Force the underline to stay at 100% width when clicked
     this.style.setProperty('--underline-width', '100%');
   }
 });
});
});
</script>

<script>
// 在页面加载时添加loaded类，显示页面内容
window.addEventListener('load', function() {
// 添加loaded类，显示页面内容
document.body.classList.add('loaded');

// 隐藏加载屏幕
const loadingScreen = document.getElementById('loading-screen');
if (loadingScreen) {
 loadingScreen.style.opacity = '0';
 setTimeout(function() {
   loadingScreen.style.visibility = 'hidden';
 }, 500);
}
});
</script>
</body>
</html>

