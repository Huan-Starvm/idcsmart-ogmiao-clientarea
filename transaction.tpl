{include file="includes/tablestyle"}
<script>
	$(function () {
		var action = '{$Think.get.action}'
		$('#accountsRecordSel').val(action == 'credit_record' ? 'credit_record' : (action == 'credit_limit' ? 'credit_limit' : 'accounts_record'))
		
		$('#accountsRecordSel').on('change', function () {
			location.href = 'transaction?action=' + $('#accountsRecordSel').val()
		});

		// 排序
		var action = '{$Think.get.action}'
		$('.bg-light th').on('click', function () {
			var sort = '{$Think.get.sort}'
			location.href = 'transaction?action=' + (action || 'accounts_record') + '&sort=' + (sort == 'desc' ? 'asc' : 'desc') + '&orderby=' + $(this).attr('prop') + '&page={$Think.get.page}&limit={$Think.get.limit}'
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
				} else if(orderby === 'invoice_id' || orderby === 'num') {
				n = 1
				} else if(orderby === 'amount_in'|| orderby === 'amount_out' || orderby === 'create_time'){
				n = 2
				} else if(orderby === 'transaction_time' || orderby === 'pay_time') {
				n = 3
				} else if(orderby === 'trans_id') {
				n = 4
				}
				if (sort === 'desc') {
				index = 1 + 2 * n
				} else if(sort === 'asc'){
				index = 0 + 2 * n
				}
				$('.bg-light th.pointer').children().children().eq(index).css('color','rgba(0, 0, 0, 0.8)')
				}
	})
</script>
<div class="card">
	<div class="card-body">
		<div class="card-title">
			{$Lang.transaction_records}
		</div>

		<div class="table-container">
			<ul class="nav nav-tabs mb-4" role="tablist">
				<li class="nav-item waves-effect waves-light">
					<a class="nav-link {if $Think.get.action=='accounts_record' or $Think.get.action=='credit_record' or $Think.get.action=='credit_limit' or !$Think.get.action }active{/if}"
						href="transaction?action=accounts_record&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}"
						role="tab">{$Lang.records_of_consumption}</a>
				</li>
				<li class="nav-item waves-effect waves-light">
					<a class="nav-link {if $Think.get.action=='recharge_record' }active{/if}"
						href="transaction?action=recharge_record&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}"
						role="tab">{$Lang.recharge_record}</a>
				</li>
				<li class="nav-item waves-effect waves-light">
					<a class="nav-link {if $Think.get.action=='refund_record' }active{/if}"
						href="transaction?action=refund_record&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}"
						role="tab">{$Lang.refund_record}</a>
				</li>
				<li class="nav-item waves-effect waves-light">
					<a class="nav-link {if $Think.get.action=='withdraw_record' }active{/if}"
						href="transaction?action=withdraw_record&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}"
						role="tab">{$Lang.withdrawal_record}</a>
				</li>
        
			</ul>
			<div class="table-header">
				<div class="table-filter">

				</div>
				<div class="table-search d-flex justify-content-end">
					{if $Think.get.action=='accounts_record' || $Think.get.action=='credit_record' || $Think.get.action=='credit_limit' || !$Think.get.action}
					<select class="form-control custom-select" id="accountsRecordSel" title="{$Lang.please_select}" style="width: 180px">
						<option value="accounts_record">{$Lang.transaction_flow}</option>
						<option value="credit_record">{$Lang.balance}</option>
						{if $Userinfo.user.is_open_credit_limit==1}
            			<option value="credit_limit">{$Lang.credit_amount}</option>
            			{/if}
					</select>
					{/if}
				</div>
			</div>

			<div class="table-responsive">
				{if $Think.get.action=='accounts_record' or !$Think.get.action }
				{include file="transaction/accounts_record"}
				{elseif $Think.get.action=='credit_record'}
				{include file="transaction/credit_record"}
				{elseif $Think.get.action=='credit_limit'}
				{include file="transaction/credit_limit"}
				{elseif $Think.get.action=='recharge_record'}
				{include file="transaction/recharge_record"}
				{elseif $Think.get.action=='refund_record'}
				{include file="transaction/refund_record"}
				{elseif $Think.get.action=='withdraw_record'}
				{include file="transaction/withdraw_record"}
				{/if}
			</div>
			<!-- 表单底部调用开始 -->
			{include file="includes/tablefooter" url='transaction'}
		</div>
	</div>
