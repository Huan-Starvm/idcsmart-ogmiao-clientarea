<!-- start：资源列表 -->
<style>
/* 为小容器优化的表格样式 */
.resource-container {
  font-size: 14px;
  overflow-x: hidden; /* 防止双重滚动条 */
  width: 100%;
  position: relative;
}

.resource-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 12px;
}

.resource-title {
  font-size: 16px;
  font-weight: 600;
  color: #333;
  margin: 0;
}

.resource-search {
  position: relative;
  width: 100%;
  margin-bottom: 10px;
}

.resource-search input {
  width: 100%;
  height: 36px;
  padding: 0 30px;
  border-radius: 18px;
  border: 1px solid rgba(240, 138, 93, 0.2);
  font-size: 14px;
  transition: all 0.2s ease;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
}

.resource-search input:focus {
  border-color: #f08a5d;
  box-shadow: 0 1px 5px rgba(240, 138, 93, 0.2);
  outline: none;
}

.resource-search .search-icon {
  position: absolute;
  left: 10px;
  top: 50%;
  transform: translateY(-50%);
  color: #f08a5d;
  font-size: 14px;
}

.resource-search .clear-icon {
  position: absolute;
  right: 10px;
  top: 50%;
  transform: translateY(-50%);
  color: #aaa;
  font-size: 14px;
  cursor: pointer;
  transition: color 0.2s ease;
  opacity: 0.7;
}

.resource-search .clear-icon:hover {
  color: #f08a5d;
  opacity: 1;
}

/* 表格容器样式 */
.table-responsive {
  border-radius: 6px;
  overflow-x: auto; /* 启用水平滚动 */
  -webkit-overflow-scrolling: touch; /* iOS上的平滑滚动 */
  width: 100%;
  position: relative; /* 用于滚动指示器 */
  border: 1px solid rgba(0, 0, 0, 0.05);
  margin-bottom: 10px;
  /* 增强触摸滚动体验 */
  touch-action: pan-x pan-y;
  scrollbar-width: thin;
  scrollbar-color: rgba(240, 138, 93, 0.3) rgba(240, 138, 93, 0.1);
}

/* 自定义滚动条样式 */
.table-responsive::-webkit-scrollbar {
  height: 6px;
  width: 6px;
}

.table-responsive::-webkit-scrollbar-track {
  background: rgba(240, 138, 93, 0.1);
  border-radius: 3px;
}

.table-responsive::-webkit-scrollbar-thumb {
  background-color: rgba(240, 138, 93, 0.3);
  border-radius: 3px;
}

/* 滚动指示器 */
.scroll-indicator {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: rgba(240, 138, 93, 0.1);
  z-index: 5;
  pointer-events: none;
}

.scroll-indicator-thumb {
  position: absolute;
  height: 100%;
  background-color: rgba(240, 138, 93, 0.5);
  border-radius: 3px;
  transition: width 0.1s ease, transform 0.1s ease;
}

/* 表格样式 */
.tablelist {
  width: 100%;
  min-width: 600px; /* 确保表格不会收缩太多 */
  margin-bottom: 0; /* 移除底部边距 */
  border-collapse: separate;
  border-spacing: 0;
}

.tablelist th {
  padding: 10px !important;
  vertical-align: middle !important;
  font-weight: 600 !important;
  color: #555 !important;
  background-color: rgba(240, 138, 93, 0.05) !important;
  border-bottom: 1px solid rgba(240, 138, 93, 0.2) !important;
  font-size: 14px;
  text-align: left;
  white-space: nowrap;
}

.tablelist td {
  padding: 10px !important;
  vertical-align: middle !important;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
  font-size: 14px;
}

.tablelist tr:hover td {
  background-color: rgba(240, 138, 93, 0.03) !important;
}

.tablelist a {
  color: #f08a5d;
  text-decoration: none;
}

.tablelist a:hover {
  color: #e67e4d;
  text-decoration: underline;
}

.status-dot {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  margin-right: 5px;
}

.status-active {
  background-color: #28a745;
}

.table-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: #f8f9fa;
  border-top: 1px solid rgba(0, 0, 0, 0.05);
  font-size: 14px;
}

.table-pageinfo {
  color: #6c757d;
}

#sourcelimitSel {
  height: 28px;
  padding: 2px 16px 2px 6px;
  font-size: 12px;
  color: #555;
  background-color: #fff;
  border: 1px solid rgba(240, 138, 93, 0.2);
  border-radius: 4px;
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='4' height='5' viewBox='0 0 4'%3e%3cpath fill='%23f08a5d' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right 5px center;
  background-size: 8px 10px;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

