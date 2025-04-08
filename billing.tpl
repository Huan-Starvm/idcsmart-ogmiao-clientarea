{include file="includes/tablestyle"}

{include file="includes/deleteConfirm"}

<style>
/* 账单页面样式 */
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

/* 表格容器样式 */
.table-container {
  position: relative;
}

/* 表格头部样式 */
.table-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
  flex-wrap: wrap;
}

/* 状态选择器样式 */
#statusSel {
  height: 38px;
  border-radius: 8px;
  border: 1px solid rgba(240, 138, 93, 0.2);
  transition: all 0.3s ease;
  box-shadow: 0 2px 10px rgba(240, 138, 93, 0.05);
  padding: 0.375rem 1.75rem 0.375rem 0.75rem;
  background-color: #fff;
}

#statusSel:focus {
  border-color: var(--primary);
  box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
  outline: none;
}

#statusSel:hover {
  border-color: var(--primary);
  box-shadow: 0 2px 8px rgba(240, 138, 93, 0.15);
  transform: translateY(-1px);
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
  color: rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.pointer:hover .bx-caret-up,
.pointer:hover .bx-caret-down {
  color: var(--primary);
}

/* 状态标签样式 */
.status {
  padding: 5px 10px;
  border-radius: 50px;
  font-size: 12px;
  font-weight: 600;
  display: inline-block;
  text-transform: capitalize;
}

.status-unpaid {
  background-color: rgba(255, 159, 67, 0.15);
  color: #ff9f43;
}

.status-paid {
  background-color: rgba(40, 199, 111, 0.15);
  color: #28c76f;
}

.status-cancelled {
  background-color: rgba(234, 84, 85, 0.15);
  color: #ea5455;
}

.status-refunded {
  background-color: rgba(0, 207, 232, 0.15);
  color: #00cfe8;
}

/* 操作按钮样式 */
.text-success, .text-primary, .text-danger {
  transition: all 0.3s ease;
}

.text-success {
  color: #28c76f !important;
}

.text-primary {
  color: var(--primary) !important;
}

.text-danger {
  color: #ea5455 !important;
}

.text-success:hover, .text-primary:hover, .text-danger:hover {
  opacity: 0.8;
  transform: translateY(-2px);
}

/* 账单号样式 */
.badge-light {
  background-color: rgba(240, 138, 93, 0.1);
  color: var(--primary);
  font-weight: 600;
  padding: 5px 10px;
  border-radius: 5px;
  transition: all 0.3s ease;
}

.badge-light:hover {
  background-color: rgba(240, 138, 93, 0.2);
  transform: translateY(-1px);
}

/* 表格底部样式 */
.table-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px 0;
  flex-wrap: wrap;
}

.table-tools {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.table-pagination {
  display: flex;
  align-items: center;
}

/* 合并支付按钮样式 */
.btn-primary {
  background-color: var(--primary);
  border-color: var(--primary);
  color: white;
  box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
  border-radius: 50px;
  padding: 0.5rem 1.5rem;
  font-weight: 600;
  transition: all 0.3s ease;
}

.btn-primary:hover {
  background-color: var(--primary-dark);
  border-color: var(--primary-dark);
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
}

.btn-primary:disabled {
  background-color: rgba(240, 138, 93, 0.5);
  border-color: rgba(240, 138, 93, 0.5);
  box-shadow: none;
  cursor: not-allowed;
}

/* 合并支付信息样式 */
#pay-combine {
  color: var(--gray);
  margin-left: 10px;
  font-size: 14px;
}

#pay-combine span {
  color: var(--primary);
  font-weight: 600;
}

/* 分页样式 */
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

/* 每页显示数量选择器样式 */
#limitSel {
  height: 30px;
  border-radius: 5px;
  border: 1px solid rgba(240, 138, 93, 0.2);
  transition: all 0.3s ease;
  padding: 0 0.5rem;
  background-color: #fff;
  margin: 0 5px;
}

#limitSel:focus {
  border-color: var(--primary);
  box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
  outline: none;
}

/* 复选框样式 */
.custom-control-input:checked ~ .custom-control-label::before {
  color: #fff;
  border-color: var(--primary);
  background-color: var(--primary);
}

.custom-checkbox .custom-control-input:checked ~ .custom-control-label::after {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath fill='%23fff' d='M6.564.75l-3.59 3.612-1.538-1.55L0 4.26l2.974 2.99L8 2.193z'/%3e%3c/svg%3e");
}

.custom-control-input:focus ~ .custom-control-label::before {
  box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
}

/* 无数据提示样式 */
.no-data {
  text-align: center;
  padding: 30px;
  color: var(--gray);
  font-size: 14px;
}

