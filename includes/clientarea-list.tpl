<!-- start：资源列表 -->
<style>
/* 为小容器优化的表格样式 */
.resource-container {
  font-size: 14px;
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

.tablelist {
  width: 100%;
  margin-bottom: 10px;
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

.table-responsive {
  border-radius: 6px;
  overflow: hidden;
  border: 1px solid rgba(0, 0, 0, 0.05);
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
}

.host-link:hover {
  color: #f08a5d !important;
}

.ip-badge {
  display: inline-block;
  padding: 3px 8px;
  background-color: rgba(0, 0, 0, 0.05);
  border-radius: 4px;
  font-family: monospace;
  font-size: 13px;
}

/* Responsive adjustments */
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
}

@media (max-width: 480px) {
  .tablelist th:nth-child(3), 
  .tablelist td:nth-child(3),
  .tablelist th:nth-child(4), 
  .tablelist td:nth-child(4) {
    display: none;
  }
 
 .tablelist th,
 .tablelist td {
   font-size: 13px !important;
 }
 
 .pagination .page-item .page-link {
   font-size: 13px;
   height: 26px;
   min-width: 26px;
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
  </div>
  
  <div class="table-responsive">
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
            <a href="servicedetail?id={$list.id}" class="host-link">{$list.productname}({$list.domain})</a>
          </td>
          <td>{if $list.billingcycle!="free" && $list.cycle_desc!='一次性'}{$list.nextduedate|date="Y-m-d"}{else} - {/if}</td>
          <td>{if $list.billingcycle!="free"}{$list.price_desc}/{$list.cycle_desc}{else}{$list.cycle_desc}{/if}</td>
          <td><span class="ip-badge">{$list.dedicatedip}</span></td>
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
        // 显示所有行
        $('.tablelist tbody tr').show();
        $('.no-search-results').remove();
        return;
      }
      
      let hasResults = false;
      
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
      
      // 没有结果时显示提示
      if (!hasResults) {
        if ($('.no-search-results').length === 0) {
          $('.tablelist tbody').append('<tr class="no-search-results"><td colspan="5"><div>没有找到匹配的结果</div></td></tr>');
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
    }
    
    $(window).on('resize', adjustForSize);
    adjustForSize();
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
      }
    });
  }
</script>