.pagination {
  margin: 0;
  display: flex;
  padding-left: 0;
  list-style: none;
}

.pagination .page-item {
  margin: 0 2px;
}

.pagination .page-item .page-link {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 28px;
  min-width: 28px;
  padding: 0 8px;
  line-height: 1;
  color: #f08a5d;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 4px;
  font-size: 14px;
  transition: all 0.2s ease;
}

.pagination .page-item .page-link:hover {
  background-color: rgba(240, 138, 93, 0.1);
  border-color: rgba(240, 138, 93, 0.2);
}

.pagination .page-item.active .page-link {
  color: #fff;
  background-color: #f08a5d;
  border-color: #f08a5d;
}

.pagination .page-item.disabled .page-link {
  color: rgba(0, 0, 0, 0.3);
  pointer-events: none;
  cursor: not-allowed;
  background-color: #f8f9fa;
  border-color: #dee2e6;
}

.no-data, .no-search-results {
  text-align: center;
  padding: 15px;
  color: #888;
  font-size: 13px;
  background-color: rgba(0, 0, 0, 0.02);
}

.highlight-match {
  background-color: rgba(240, 138, 93, 0.2);
  padding: 0 2px;
  border-radius: 2px;
  font-weight: 600;
}

.sort-icon {
  font-size: 10px;
  color: rgba(0, 0, 0, 0.2);
}

.sort-icon.active {
  color: #f08a5d;
}

.table-top-container {
  display: flex;
  flex-direction: column;
}

.table-actions {
  display: flex;
  justify-content: space-between;
  margin-bottom: 8px;
}

.host-link {
  color: #444 !important;
  transition: color 0.2s ease;
  font-weight: 500;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  display: block;
  max-width: 100%;
}

.ip-badge {
  display: inline-block;
  padding: 3px 8px;
  background-color: rgba(0, 0, 0, 0.05);
  border-radius: 4px;
  font-family: monospace;
  font-size: 13px;
  white-space: nowrap;
  max-width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
}

/* 滚动提示 */
.scroll-hint {
  display: none;
  text-align: center;
  font-size: 12px;
  color: #888;
  padding: 5px 0;
  background-color: rgba(240, 138, 93, 0.05);
  border-radius: 4px;
  margin-bottom: 8px;
  animation: pulse 2s infinite;
}

@keyframes pulse {
  0% { opacity: 0.6; }
  50% { opacity: 1; }
  100% { opacity: 0.6; }
}

/* 卡片视图 - 用于极小屏幕 */
.card-view {
  display: none;
  margin-top: 10px;
}

.resource-card {
  border: 1px solid rgba(0, 0, 0, 0.05);
  border-radius: 8px;
  padding: 12px;
  margin-bottom: 10px;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
  transition: all 0.2s ease;
}

.resource-card:hover {
  box-shadow: 0 2px 5px rgba(240, 138, 93, 0.1);
  transform: translateY(-2px);
}

.card-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 8px;
  padding-bottom: 8px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.card-status {
  display: flex;
  align-items: center;
  font-weight: 500;
  font-size: 14px;
}

.card-hostname {
  font-weight: 600;
  font-size: 15px;
  margin-bottom: 8px;
  color: #444;
}

.card-details {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  font-size: 13px;
}

.card-detail-item {
  flex: 1 0 45%;
  display: flex;
  flex-direction: column;
}

.card-detail-label {
  font-size: 12px;
  color: #888;
  margin-bottom: 2px;
}

.card-detail-value {
  font-weight: 500;
}

.card-actions {
  margin-top: 10px;
  text-align: right;
}

.view-details-btn {
  display: inline-flex;
  align-items: center;
  padding: 5px 10px;
  font-size: 13px;
  color: #f08a5d;
  background-color: rgba(240, 138, 93, 0.05);
  border: 1px solid rgba(240, 138, 93, 0.1);
  border-radius: 4px;
  transition: all 0.2s ease;
  text-decoration: none;
}

.view-details-btn:hover {
  background-color: rgba(240, 138, 93, 0.1);
  color: #e67e4d;
  text-decoration: none;
}

.view-details-btn i {
  margin-left: 5px;
  font-size: 14px;
}

/* 视图切换按钮 */
.view-toggle {
  display: none;
  margin-bottom: 10px;
}

