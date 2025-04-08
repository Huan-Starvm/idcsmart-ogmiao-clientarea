{include file="includes/tablestyle"}

<style>
/* 消息中心页面样式 */
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
}

.card {
 border: none;
 border-radius: 15px;
 box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
 transition: all 0.3s ease;
 overflow: hidden;
 margin-bottom: 20px;
 animation: fadeIn 0.5s ease-out;
}

.card:hover {
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
 transform: translateY(-5px);
}

.card-body {
 padding: 20px;
}

/* 导航标签样式 */
.nav-tabs {
 border-bottom: 1px solid rgba(240, 138, 93, 0.2);
 margin-bottom: 20px;
}

.nav-tabs .nav-item {
 margin-bottom: -1px;
}

.nav-tabs .nav-link {
 border: none;
 border-bottom: 2px solid transparent;
 border-radius: 0;
 padding: 10px 20px;
 font-weight: 500;
 color: var(--gray);
 transition: all 0.3s ease;
 position: relative;
}

.nav-tabs .nav-link:hover {
 color: var(--primary);
 border-color: transparent;
}

.nav-tabs .nav-link.active {
 color: var(--primary);
 background-color: transparent;
 border-color: var(--primary);
 font-weight: 600;
}

.nav-tabs .nav-link.active::after {
 content: '';
 position: absolute;
 bottom: -2px;
 left: 0;
 width: 100%;
 height: 2px;
 background-color: var(--primary);
 border-radius: 2px;
}

/* 搜索区域样式 */
.search-area {
 margin-bottom: 20px;
 position: relative;
}

/* 全新搜索框样式 */
.custom-search-container {
 position: relative;
 max-width: 400px;
 margin-bottom: 15px;
}

.custom-search-input {
 width: 100%;
 height: 42px;
 padding: 10px 15px 10px 45px;
 border-radius: 50px;
 border: 1px solid rgba(240, 138, 93, 0.2);
 background-color: #fff;
 box-shadow: 0 3px 10px rgba(240, 138, 93, 0.05);
 transition: all 0.3s ease;
 font-size: 14px;
 color: var(--dark);
}

.custom-search-input:focus {
 outline: none;
 border-color: var(--primary);
 box-shadow: 0 5px 15px rgba(240, 138, 93, 0.1);
 padding-left: 50px;
}

.custom-search-input::placeholder {
 color: #aaa;
 transition: all 0.3s ease;
}

.custom-search-input:focus::placeholder {
 opacity: 0.7;
}

.custom-search-icon {
 position: absolute;
 left: 15px;
 top: 50%;
 transform: translateY(-50%);
 color: var(--primary);
 font-size: 18px;
 pointer-events: none;
 transition: all 0.3s ease;
}

.custom-search-input:focus + .custom-search-icon {
 color: var(--primary-dark);
 left: 18px;
}

.custom-search-clear {
 position: absolute;
 right: 15px;
 top: 50%;
 transform: translateY(-50%);
 color: #ccc;
 font-size: 16px;
 cursor: pointer;
 opacity: 0;
 transition: all 0.3s ease;
 background: none;
 border: none;
 padding: 0;
 display: flex;
 align-items: center;
 justify-content: center;
 width: 20px;
 height: 20px;
}

.custom-search-input:valid ~ .custom-search-clear,
.custom-search-input:focus ~ .custom-search-clear {
 opacity: 1;
}

.custom-search-clear:hover {
 color: var(--primary);
 transform: translateY(-50%) scale(1.1);
}

/* 表格样式 */
.table.tablelist {
 width: 100%;
 border-collapse: separate;
 border-spacing: 0;
 margin-bottom: 0;
}

.table.tablelist thead {
 background-color: rgba(240, 138, 93, 0.05);
}

.table.tablelist th {
 padding: 15px !important;
 vertical-align: middle !important;
 font-weight: 600 !important;
 color: var(--dark) !important;
 border-bottom: 2px solid rgba(240, 138, 93, 0.2) !important;
 transition: all 0.3s ease;
}