/* 响应式调整 */
@media (max-width: 992px) {
  .table-header, .table-footer {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .table-search, .table-pagination {
    margin-top: 10px;
    width: 100%;
  }
  
  .table-tools {
    width: 100%;
    justify-content: space-between;
  }
  
  .table-pageinfo {
    margin-bottom: 10px;
  }
}

@media (max-width: 768px) {
  .table.tablelist th,
  .table.tablelist td {
    padding: 10px !important;
  }
  
  .pagination .page-item .page-link {
    min-width: 30px;
    padding: 0.4rem 0.6rem;
  }
  
  .btn-primary {
    padding: 0.4rem 1rem;
  }
}

@media (max-width: 576px) {
  .table-responsive {
    border-radius: 10px;
    overflow: hidden;
  }
  
  .table.tablelist th,
  .table.tablelist td {
    padding: 8px 5px !important;
    font-size: 12px;
  }
  
  .status {
    padding: 3px 8px;
    font-size: 11px;
  }
  
  .badge-light {
    padding: 3px 6px;
    font-size: 11px;
  }
  
  .pagination .page-item .page-link {
    min-width: 28px;
    padding: 0.3rem 0.5rem;
    font-size: 12px;
  }
  
  .btn-primary {
    padding: 0.35rem 0.8rem;
    font-size: 12px;
  }
  
  #pay-combine {
    font-size: 12px;
  }
}
</style>

<div class="card">
	<div class="card-body">
    <form action="combinebilling">
		<div class="table-container"> 
			<div class="table-header">
				<div class="table-filter">

				</div>
				<div class="table-search d-flex justify-content-end">
					<select class="form-control" id="statusSel" title="请选择状态" style="width: 150px">
						<option value="">{$Lang.whole}</option>
						<option value="Unpaid">{$Lang.unpaid}</option>
						<option value="Paid">{$Lang.paid}</option>
						<option value="Cancelled">{$Lang.cancelled}</option>
						<option value="Refunded">{$Lang.refunded}</option>
					</select>
				</div>

			</div>
			<div class="table-responsive">
				<table class="table tablelist">
					<colgroup>
						<col>
						<col width="15%">
						<col>
						<col>
						<col>
						<col>
						<col>
						<col>
					</colgroup>
					<thead class="bg-light">
						<tr>
							<th class="checkbox">
                <div class="custom-control custom-checkbox mb-3">
                   
                    <input type="checkbox" name="headCheckbox" onchange="headCheckboxAll(this)" class="custom-control-input" id="customCheck" >
                    <label class="custom-control-label" for="customCheck"></label>
                </div>
							</th>
							<th class="pointer" prop="id">
								<span>{$Lang.bill_no}</span>
								<span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
							</th>
							<th>
								<span>{$Lang.type}</span>
							</th>
							<th class="pointer" prop="subtotal">
								<span>{$Lang.amount_money}</span>
								<span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
							</th>
							<th class="pointer" prop="paid_time">
								<span>{$Lang.payment_time}</span>
								<span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
							</th>
							<th class="pointer" prop="payment_zh">
								<span>{$Lang.payment_zh}</span>
							</th>
							<th class="pointer" prop="due_time">
								<span>{$Lang.overdue_time}</span>
								<span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
							</th>
							<th class="pointer" prop="status">
								<span>{$Lang.state}</span>
								<span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
							</th>
							<th width="180px">{$Lang.operating}</th>
						</tr>
					</thead>
					<tbody>
						{if $Billing}
						{foreach $Billing as $index => $bill}
						<tr>
							<td>
								<div class="custom-control custom-checkbox mb-3">
                  					<!-- xue 直接在复选框里写name value  改错了莫怪 -->
									<input type="checkbox" class="custom-control-input row-checkbox" onclick="rowCheckbox(this)" id="customCheck{$bill.id}"
                  data-name="ids[{$index}]" name="ids[{$index}]" data-value="{$bill.id}" value="{$bill.id}">
									<label class="custom-control-label" for="customCheck{$bill.id}"></label>
								</div>
							</td>
							<td><a href="viewbilling?id={$bill.id}"><span class="badge badge-light"># {$bill.id}</span></a></td>
							<td>{$bill.type_zh}</td>
							<td>{$bill.subtotal}</td>
							<td>{if $bill.paid_time}{$bill.paid_time|date="Y-m-d H:i"}{else}-{/if}</td>
							<td>{if $bill.payment_zh}{$bill.payment_zh}{else}-{/if}</td>
							<td>{if $bill.due_time}{$bill.due_time|date="Y-m-d H:i"}{else}-{/if}</td>
							<td>
								<span class="status badge status-{$bill.status|strtolower}">{$bill.status_zh.name}</span>
							</td>
							<td>
								<a href="viewbilling?id={$bill.id}" class="text-success mr-2"><i class="fas fa-eye"></i> {$Lang.see}</a>
								{if $bill.status == 'Unpaid'}
								<a href="javascript: payamount({$bill.id});" class="text-primary mr-2"><i class="fas fa-check-circle"></i> {$Lang.payment}</a>
								<a href="javascript: deleteConfirm('invoices', '{$Lang.delete_bill}', '{$Lang.want_delete_the_bill}', {id: {$bill.id}, token: '{$Token}'});"
									class="text-danger"><i class="fas fa-times-circle"></i> {$Lang.delete}</a>
								{/if}
							</td>
						</tr>
						{/foreach}
						{else}
						<tr>
							<td colspan="9">
								<div class="no-data">{$Lang.nothing}</div>
							</td>
						</tr>
						{/if}
					</tbody>
				</table>
			</div>
			<!-- 表单底部调用开始 -->
			<div class="table-footer">
        <div class="table-tools">
          <button class="btn btn-primary mr-1" disabled id="readBtn" type="submit">{$Lang.consolidated_payment}</button>
          <span id="pay-combine">{$Lang.you_have}<span>{$Count}</span>{$Lang.paid_total}<span>{$Total_money}</span>{$Lang.element}</span>
        </div>
        <div class="table-pagination">
          <div class="table-pageinfo mr-2">
            <span>{$Lang.common} {$Total} {$Lang.strips}</span>
            <span class="mx-2">
              {$Lang.each_page}
              <select name="" id="limitSel">
                <option value="10" {if $Limit==10}selected{/if}>10</option>
                <option value="15" {if $Limit==15}selected{/if}>15</option>
                <option value="20" {if $Limit==20}selected{/if}>20</option>
                <option value="50" {if $Limit==50}selected{/if}>50</option>
                <option value="100" {if $Limit==100}selected{/if}>100</option>
              </select>
              {$Lang.strips}
            </span>
          </div>
          <ul class="pagination pagination-sm">
            {$Pages}
          </ul>
        </div>
      </div>
		</div>
    </form>
	</div>