.view-toggle-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 5px 10px;
  font-size: 13px;
  color: #666;
  background-color: #f8f9fa;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 4px;
  transition: all 0.2s ease;
  cursor: pointer;
}

.view-toggle-btn.active {
  color: #fff;
  background-color: #f08a5d;
  border-color: #f08a5d;
}

.view-toggle-btn i {
  margin-right: 5px;
  font-size: 14px;
}

/* 响应式调整 */
@media (max-width: 768px) {
  .table-actions {
    flex-direction: column;
  }
  
  .resource-search {
    margin-bottom: 8px;
  }
  
  .table-footer {
    flex-direction: column;
    gap: 8px;
  }
  
  .scroll-hint {
    display: block;
  }
  
  .view-toggle {
    display: flex;
    gap: 5px;
  }
  
  /* 表格滚动指示器 */
  .has-more-content::after {
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    width: 20px;
    height: 100%;
    background: linear-gradient(to right, rgba(255,255,255,0), rgba(240,138,93,0.1));
    pointer-events: none;
    z-index: 2;
    animation: fadeInOut 1.5s infinite;
  }
  
  @keyframes fadeInOut {
    0%, 100% { opacity: 0.3; }
    50% { opacity: 0.8; }
  }
  
  /* 表格列宽度调整 */
  .tablelist th, 
  .tablelist td {
    padding: 8px 6px !important;
    font-size: 13px !important;
  }
}

@media (max-width: 576px) {
  /* 在小屏幕上启用卡片视图 */
  .card-view {
    display: block;
  }
  
  /* 默认隐藏表格视图，但可以通过切换按钮显示 */
  .table-view {
    display: none;
  }
  
  /* 当表格视图激活时显示 */
  .table-view.active {
    display: block;
  }
  
  /* 当卡片视图激活时显示 */
  .card-view.active {
    display: block;
  }
  
  .tablelist th:nth-child(3), 
  .tablelist td:nth-child(3),
  .tablelist th:nth-child(4), 
  .tablelist td:nth-child(4) {
    display: none;
  }
  
  .tablelist th,
  .tablelist td {
    font-size: 12px !important;
    padding: 6px 4px !important;
  }
  
  .pagination .page-item .page-link {
    font-size: 13px;
    height: 26px;
    min-width: 26px;
    padding: 0 6px;
  }
  
  .table-pageinfo {
    font-size: 12px;
  }
}
</style>

