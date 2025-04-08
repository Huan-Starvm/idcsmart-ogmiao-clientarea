<style>
/* 基础变量定义 */
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
  --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
  --card-hover-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
}

/* 卡片样式 */
.card {
  border: none;
  border-radius: 15px;
  box-shadow: var(--card-shadow);
  transition: all 0.3s ease;
  overflow: hidden;
  margin-bottom: 20px;
  animation: fadeIn 0.5s ease-out;
}

.card:hover {
  box-shadow: var(--card-hover-shadow);
  transform: translateY(-5px);
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}

.card-body {
  padding: 25px;
  position: relative;
  overflow: hidden;
}

.card-body::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 3px;
  background: linear-gradient(90deg, var(--primary), var(--primary-light), var(--primary));
  opacity: 0.7;
}

/* 表格样式 */
.table {
  width: 100%;
  margin-bottom: 1rem;
  color: #333;
  border-collapse: separate;
  border-spacing: 0;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 2px 15px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
}

.table thead.thead-light {
  background-color: rgba(240, 138, 93, 0.05) !important;
}

.table th {
  padding: 1rem !important;
  vertical-align: middle !important;
  border-top: none !important;
  font-weight: 600 !important;
  color: #333 !important;
  background-color: rgba(240, 138, 93, 0.05) !important;
  border-bottom: 2px solid rgba(240, 138, 93, 0.2) !important;
  transition: all 0.3s ease;
}

.table td {
  padding: 1rem !important;
  vertical-align: middle !important;
  border-top: none !important;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
  transition: all 0.3s ease;
}

.table tr:hover td {
  background-color: rgba(240, 138, 93, 0.03) !important;
}

/* 下拉选择框样式 */
.form-control {
  border-radius: 8px;
  border: 1px solid rgba(240, 138, 93, 0.2);
  transition: all 0.3s ease;
  box-shadow: 0 2px 10px rgba(240, 138, 93, 0.05);
  padding: 0.47rem 0.75rem;
  height: calc(1.5em + 0.94rem + 2px);
}

.form-control:focus {
  box-shadow: 0 0 0 4px rgba(240, 138, 93, 0.15);
  border-color: var(--primary);
  outline: none;
}

.form-control:hover {
  border-color: var(--primary);
  box-shadow: 0 2px 8px rgba(240, 138, 93, 0.15);
  transform: translateY(-1px);
}