</div>

{include file="includes/paymodal"}


<script>
	var _url = '';
	var status = '{$Think.get.status}'
	// 排序
	$('.bg-light .pointer').on('click', function () {
		var sort = '{$Think.get.sort}'
		location.href = 'billing?status={$Think.get.status}&sort=' + (sort == 'desc' ? 'asc' : 'desc') + '&orderby=' + $(this).attr('prop') + '&page={$Think.get.page}&limit={$Think.get.limit}'
	})
	//排序样式
	changeStyle()
	function changeStyle() {
		$('.bg-light th.pointer').children().children().css('color','rgba(0, 0, 0, 0.1)')
	var sort = '{$Think.get.sort}'
	let orderby = '{$Think.get.orderby}'
	let index,
	n
	if(orderby === 'id') {
				n = 0
	} else if(orderby === 'subtotal') {
				n = 1
	} else if(orderby === 'paid_time'){
				n = 2
	} else if(orderby === 'due_time') {
				n = 3
	} else if(orderby === 'status') {
				n = 4
	}
	if (sort === 'desc') {
			index = 1 + 2 * n
	} else if(sort === 'asc'){
			index = 0 + 2 * n
	}
		$('.bg-light th.pointer').children().children().eq(index).css('color','rgba(0, 0, 0, 0.8)')
	}
	// 状态筛选
	$('#statusSel').on('change', function () {
		location.href = "billing?status=" + $('#statusSel').val() + "&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}"
	});
// 每页数量选择改变
	$('#limitSel').on('change', function () {
		location.href = '/billing?keywords={$Think.get.keywords}&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page=1&limit=' + $('#limitSel').val()

	})
	
	// 添加表格行悬停效果
	$(document).ready(function() {
		// 初始化状态选择器
		$('#statusSel').val(status);
		
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
		
		// 添加按钮悬停效果
		$('.btn-primary').not(':disabled').hover(
			function() {
				$(this).css({
					'transform': 'translateY(-3px)',
					'box-shadow': '0 6px 20px rgba(240, 138, 93, 0.4)'
				});
			},
			function() {
				$(this).css({
					'transform': '',
					'box-shadow': '0 4px 15px rgba(240, 138, 93, 0.3)'
				});
			}
		);
	});
</script>
<script src="/themes/clientarea/default/assets/js/billing.js?v={$Ver}"></script>