<div class="resource-container">
  <div class="table-top-container">
    <div class="resource-header">
      <h5 class="resource-title">{$Lang.resource_list}</h5>
    </div>
    
    <div class="resource-search">
      <i class="bx bx-search search-icon"></i>
      <input type="text" id="resourceSearch" placeholder="搜索IP或主机名...">
      <i class="bx bx-x clear-icon" id="clearSearch"></i>
    </div>
    
    <!-- 视图切换按钮 -->
    <div class="view-toggle">
      <button class="view-toggle-btn active" data-view="card">
        <i class="bx bx-card"></i> 卡片视图
      </button>
      <button class="view-toggle-btn" data-view="table">
        <i class="bx bx-table"></i> 表格视图
      </button>
    </div>
  </div>
  
  <!-- 滚动提示 -->
  <div class="scroll-hint">
    <i class="bx bx-gesture"></i> 左右滑动查看更多内容
  </div>
  
  <!-- 表格视图 -->
  <div class="table-view">
    <div class="table-responsive">
      <div class="scroll-indicator">
        <div class="scroll-indicator-thumb"></div>
      </div>
      <table class="table tablelist mb-0">
        <thead>
          <tr>
            <th width="20%">{$Lang.machine_status}</th>
            <th width="30%">{$Lang.host_name}</th>
            <th width="20%" class="pointer" prop="nextduedate">{$Lang.due_date}
              <span class="ml-1">
                <i class="bx bx-caret-up sort-icon"></i>
                <i class="bx bx-caret-down sort-icon"></i>
              </span>
            </th>
            <th width="15%">{$Lang.cost}</th>
            <th width="15%">IP</th>
          </tr>
        </thead>
        <tbody>
          {if $ClientArea.hostlist}
          {foreach $ClientArea.hostlist as $list}
          <tr>
            <td>
              <span class="status-dot status-active"></span>
              {$list.domainstatus_desc}
            </td>
            <td>
              <a href="servicedetail?id={$list.id}" class="host-link" title="{$list.productname}({$list.domain})">{$list.productname}({$list.domain})</a>
            </td>
            <td>{if $list.billingcycle!="free" && $list.cycle_desc!='一次性'}{$list.nextduedate|date="Y-m-d"}{else} - {/if}</td>
            <td>{if $list.billingcycle!="free"}{$list.price_desc}/{$list.cycle_desc}{else}{$list.cycle_desc}{/if}</td>
            <td><span class="ip-badge" title="{$list.dedicatedip}">{$list.dedicatedip}</span></td>
          </tr>
          {/foreach}
          {else}
          <tr>
            <td colspan="5">
              <div class="no-data">{$Lang.nothing_content}</div>
            </td>
          </tr>
          {/if}
        </tbody>
      </table>
    </div>
  </div>
  
  <!-- 卡片视图 -->
  <div class="card-view active">
    {if $ClientArea.hostlist}
    {foreach $ClientArea.hostlist as $list}
    <div class="resource-card">
      <div class="card-header">
        <div class="card-status">
          <span class="status-dot status-active"></span>
          {$list.domainstatus_desc}
        </div>
        <span class="ip-badge" title="{$list.dedicatedip}">{$list.dedicatedip}</span>
      </div>
      <div class="card-hostname">
        {$list.productname}({$list.domain})
      </div>
      <div class="card-details">
        <div class="card-detail-item">
          <span class="card-detail-label">{$Lang.due_date}</span>
          <span class="card-detail-value">{if $list.billingcycle!="free" && $list.cycle_desc!='一次性'}{$list.nextduedate|date="Y-m-d"}{else} - {/if}</span>
        </div>
        <div class="card-detail-item">
          <span class="card-detail-label">{$Lang.cost}</span>
          <span class="card-detail-value">{if $list.billingcycle!="free"}{$list.price_desc}/{$list.cycle_desc}{else}{$list.cycle_desc}{/if}</span>
        </div>
      </div>
      <div class="card-actions">
        <a href="servicedetail?id={$list.id}" class="view-details-btn">
          查看详情 <i class="bx bx-right-arrow-alt"></i>
        </a>
      </div>
    </div>
    {/foreach}
    {else}
    <div class="no-data">{$Lang.nothing_content}</div>
    {/if}
  </div>
  
  <div class="table-footer">
    <div class="table-pageinfo">
      <span>{$Lang.common} {$ClientArea.Total} {$Lang.strips}</span>
      <span class="ml-2">
        {$Lang.each_page}
        <select id="sourcelimitSel">
          <option value="5" {if $ClientArea.Limit==5}selected{/if}>5</option>
          <option value="10" {if $ClientArea.Limit==10}selected{/if}>10</option>
          <option value="15" {if $ClientArea.Limit==15}selected{/if}>15</option>
          <option value="20" {if $ClientArea.Limit==20}selected{/if}>20</option>
          <option value="50" {if $ClientArea.Limit==50}selected{/if}>50</option>
          <option value="100" {if $ClientArea.Limit==100}selected{/if}>100</option>
        </select> {$Lang.strips}
      </span>
    </div>
    <ul class="pagination pagination-sm">
      {$ClientArea.Pages}
    </ul>
  </div>
</div>

