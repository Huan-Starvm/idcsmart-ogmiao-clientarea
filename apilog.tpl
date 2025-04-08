{include file="includes/tablestyle"}

<style>
/* API日志页面样式 */
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
}

.card {
 border: none;
 border-radius: 15px;
 box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
 transition: all 0.3s ease;
 overflow: hidden;
 margin-bottom: 20px;
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

/* 调整表格头部的响应式布局 */
@media (max-width: 768px) {
 .custom-search-container {
   max-width: 100%;
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
</style>

<div class="card">
    <div class="card-body">
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link" href="systemlog">
                    <span>{$Lang.system_log}</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="loginlog">
                    <span>{$Lang.log_in}</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active">
                    <span>{$Lang.api_log}</span>
                </a>
            </li>
        </ul>

        <!-- 自定义搜索区域 -->
        <div class="search-area">
            <div class="custom-search-container">
                <input type="text" class="custom-search-input" id="apiLogSearch" placeholder="搜索API日志..." required>
                <i class="bx bx-search custom-search-icon"></i>
                <button type="button" class="custom-search-clear" id="clearSearch">
                    <i class="bx bx-x"></i>
                </button>
            </div>
        </div>

        <div class="table-container">
            <div class="table-responsive">
                <table class="table tablelist">
                    <colgroup>
                        <col width="50%">
                        <col>
                        <col>
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>
                            <span>{$Lang.operation_details}</span>
                        </th>
                        <th class="pointer" prop="create_time">
                            <span>{$Lang.operation_time}</span>
                            <span class="d-inline-flex flex-column justify-content-center ml-1 offset-3">
                                <i class="bx bx-caret-up"></i>
                                <i class="bx bx-caret-down"></i>
                            </span>
                        </th>
                        <th>
                            <span>{$Lang.ip_address}</span>
                        </th>
                        <th>
                            <span>{$Lang.operator}</span>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $APILog as $list}
                        <tr>
                            <td>{$list.description}</td>
                            <td>{$list.create_time|date="Y-m-d H:i"}</td>
                            <td>{$list.ipaddr}</td>
                            <td>{$list.user}</td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
            <!-- 表单底部调用开始 -->
            {include file="includes/tablefooter" url="apilog"}
        </div>
    </div>
</div>

<script>
$(document).ready(function() {
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
    
    // 添加排序图标高亮效果
    $('.pointer').click(function() {
        $('.pointer .bx-caret-up, .pointer .bx-caret-down').css('color', 'rgba(0, 0, 0, 0.2)');
        
        // 检查排序方向
        if (localStorage.getItem('sort') === 'asc') {
            $(this).find('.bx-caret-up').css('color', '#f08a5d');
        } else {
            $(this).find('.bx-caret-down').css('color', '#f08a5d');
        }
    });
    
    // 初始化排序图标状态
    if (localStorage.getItem('sort') === 'asc') {
        $('.pointer[prop="create_time"] .bx-caret-up').css('color', '#f08a5d');
    } else if (localStorage.getItem('sort') === 'desc') {
        $('.pointer[prop="create_time"] .bx-caret-down').css('color', '#f08a5d');
    }
    
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
    
    // 自定义搜索功能
    $('#apiLogSearch').on('input', function() {
        const searchTerm = $(this).val().toLowerCase().trim();
        let hasResults = false;
        
        $('.tablelist tbody tr').each(function() {
            const description = $(this).find('td:nth-child(1)').text().toLowerCase();
            const time = $(this).find('td:nth-child(2)').text().toLowerCase();
            const ip = $(this).find('td:nth-child(3)').text().toLowerCase();
            const operator = $(this).find('td:nth-child(4)').text().toLowerCase();
            
            if (description.includes(searchTerm) || time.includes(searchTerm) || 
                ip.includes(searchTerm) || operator.includes(searchTerm)) {
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
                $('.table-responsive').append('<div class="no-results"><i class="bx bx-search-alt"></i>没有找到匹配的结果</div>');
            }
            $('.tablelist').hide();
        } else {
            $('.no-results').remove();
            $('.tablelist').show();
        }
    });
    
    // 清除搜索
    $('#clearSearch').on('click', function() {
        $('#apiLogSearch').val('').trigger('input');
        $(this).css('opacity', '0');
    });
    
    // 添加搜索框动画效果
    $('#apiLogSearch').on('focus', function() {
        $(this).parent().css('transform', 'scale(1.02)');
        $('.custom-search-icon').css('color', '#f08a5d');
    }).on('blur', function() {
        $(this).parent().css('transform', 'scale(1)');
        if (!$(this).val()) {
            $('.custom-search-icon').css('color', '');
        }
    });
    
    // 连接原有搜索功能
    function connectToOriginalSearch() {
        const originalSearchInput = $('.table-search .form-control');
        if (originalSearchInput.length) {
            $('#apiLogSearch').on('input', function() {
                originalSearchInput.val($(this).val()).trigger('input');
            });
        }
    }
    
    // 尝试连接原有搜索功能
    connectToOriginalSearch();
    
    // 如果原有搜索框是动态加载的，可能需要延迟连接
    setTimeout(connectToOriginalSearch, 500);
});
</script>