select.form-control {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='4' height='5' viewBox='0 0 4 5'%3e%3cpath fill='%23f08a5d' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right 0.75rem center;
  background-size: 8px 10px;
  padding-right: 1.75rem;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
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

.btn:active,
.btn-primary:active {
  transform: scale(0.97);
  box-shadow: 0 2px 8px rgba(240, 138, 93, 0.3) !important;
}

.btn-outline-light {
  color: var(--gray);
  border-color: rgba(0, 0, 0, 0.1);
  background-color: white;
}

.btn-outline-light:hover {
  background-color: var(--gray-light);
  color: var(--dark);
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
  border-color: rgba(0, 0, 0, 0.15);
}

/* 总价样式 */
.text-primary {
  color: var(--primary) !important;
}

.font-size-24 {
  font-size: 24px !important;
  font-weight: 700;
  text-shadow: 0 1px 2px rgba(240, 138, 93, 0.2);
}

/* 响应式调整 */
@media (max-width: 768px) {
  .card-body {
    padding: 20px;
  }
  
  .table th,
  .table td {
    padding: 0.8rem !important;
  }
  
  .btn {
    padding: 0.5rem 1.2rem;
    font-size: 0.9rem;
  }
  
  .font-size-24 {
    font-size: 20px !important;
  }
}

@media (max-width: 576px) {
  .card-body {
    padding: 15px;
  }
  
  .table th,
  .table td {
    padding: 0.7rem !important;
    font-size: 0.85rem;
  }
  
  .btn {
    padding: 0.45rem 1rem;
    font-size: 0.85rem;
    margin-bottom: 10px;
  }
  
  .font-size-24 {
    font-size: 18px !important;
  }
  
  .text-sm-right {
    text-align: left !important;
    margin-top: 15px;
  }
}

/* 装饰元素 */
.decoration {
  position: absolute;
  border-radius: 50%;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  opacity: 0.1;
  z-index: 0;
}

.decoration-1 {
  width: 100px;
  height: 100px;
  top: -30px;
  right: -30px;
  animation: float 8s ease-in-out infinite;
}

.decoration-2 {
  width: 70px;
  height: 70px;
  bottom: -20px;
  left: -20px;
  animation: float 6s ease-in-out infinite 1s;
}

@keyframes float {
  0% { transform: translateY(0px); }
  50% { transform: translateY(-10px); }
  100% { transform: translateY(0px); }
}

/* 禁用按钮样式 */
.btn:disabled {
  opacity: 0.7;
  cursor: not-allowed;
  transform: none !important;
  box-shadow: none !important;
}

/* 日期样式 */
.nextduedate_renew {
  color: var(--primary);
  font-weight: 500;
}
</style>

{if $ErrorMsg}
    {include file="error/alert" value="$ErrorMsg"}
{/if}
<div class="card">
  <div class="card-body">
    <!-- 装饰元素 -->
    <div class="decoration decoration-1"></div>
    <div class="decoration decoration-2"></div>
    
    <form action="mulitrenew?action=batchrenew" method="post" onsubmit="checkSubmit()">
      <div class="table-responsive">
        <table class="table table-centered mb-0 table-nowrap">
          <thead class="thead-light">
            <tr>
              <th>{$Lang.product}</th>
              <th>IP</th>
              <th>{$Lang.current_due_time}</th>
              <th>{$Lang.expiration_renewal}</th>
              <th>{$Lang.renewal_period}</th>
            </tr>
          </thead>
          <tbody>
            {foreach $MultiRenew.hosts as $index=>$item}
            <tr>
              <td>{$item.name}</td>
              <td>{$item.dedicatedip}</td>
              <td>{$item.nextduedate|date='Y-m-d H:i'}</td>
              <td class="nextduedate_renew">{$item.nextduedate_renew|date='Y-m-d H:i'}</td>
              <td>
                <input type="hidden" class="hostid" name="host_ids[{$index}]" value="{$item.id}"/>
                <select class="form-control cycles" name="cycles[{$item.id}]" onchange="changeCycle()">
                  {foreach $item.allow_billingcycle as $bill}
                  <option value="{$bill.billingcycle}" {if $item.billingcycle==$bill.billingcycle} selected{/if}>￥{$bill.amount}/{$bill.billingcycle_zh}</option>
                  {/foreach}
                </select>
              </td>
            </tr>
            {/foreach}
          </tbody>
        </table>
      </div>

      <div class="row mt-4">
        <div class="col-sm-6">
          <button class="btn btn-primary mr-1 xfSubmit" type="submit">{$Lang.immediate_renewal}</button>
          <button class="btn btn-outline-light goBack" type="button">{$Lang.return}</button>
        </div> <!-- end col -->
        <div class="col-sm-6">
          <div class="text-sm-right">{$Lang.total}: <span class="text-primary font-size-24 total">{$MultiRenew.currency.prefix}<span class="total">{$MultiRenew.total}</span>{$MultiRenew.currency.suffix}</span></div>
        </div> 
      </div> <!-- end row-->
    </form>
  </div>
</div>
<script src="/themes/clientarea/default/assets/libs/moment/moment.js?v={$Ver}"></script>
<script>
$(function(){
  if(location.href.indexOf("host_ids")==-1){
    $(".xfSubmit,.goBack").attr("disabled","disabled")
    history.go(-1);
  }
  $(".goBack").click(function(){
    $(this).attr("disabled","disabled").css('color','#999');
    $(".xfSubmit").attr("disabled","disabled");
    history.back();
  });
  
  // 添加表格行悬停效果
  $('.table tbody tr').hover(
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
  
  // 添加按钮悬停效果
  $('.btn:not(:disabled)').hover(
    function() {
      if ($(this).hasClass('btn-primary')) {
        $(this).css({
          'transform': 'translateY(-3px)',
          'box-shadow': '0 6px 20px rgba(240, 138, 93, 0.4)'
        });
      } else {
        $(this).css({
          'transform': 'translateY(-3px)',
          'box-shadow': '0 6px 20px rgba(0, 0, 0, 0.1)'
        });
      }
    },
    function() {
      if ($(this).hasClass('btn-primary')) {
        $(this).css({
          'transform': '',
          'box-shadow': '0 4px 15px rgba(240, 138, 93, 0.3)'
        });
      } else {
        $(this).css({
          'transform': '',
          'box-shadow': ''
        });
      }
    }
  );
  
  // 添加下拉框悬停效果
  $('.form-control').hover(
    function() {
      $(this).css({
        'border-color': 'var(--primary)',
        'box-shadow': '0 2px 8px rgba(240, 138, 93, 0.15)',
        'transform': 'translateY(-1px)'
      });
    },
    function() {
      $(this).css({
        'border-color': 'rgba(240, 138, 93, 0.2)',
        'box-shadow': '0 2px 10px rgba(240, 138, 93, 0.05)',
        'transform': ''
      });
    }
  );
});

function checkSubmit() {
  $(".xfSubmit").attr("disabled","disabled");
  $(".goBack").attr("disabled","disabled").css('color','#999');
}

function changeCycle(){
  var formdata = $('form').serialize();
  
  $.ajax({
    type: "POST",
    url:"/host/batchrenewpage",
    data: formdata,
    success(data){
      if(data.status!=200){
        return
      }else{
        data.data.hosts.forEach((item,index)=>{
          $('.nextduedate_renew').eq(index).text(moment(item.nextduedate_renew*1000).format('YYYY-MM-DD HH:mm'))
          $('.saleproducts').eq(index).text('￥'+item.saleproducts)
        })
        $('.total').text(data.data.total)
      }
    }
  })
}
</script>