<script>
$(function () {
  // 排序
  $('.pointer').on('click', function () {
    if (!$(this).attr('prop')) return false
    getSourceList('sort', $(this).attr('prop'))
  })
  
  //改变排序样式
  changeStyle()
  function changeStyle() {
    $('.sort-icon').removeClass('active');
    let sort = localStorage.getItem('sort');
    if(sort === 'desc') {
      $('.bx-caret-down').addClass('active');
    } else if(sort === 'asc'){
      $('.bx-caret-up').addClass('active');
    }
  }

  // 每页数量选择改变
  $('#sourcelimitSel').on('change', function () {
    getSourceList('limit')
  })

  // 分页
  $('.page-link').on('click', function (e) {
    e.preventDefault()
    $.get('' + $(this).attr('href'), function (data) {
      $('#sourceListBox').html(data)
    })
  })
  
  // 搜索功能
  $('#resourceSearch').on('input', function() {
    const searchTerm = $(this).val().toLowerCase().trim();
    toggleClearButton(searchTerm);
    
    if (searchTerm === '') {
      // 显示所有行和卡片
      $('.tablelist tbody tr').show();
      $('.resource-card').show();
      $('.no-search-results').remove();
      return;
    }
    
    let hasResults = false;
    
    // 表格视图搜索
    $('.tablelist tbody tr').each(function() {
      const hostName = $(this).find('td:nth-child(2)').text().toLowerCase();
      const ipAddress = $(this).find('td:nth-child(5)').text().toLowerCase();
      
      if (hostName.includes(searchTerm) || ipAddress.includes(searchTerm)) {
        $(this).show();
        
        // 重置之前的高亮
        const hostNameCell = $(this).find('td:nth-child(2)');
        const ipCell = $(this).find('td:nth-child(5)');
        
        hostNameCell.html(hostNameCell.html().replace(/<mark class="highlight-match">(.*?)<\/mark>/g, '$1'));
        ipCell.html(ipCell.html().replace(/<mark class="highlight-match">(.*?)<\/mark>/g, '$1'));
        
        // 应用高亮
        if (hostName.includes(searchTerm)) {
          const regex = new RegExp('(' + searchTerm.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + ')', 'gi');
          const newHtml = hostNameCell.html().replace(regex, '<mark class="highlight-match">$1</mark>');
          hostNameCell.html(newHtml);
        }
        
        if (ipAddress.includes(searchTerm)) {
          const regex = new RegExp('(' + searchTerm.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + ')', 'gi');
          const newHtml = ipCell.html().replace(regex, '<mark class="highlight-match">$1</mark>');
          ipCell.html(newHtml);
        }
        
        hasResults = true;
      } else {
        $(this).hide();
      }
    });
    
    // 卡片视图搜索
    $('.resource-card').each(function() {
      const hostName = $(this).find('.card-hostname').text().toLowerCase();
      const ipAddress = $(this).find('.ip-badge').text().toLowerCase();
      
      if (hostName.includes(searchTerm) || ipAddress.includes(searchTerm)) {
        $(this).show();
        
        // 重置之前的高亮
        const hostNameElem = $(this).find('.card-hostname');
        const ipElem = $(this).find('.ip-badge');
        
        hostNameElem.html(hostNameElem.html().replace(/<mark class="highlight-match">(.*?)<\/mark>/g, '$1'));
        ipElem.html(ipElem.html().replace(/<mark class="highlight-match">(.*?)<\/mark>/g, '$1'));
        
        // 应用高亮
        if (hostName.includes(searchTerm)) {
          const regex = new RegExp('(' + searchTerm.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + ')', 'gi');
          const newHtml = hostNameElem.html().replace(regex, '<mark class="highlight-match">$1</mark>');
          hostNameElem.html(newHtml);
        }
        
        if (ipAddress.includes(searchTerm)) {
          const regex = new RegExp('(' + searchTerm.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + ')', 'gi');
          const newHtml = ipElem.html().replace(regex, '<mark class="highlight-match">$1</mark>');
          ipElem.html(newHtml);
        }
        
        hasResults = true;
      } else {
        $(this).hide();
      }
    });
    
    // 没有结果时显示提示
    if (!hasResults) {
      if ($('.no-search-results').length === 0) {
        if ($('.table-view').hasClass('active')) {
          $('.tablelist tbody').append('<tr class="no-search-results"><td colspan="5"><div>没有找到匹配的结果</div></td></tr>');
        } else {
          $('.card-view').append('<div class="no-search-results">没有找到匹配的结果</div>');
        }
      }
    } else {
      $('.no-search-results').remove();
    }
  });
  
  // 清除搜索
  $('#clearSearch').on('click', function() {
    $('#resourceSearch').val('').trigger('input');
  });
  
  // 控制清除按钮显示
  function toggleClearButton(searchTerm) {
    if (searchTerm && searchTerm.length > 0) {
      $('#clearSearch').css('visibility', 'visible');
    } else {
      $('#clearSearch').css('visibility', 'hidden');
    }
  }
  
  // 初始化清除按钮
  toggleClearButton('');
  
  // 响应式调整
  function adjustForSize() {
    if ($(window).width() <= 480) {
      $('.resource-title').text('资源列表');
    } else {
      $('.resource-title').text('{$Lang.resource_list}');
    }
    
    // 检查表格是否需要水平滚动
    const tableWrapper = $('.table-responsive');
    const table = tableWrapper.find('table');
    
    if (table.width() > tableWrapper.width()) {
      tableWrapper.addClass('has-more-content');
    } else {
      tableWrapper.removeClass('has-more-content');
    }
  }
  
  $(window).on('resize', adjustForSize);
  adjustForSize();
  
  // 添加表格滚动指示器
  function updateScrollIndicators() {
    const tableWrapper = $('.table-responsive');
    const table = tableWrapper.find('table');
    
    if (table.width() > tableWrapper.width()) {
      const scrollLeft = tableWrapper.scrollLeft();
      const maxScroll = table.width() - tableWrapper.width();
      
      // 更新滚动指示器
      const thumbWidth = (tableWrapper.width() / table.width()) * 100;
      const thumbPosition = (scrollLeft / maxScroll) * (100 - thumbWidth);
      
      $('.scroll-indicator-thumb').css({
        width: thumbWidth + '%',
        left: thumbPosition + '%'
      });
    } else {
      $('.scroll-indicator-thumb').css({
        width: '100%',
        left: '0'
      });
    }
  }
  
  // 初始化滚动指示器
  updateScrollIndicators();
  
  // 监听滚动事件
  $('.table-responsive').on('scroll', updateScrollIndicators);
  
  // 窗口大小改变时更新
  $(window).on('resize', updateScrollIndicators);
  
  // 添加触摸滑动支持
  let touchStartX = 0;
  let touchStartY = 0;
  let tableWrapper = $('.table-responsive');
  
  tableWrapper.on('touchstart', function(e) {
    touchStartX = e.originalEvent.touches[0].clientX;
    touchStartY = e.originalEvent.touches[0].clientY;
  });
  
  tableWrapper.on('touchmove', function(e) {
    if (!touchStartX || !touchStartY) return;
    
    const touchEndX = e.originalEvent.touches[0].clientX;
    const touchEndY = e.originalEvent.touches[0].clientY;
    
    const xDiff = touchStartX - touchEndX;
    const yDiff = touchStartY - touchEndY;
    
    // 如果水平滑动大于垂直滑动，阻止页面滚动
    if (Math.abs(xDiff) > Math.abs(yDiff)) {
      e.preventDefault();
      
      // 手动滚动表格
      tableWrapper.scrollLeft(tableWrapper.scrollLeft() + xDiff);
    }
  });
  
  // 视图切换
  $('.view-toggle-btn').on('click', function() {
    const viewType = $(this).data('view');
    
    // 更新按钮状态
    $('.view-toggle-btn').removeClass('active');
    $(this).addClass('active');
    
    // 切换视图
    if (viewType === 'table') {
      $('.table-view').addClass('active');
      $('.card-view').removeClass('active');
    } else {
      $('.table-view').removeClass('active');
      $('.card-view').addClass('active');
    }
    
    // 重新应用搜索
    $('#resourceSearch').trigger('input');
  });
  
  // 检测是否支持触摸
  function isTouchDevice() {
    return 'ontouchstart' in window || navigator.maxTouchPoints > 0 || navigator.msMaxTouchPoints > 0;
  }
  
  // 如果是触摸设备，添加额外的提示
  if (isTouchDevice()) {
    $('.scroll-hint').show();
  }
});