</div>

<style>
/* Transaction page specific styles */
.nav-tabs {
    border-bottom: 1px solid rgba(240, 138, 93, 0.2);
    margin-bottom: 1.5rem;
}

.nav-tabs .nav-item {
    margin-right: 10px;
}

.nav-tabs .nav-link {
    color: var(--gray);
    border: none;
    padding: 0.75rem 1rem;
    border-radius: 8px 8px 0 0;
    font-weight: 500;
    position: relative;
    transition: all 0.3s ease;
}

.nav-tabs .nav-link:hover {
    color: var(--primary);
    background-color: rgba(240, 138, 93, 0.05);
}

.nav-tabs .nav-link.active {
    color: var(--primary);
    background-color: transparent;
    font-weight: 600;
}

.nav-tabs .nav-link.active::after {
    content: "";
    position: absolute;
    bottom: -1px;
    left: 0;
    width: 100%;
    height: 2px;
    background-color: var(--primary);
    border-radius: 2px 2px 0 0;
}

.table-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 1rem;
}

/* Improve select dropdown appearance */
#accountsRecordSel {
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 1.75rem 0.375rem 0.75rem;
    font-size: 0.875rem;
    font-weight: 500;
    color: var(--dark);
    background-color: #fff;
    border: 1px solid rgba(240, 138, 93, 0.2);
    border-radius: 50px;
    transition: all 0.3s;
    box-shadow: 0 2px 5px rgba(240, 138, 93, 0.1);
    cursor: pointer;
}

#accountsRecordSel:hover {
    border-color: var(--primary);
    box-shadow: 0 4px 10px rgba(240, 138, 93, 0.15);
    transform: translateY(-1px);
}

#accountsRecordSel:focus {
    border-color: var(--primary);
    outline: 0;
    box-shadow: 0 0 0 3px rgba(240, 138, 93, 0.25);
}

/* Improve table appearance */
.table th {
    font-weight: 600;
    color: var(--dark);
    background-color: rgba(240, 138, 93, 0.05);
    border-bottom: 2px solid rgba(240, 138, 93, 0.2);
    cursor: pointer;
}

.table th.pointer:hover {
    background-color: rgba(240, 138, 93, 0.1);
}

.table td {
    vertical-align: middle;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.table tr:hover td {
    background-color: rgba(240, 138, 93, 0.03);
}

/* Card title styling */
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

/* Responsive adjustments */
@media (max-width: 768px) {
    .nav-tabs .nav-item {
        margin-right: 5px;
    }
    
    .nav-tabs .nav-link {
        padding: 0.5rem 0.75rem;
        font-size: 0.9rem;
    }
    
    .card-title {
        font-size: 1.1rem;
        margin-bottom: 1.25rem;
    }
    
    #accountsRecordSel {
        width: 150px !important;
    }
}

@media (max-width: 576px) {
    .nav-tabs {
        display: flex;
        flex-wrap: nowrap;
        overflow-x: auto;
        padding-bottom: 5px;
    }
    
    .nav-tabs .nav-item {
        flex: 0 0 auto;
    }
    
    .nav-tabs .nav-link {
        padding: 0.4rem 0.6rem;
        font-size: 0.85rem;
        white-space: nowrap;
    }
    
    .table-header {
        flex-direction: column;
        align-items: flex-start;
    }
    
    .table-search {
        width: 100%;
        margin-top: 10px;
    }
    
    #accountsRecordSel {
        width: 100% !important;
    }
}
</style>

