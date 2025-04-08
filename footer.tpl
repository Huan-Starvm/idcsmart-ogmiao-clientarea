</div>
</div>
</div>

<footer class="footer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				&copy; {$Setting.company_name}.
				{if $CustomDepot.ogmiao_hideauthor == "true"}
				{else}
				 Made with love by <a href="https://github.com/DYMTHH/OGMIAO-Theme-of-IDCsmart" target="_blank">奈.NAI</a>.
				{/if}
			</div>
			<div class="col-sm-6">
				<div class="text-sm-right d-none d-sm-block">
					
				</div>
			</div>
		</div>
	</div>
</footer>

<script src="/themes/clientarea/default/assets/js/app.js?v={$Ver}"></script>
{php}$hooks=hook('client_area_footer_output');{/php}
{if $hooks}
	{foreach $hooks as $item}
		{$item}
	{/foreach}
{/if}

<style>
/* 页脚基础样式 */
.footer {
  padding: 20px 0;
  background-color: #fff;
  border-top: 1px solid rgba(240, 138, 93, 0.1);
  color: #636e72;
  font-size: 0.9rem;
  transition: all 0.3s ease;
  position: relative;
  z-index: 10;
}

.footer::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 3px;
  background: linear-gradient(90deg, var(--primary), var(--primary-light), var(--primary));
  opacity: 0.7;
}

.footer a {
  color: var(--primary);
  transition: all 0.3s ease;
  position: relative;
  text-decoration: none;
}

.footer a:hover {
  color: var(--primary-dark);
  text-decoration: none;
}

.footer a::after {
  content: '';
  position: absolute;
  bottom: -2px;
  left: 0;
  width: 0;
  height: 1px;
  background-color: var(--primary-dark);
  transition: width 0.3s ease;
}

.footer a:hover::after {
  width: 100%;
}

/* 页脚链接样式 */
.footer-links {
  display: flex;
  gap: 20px;
  margin-top: 10px;
}

.footer-links a {
  display: inline-flex;
  align-items: center;
}

.footer-links a i {
  margin-right: 5px;
  font-size: 16px;
  color: var(--primary);
}

/* 社交媒体图标 */
.social-icons {
  display: flex;
  gap: 10px;
  margin-top: 10px;
}

.social-icon {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background-color: rgba(240, 138, 93, 0.1);
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
}

.social-icon:hover {
  background-color: var(--primary);
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(240, 138, 93, 0.3);
}

.social-icon:hover i {
  color: white;
}

.social-icon i {
  font-size: 16px;
  color: var(--primary);
  transition: all 0.3s ease;
}

/* 响应式调整 */
@media (max-width: 767px) {
  .footer {
    text-align: center;
    padding: 15px 0;
  }
  
  .text-sm-right {
    text-align: center !important;
    margin-top: 10px;
  }
  
  .footer-links, .social-icons {
    justify-content: center;
    flex-wrap: wrap;
  }
}

/* Dark mode styles for footer */
body.dark .footer {
  background-color: var(--dark-topbar);
  color: var(--dark-text);
  border-top: 1px solid var(--dark-border);
}

body.dark .footer a {
  color: var(--primary-light);
}

body.dark .footer a:hover {
  color: var(--primary);
}

body.dark .social-icon {
  background-color: rgba(240, 138, 93, 0.2);
}

body.dark .social-icon i {
  color: var(--primary-light);
}

body.dark .social-icon:hover {
  background-color: var(--primary);
}

body.dark .social-icon:hover i {
  color: #fff;
}

/* 页脚动画效果 */
@keyframes float {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-5px); }
}

.footer-animated {
  animation: float 5s ease-in-out infinite;
}

/* 返回顶部按钮 */
.back-to-top {
  position: fixed;
  bottom: 20px;
  right: 20px;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background-color: var(--primary);
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
  box-shadow: 0 3px 10px rgba(240, 138, 93, 0.3);
  z-index: 99;
}

.back-to-top.visible {
  opacity: 1;
  visibility: visible;
}

.back-to-top:hover {
  background-color: var(--primary-dark);
  transform: translateY(-5px);
  box-shadow: 0 5px 15px rgba(240, 138, 93, 0.4);
}

.back-to-top i {
  font-size: 20px;
}
</style>

<div class="back-to-top">
  <i class="bx bx-up-arrow-alt"></i>
</div>

<script type="text/javascript">
$(function() {
   
   // 添加返回顶部功能
   const backToTop = $('.back-to-top');
   
   $(window).scroll(function() {
     if ($(this).scrollTop() > 300) {
       backToTop.addClass('visible');
     } else {
       backToTop.removeClass('visible');
     }
   });
   
   backToTop.on('click', function() {
     $('html, body').animate({
       scrollTop: 0
     }, 500);
     return false;
   });
   
   // 添加页脚动画效果
   $('.footer a').hover(
     function() {
       $(this).addClass('footer-animated');
     },
     function() {
       $(this).removeClass('footer-animated');
     }
   );
   
   // 检测暗黑模式并应用相应样式
   function checkDarkMode() {
     if (localStorage.getItem("darkMode") === "true") {
       $('body').addClass('dark');
     }
   }
   
   checkDarkMode();
   
   // 监听暗黑模式变化
   const observer = new MutationObserver(function(mutations) {
     mutations.forEach(function(mutation) {
       if (mutation.attributeName === 'class') {
         if ($('body').hasClass('dark')) {
           $('.footer').addClass('dark-footer');
         } else {
           $('.footer').removeClass('dark-footer');
         }
       }
     });
   });
   
   observer.observe(document.body, { attributes: true });
});
</script>

</body>

</html>