function getSourceList(searchType, orderby) {
  // 搜索条件
  var searchObj = {
    action: 'list'
  }

  if (searchType == 'sort') {
    searchObj.sort = (localStorage.getItem('sort') == 'asc') ? 'desc' : 'asc'
    localStorage.setItem('sort', searchObj.sort)
    searchObj.orderby = orderby
  }
  if (searchType == 'limit') {
    searchObj.limit = $('#sourcelimitSel').val()
    searchObj.page = 1
  }
  $.ajax({
    type: "get",
    url: '' + '/clientarea',
    data: searchObj,
    success: function (data) {
      $('#sourceListBox').html(data);
      
      // 如果有搜索词，重新应用搜索
      const searchTerm = $('#resourceSearch').val();
      if (searchTerm && searchTerm.trim() !== '') {
        setTimeout(function() {
          $('#resourceSearch').trigger('input');
        }, 100);
      }
      
      // 重新初始化滚动指示器
      setTimeout(function() {
        const tableWrapper = $('.table-responsive');
        const table = tableWrapper.find('table');
        
        if (table.width() > tableWrapper.width()) {
          // 更新滚动指示器
          const thumbWidth = (tableWrapper.width() / table.width()) * 100;
          $('.scroll-indicator-thumb').css({
            width: thumbWidth + '%',
            left: '0'
          });
          
          tableWrapper.addClass('has-more-content');
        } else {
          tableWrapper.removeClass('has-more-content');
        }
      }, 200);
      
      // 保持当前视图
      const activeView = $('.view-toggle-btn.active').data('view');
      if (activeView === 'table') {
        $('.table-view').addClass('active');
        $('.card-view').removeClass('active');
      } else {
        $('.table-view').removeClass('active');
        $('.card-view').addClass('active');
      }
    }
  });
}
</script>