.table.tablelist td {
 padding: 15px !important;
 vertical-align: middle !important;
 border-top: none !important;
 border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
 transition: all 0.3s ease;
 color: var(--gray);
}

.table.tablelist tr:hover td {
 background-color: rgba(240, 138, 93, 0.03) !important;
}

/* 排序图标样式 */
.pointer {
 cursor: pointer;
}

.pointer .bx-caret-up,
.pointer .bx-caret-down {
 font-size: 10px;
 color: rgba(0, 0, 0, 0.2);
 transition: all 0.3s ease;
}

.pointer:hover .bx-caret-up,
.pointer:hover .bx-caret-down {
 color: var(--primary);
}

/* 按钮样式 */
.btn {
 padding: 0.6rem 1.5rem;
 border-radius: 50px;
 font-weight: 600;
 transition: all 0.3s ease;
 position: relative;
 overflow: hidden;
 z-index: 1;
 margin-right: 10px;
}

.btn::before {
 content: "";
 position: absolute;
 top: 0;
 left: -100%;
 width: 100%;
 height: 100%;
 background: linear-gradient(90deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0));
 transition: all 0.4s ease;
 z-index: -1;
}

.btn:hover::before {
 left: 100%;
}

.btn-primary {
 background-color: var(--primary);
 border-color: var(--primary);
 color: white;
 box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
}

.btn-primary:hover {
 background-color: var(--primary-dark);
 border-color: var(--primary-dark);
 transform: translateY(-3px);
 box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
}

.btn-primary:active {
 transform: scale(0.97);
 box-shadow: 0 2px 8px rgba(240, 138, 93, 0.3) !important;
}

.btn-danger {
 background-color: var(--danger);
 border-color: var(--danger);
 color: white;
 box-shadow: 0 4px 15px rgba(252, 92, 101, 0.3);
}

.btn-danger:hover {
 background-color: #eb3b5a;
 border-color: #eb3b5a;
 transform: translateY(-3px);
 box-shadow: 0 6px 20px rgba(252, 92, 101, 0.4);
}

.btn-danger:active {
 transform: scale(0.97);
 box-shadow: 0 2px 8px rgba(252, 92, 101, 0.3) !important;
}

.not-allowed {
 opacity: 0.7;
 cursor: not-allowed;
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

/* 消息状态标签 */
.badge {
 padding: 0.4rem 0.8rem;
 font-size: 0.75rem;
 font-weight: 600;
 border-radius: 50px;
 margin-left: 0.5rem;
}

.badge-info {
 background-color: rgba(240, 138, 93, 0.15) !important;
 color: #f08a5d !important;
}

.badge-success {
 background-color: rgba(38, 222, 129, 0.15);
 color: #26de81;
}

.badge-warning {
 background-color: rgba(254, 211, 48, 0.15);
 color: #fed330;
}

/* 调整表格头部的响应式布局 */
@media (max-width: 768px) {
 .custom-search-container {
   max-width: 100%;
 }
 
 .btn {
   padding: 0.5rem 1.2rem;
   font-size: 0.9rem;
 }
}

@media (max-width: 576px) {
 .nav-tabs {
   display: flex;
   overflow-x: auto;
   white-space: nowrap;
   padding-bottom: 5px;
 }
 
 .nav-tabs .nav-item {
   flex: 0 0 auto;
 }
 
 .nav-tabs .nav-link {
   padding: 8px 10px;
   font-size: 0.85rem;
 }
 
 .table.tablelist th,
 .table.tablelist td {
   padding: 10px 8px !important;
   font-size: 0.85rem;
 }
 
 .custom-search-input {
   height: 38px;
   font-size: 13px;
   padding: 8px 15px 8px 40px;
 }
 
 .custom-search-icon {
   font-size: 16px;
   left: 12px;
 }
 
 .btn {
   padding: 0.4rem 1rem;
   font-size: 0.85rem;
   margin-bottom: 10px;
 }
}

/* 动画效果 */
@keyframes fadeIn {
 from { opacity: 0; transform: translateY(10px); }
 to { opacity: 1; transform: translateY(0); }
}

.table-container {
 animation: fadeIn 0.5s ease-out;
}

/* 美化分页样式 */
.pagination {
 display: flex;
 padding-left: 0;
 list-style: none;
 border-radius: 0.25rem;
 margin-top: 0;
 margin-bottom: 0;
}

.pagination .page-item {
 margin: 0 3px;
}

.pagination .page-item .page-link {
 position: relative;
 display: block;
 padding: 0.5rem 0.75rem;
 margin-left: -1px;
 line-height: 1.25;
 color: var(--primary);
 background-color: #fff;
 border: 1px solid rgba(240, 138, 93, 0.2);
 border-radius: 50px;
 transition: all 0.3s ease;
 min-width: 38px;
 text-align: center;
 font-weight: 500;
 box-shadow: 0 2px 5px rgba(240, 138, 93, 0.05);
}

.pagination .page-item .page-link:hover {
 z-index: 2;
 color: var(--primary-dark);
 text-decoration: none;
 background-color: rgba(240, 138, 93, 0.1);
 border-color: var(--primary);
 transform: translateY(-2px);
 box-shadow: 0 5px 15px rgba(240, 138, 93, 0.1);
}

.pagination .page-item.active .page-link {
 z-index: 3;
 color: #fff;
 background-color: var(--primary);
 border-color: var(--primary);
 box-shadow: 0 5px 15px rgba(240, 138, 93, 0.2);
}

.pagination .page-item.disabled .page-link {
 color: rgba(0, 0, 0, 0.3);
 pointer-events: none;
 cursor: not-allowed;
 background-color: #f8f9fa;
 border-color: #dee2e6;
 box-shadow: none;
}

/* 搜索结果高亮 */
.highlight-match {
 background-color: rgba(240, 138, 93, 0.2);
 padding: 0 2px;
 border-radius: 2px;
 font-weight: 600;
}

/* 搜索无结果提示 */
.no-results {
 text-align: center;
 padding: 20px;
 color: var(--gray);
 background-color: rgba(240, 138, 93, 0.03);
 border-radius: 10px;
 margin: 20px 0;
}

.no-results i {
 font-size: 24px;
 color: var(--primary);
 margin-bottom: 10px;
 display: block;
}

/* 消息标题样式 */
.message-title {
 color: var(--dark);
 font-weight: 500;
 transition: all 0.3s ease;
}

.message-title:hover {
 color: var(--primary);
}

/* 未读消息样式 */
.unread-message {
 position: relative;
}

.unread-message td:first-child {
 position: relative;
}

.unread-message td:first-child::before {
 content: "";
 position: absolute;
 left: 0;
 top: 50%;
 transform: translateY(-50%);
 width: 4px;
 height: 50%;
 background-color: var(--primary);
 border-radius: 0 2px 2px 0;
}

.unread-message .message-title {
 font-weight: 600;
}

/* 按钮容器样式 */
.action-buttons {
 margin-top: 15px;
 display: flex;
 flex-wrap: wrap;
}
</style>

<div class="card">
	<div class="card-body">
		<div class="table-container">
			<div class="table-header">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item">
						<a href="message?type=0" class="nav-link {if $Think.get.type=='0' or !$Think.get.type }active{/if}">
							{$Lang.full_detail}
						</a>
					</li>
					{foreach $Setting.unread_nav as $navList}
					<li class="nav-item">
						<a href="message?type={$navList.id}" class="nav-link {if $Think.get.type==$navList.id }active{/if}"
							data-id="{$navList.id}">
							{$Lang[$navList.name]}
							{if $navList.unread_num != '0'}
							<span class="badge badge-info">{$navList.unread_num}</span>
							{/if}
						</a>
					</li>
					{/foreach}
				</ul>
			</div>
			
			<!-- 自定义搜索区域 -->
			<div class="search-area">
				<div class="custom-search-container">
					<input type="text" class="custom-search-input" id="messageSearch" placeholder="搜索消息..." required>
					<i class="bx bx-search custom-search-icon"></i>
					<button type="button" class="custom-search-clear" id="clearSearch">
						<i class="bx bx-x"></i>
					</button>
				</div>
			</div>
			
			<div class="table-responsive">
				{include file="message/messagetabledata"}
			</div>
			<!-- 表单底部调用开始 -->
			{include file="includes/tablefooter" url="message"}
			<div class="action-buttons">
				<button type="button" class="btn btn-danger waves-effect waves-light not-allowed" onclick="delMsg()"
					id="delBtn" disabled>{$Lang.delete}</button>
				<button type="button" class="btn btn-primary waves-effect waves-light not-allowed" onclick="readMsg()"
					id="readBtn" disabled>{$Lang.mark_read}</button>
				<button id="allReadBtn" type="button" class="btn btn-primary waves-effect waves-light" onclick="allRead()" disabled>{$Lang.all_read}</button>
				<button id="allDelBtn" type="button" class="btn btn-danger waves-effect waves-light" onclick="allDel()" disabled>{$Lang.delete_all}</button>
			</div>
		</div>
	</div>
</div>

<script>
	// 表格多选
	$(function () {
		$("#customCheckHead").on('change',function(){
			if($(this).is(':checked') && $('.row-checkbox').length){
				$('#delBtn,#readBtn,#allReadBtn,#allDelBtn').removeAttr('disabled').removeClass('not-allowed');
			} else{
				$('#delBtn,#readBtn,#allReadBtn,#allDelBtn').attr('disabled', 'disabled').addClass('not-allowed');
			}
		})
		$('input[name="headCheckbox"]').on('change', function () {
			$('.row-checkbox').prop("checked", $(this).is(':checked'))
		});
		$('.row-checkbox').on('change', function () {
			$('input[name="headCheckbox"]').prop('checked', $('.row-checkbox').length === $('.row-checkbox:checked')
				.length)
			// 下面这个判断处理底部按钮的disabled
			if ($('.row-checkbox:checked').length) {
				$('#delBtn,#readBtn,#allReadBtn,#allDelBtn').removeAttr('disabled').removeClass('not-allowed');
			} else {
				$('#delBtn,#readBtn,#allReadBtn,#allDelBtn').attr('disabled', 'disabled').addClass('not-allowed');
			}
		});
		
		// 添加表格行悬停效果
		$('.tablelist tbody tr').hover(
			function() {
				$(this).css({
					'background-color': 'rgba(240, 138, 93, 0.03)',
					'transform': 'translateY(-2px)',
					'box-shadow': '0 5px 15px rgba(0, 0, 0, 0.05)',
					'transition': 'all 0.3s ease'
				});
			},
			function() {
				$(this).css({
					'background-color': '',
					'transform': '',
					'box-shadow': '',
					'transition': 'all 0.3s ease'
				});
			}
		);
		
		// 为分页添加动画效果
		$('.pagination .page-item').not('.active, .disabled').hover(
			function() {
				$(this).find('.page-link').css({
					'transform': 'translateY(-2px)',
					'box-shadow': '0 5px 15px rgba(240, 138, 93, 0.1)'
				});
			},
			function() {
				$(this).find('.page-link').css({
					'transform': 'translateY(0)',
					'box-shadow': '0 2px 5px rgba(240, 138, 93, 0.05)'
				});
			}
		);
		
		// 为按钮添加动画效果
		$('.btn').not('.not-allowed').hover(
			function() {
				$(this).css({
					'transform': 'translateY(-3px)',
					'box-shadow': $(this).hasClass('btn-danger') ? 
						'0 6px 20px rgba(252, 92, 101, 0.4)' : 
						'0 6px 20px rgba(240, 138, 93, 0.4)'
				});
			},
			function() {
				$(this).css({
					'transform': '',
					'box-shadow': $(this).hasClass('btn-danger') ? 
						'0 4px 15px rgba(252, 92, 101, 0.3)' : 
						'0 4px 15px rgba(240, 138, 93, 0.3)'
				});
			}
		);
		
		// 自定义搜索功能
		$('#messageSearch').on('input', function() {
			const searchTerm = $(this).val().toLowerCase().trim();
			let hasResults = false;
			
			$('.tablelist tbody tr').each(function() {
				const title = $(this).find('td:nth-child(2)').text().toLowerCase();
				const time = $(this).find('td:nth-child(3)').text().toLowerCase();
				
				if (title.includes(searchTerm) || time.includes(searchTerm)) {
					$(this).show();
					hasResults = true;
					
					// 高亮匹配文本
					$(this).find('td').each(function() {
						const text = $(this).text();
						if (text.toLowerCase().includes(searchTerm)) {
							const regex = new RegExp('(' + searchTerm.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + ')', 'gi');
							$(this).html(text.replace(regex, '<span class="highlight-match">$1</span>'));
						}
					});
				} else {
					$(this).hide();
				}
			});
			
			// 显示无结果提示
			if (!hasResults && searchTerm !== '') {
				if ($('.no-results').length === 0) {
					$('.table-responsive').append('<div class="no-results"><i class="bx bx-message-x"></i>没有找到匹配的消息</div>');
				}
				$('.tablelist').hide();
			} else {
				$('.no-results').remove();
				$('.tablelist').show();
			}
		});
		
		// 清除搜索
		$('#clearSearch').on('click', function() {
			$('#messageSearch').val('').trigger('input');
			$(this).css('opacity', '0');
		});
		
		// 添加搜索框动画效果
		$('#messageSearch').on('focus', function() {
			$(this).parent().css('transform', 'scale(1.02)');
			$('.custom-search-icon').css('color', '#f08a5d');
		}).on('blur', function() {
			$(this).parent().css('transform', 'scale(1)');
			if (!$(this).val()) {
				$('.custom-search-icon').css('color', '');
			}
		});
		
		// 标记未读消息
		$('.tablelist tbody tr').each(function() {
			const isUnread = $(this).find('td:nth-child(4)').text().trim() === '未读';
			if (isUnread) {
				$(this).addClass('unread-message');
				$(this).find('td:nth-child(2) a').addClass('message-title');
			} else {
				$(this).find('td:nth-child(2) a').addClass('message-title');
			}
		});
	});
	
	// 获取所有勾选项的id
	const getCheckbox = function () {
		// 勾选的id
		const ids = []
		// 所有表格内的checkbox
		const allCheck = [...$('.row-checkbox:checked')]
		for (const key in allCheck) {
			if (Object.hasOwnProperty.call(allCheck, key)) {
				const item = allCheck[key];
				ids.push(item.id.substring(11))
			}
		}
		return ids
	}

	// 多选删除消息
	function delMsg() {
		const ids = getCheckbox()
		$.ajax({
			type: "get",
			url: '' + '/delete_messgage',
			data: {
				ids
			},
			success: function (data) {
				if (data.status == 200) {
					toastr.success(data.msg)
					location.reload()
				} else {
					toastr.error(data.msg)
				}
			}
		});
	}

	// 多选阅读消息
	function readMsg() {
		const ids = getCheckbox()
		$.ajax({
			type: "get",
			url: '' + '/read_messgage',
			data: {
				ids
			},
			success: function (data) {
				if (data.status == 200) {
					toastr.success(data.msg)
					location.reload()
				} else {
					toastr.error(data.msg)
				}
			}
		});
	}

	// 全部已读
	function allRead() {
		$.ajax({
			type: "get",
			url: '' + '/read_messgage',
			data: {
				type: 0
			},
			success: function (data) {
				if (data.status == 200) {
					toastr.success(data.msg)
					location.reload()
				} else {
					toastr.error(data.msg)
				}
			}
		});
	}

	// 全部删除
	function allDel() {
		$.ajax({
			type: "get",
			url: '' + '/delete_messgage',
			data: {
				type: 0
			},
			success: function (data) {
				if (data.status == 200) {
					toastr.success(data.msg)
					location.reload()
				} else {
					toastr.error(data.msg)
				}
			}
		});
	}
</script>

