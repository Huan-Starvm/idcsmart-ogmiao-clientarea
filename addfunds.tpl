<style>
    /* 基础变量定义 - 与header.tpl保持一致 */
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
    
    /* Base Styles */
    .addfunds-page {
        position: relative;
        padding: 2rem 0;
        overflow: hidden;
    }
    
    .addfunds-decoration {
        position: absolute;
        border-radius: 50%;
        background: linear-gradient(135deg, var(--primary), var(--secondary));
        z-index: 0;
        opacity: 0.1;
    }
    
    .addfunds-decoration-1 {
        width: 200px;
        height: 200px;
        top: 10%;
        right: 5%;
        animation: float 8s ease-in-out infinite;
    }
    
    .addfunds-decoration-2 {
        width: 150px;
        height: 150px;
        bottom: 15%;
        left: 5%;
        animation: float 7s ease-in-out infinite 1s;
    }
    
    @keyframes float {
        0% { transform: translateY(0px); }
        50% { transform: translateY(-15px); }
        100% { transform: translateY(0px); }
    }
    
    /* Card Styling */
    .addfunds-card {
        background-color: white;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
        margin-bottom: 2rem;
        position: relative;
        z-index: 1;
        overflow: hidden;
        transition: all 0.3s ease;
        border: none;
    }
    
    .addfunds-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
    }
    
    .addfunds-card-header {
        position: relative;
        padding: 1.5rem;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    }
    
    .addfunds-card-header h5 {
        font-size: 1.5rem;
        font-weight: 600;
        color: var(--dark);
        margin-bottom: 0;
        position: relative;
        display: inline-block;
    }
    
    .addfunds-card-header h5:after {
        content: "";
        position: absolute;
        bottom: -5px;
        left: 0;
        width: 50px;
        height: 3px;
        background: var(--primary);
        border-radius: 3px;
    }
    
    .addfunds-card-body {
        padding: 1.5rem;
    }
    
    /* Balance Display */
    .balance-display {
        text-align: center;
        margin-bottom: 1.5rem;
        padding: 1.5rem;
        background: linear-gradient(135deg, rgba(240, 138, 93, 0.05), rgba(249, 179, 132, 0.05));
        border-radius: 15px;
        border: 1px solid rgba(240, 138, 93, 0.1);
    }
    
    .balance-label {
        font-size: 1.1rem;
        color: var(--gray);
        margin-bottom: 0.5rem;
    }
    
    .balance-amount {
        font-size: 3rem;
        font-weight: 700;
        color: var(--primary);
        line-height: 1.2;
        margin-bottom: 0;
    }
    
    .balance-currency {
        font-size: 1.5rem;
        color: var(--gray);
    }
    
    /* Info Text */
    .info-text {
        color: var(--gray);
        margin-bottom: 1rem;
        position: relative;
        padding-left: 1.5rem;
    }
    
    .info-text:before {
        content: "•";
        position: absolute;
        left: 0;
        color: var(--primary);
        font-size: 1.5rem;
        line-height: 1;
    }
    
    /* Form Elements */
    .form-group {
        margin-bottom: 1.5rem;
    }
    
    .form-label {
        font-weight: 500;
        color: var(--dark);
        margin-bottom: 0.5rem;
    }
    
    .form-control {
        height: calc(1.5em + 1rem + 2px);
        padding: 0.5rem 1rem;
        font-size: 1rem;
        border: 1px solid rgba(240, 138, 93, 0.2);
        border-radius: 10px;
        transition: all 0.3s;
        box-shadow: 0 2px 10px rgba(240, 138, 93, 0.05);
    }
    
    .form-control:focus {
        border-color: var(--primary);
        box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
    }
    
    /* 货币单位样式 */
    .input-group-text {
        background-color: rgba(240, 138, 93, 0.1);
        color: var(--primary);
        font-weight: 600;
        border: 1px solid rgba(240, 138, 93, 0.2);
        border-left: none;
        border-radius: 0 10px 10px 0;
        padding: 0.5rem 1rem;
        transition: all 0.3s ease;
    }
    
    .input-group .form-control {
        border-right: none;
        border-radius: 10px 0 0 10px;
    }
    
    .input-group:focus-within .input-group-text {
        border-color: var(--primary);
        background-color: rgba(240, 138, 93, 0.15);
    }
    
    /* Payment Methods */
    .payment-methods {
        display: flex;
        flex-wrap: wrap;
        gap: 1rem;
        margin-top: 0.5rem;
    }
    
    .payment-method {
        flex: 0 0 calc(25% - 1rem);
        min-width: 120px;
        background-color: white;
        border: 2px solid rgba(240, 138, 93, 0.1);
        border-radius: 10px;
        padding: 1rem;
        text-align: center;
        cursor: pointer;
        transition: all 0.3s;
        position: relative;
        overflow: hidden;
    }
    
    .payment-method:hover {
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(240, 138, 93, 0.1);
        border-color: rgba(240, 138, 93, 0.3);
    }
    
    .payment-method.active {
        border-color: var(--primary);
        background-color: rgba(240, 138, 93, 0.05);
        box-shadow: 0 5px 15px rgba(240, 138, 93, 0.15);
    }
    
    .payment-method.active:before {
        content: "✓";
        position: absolute;
        top: 5px;
        right: 10px;
        color: var(--primary);
        font-size: 1rem;
        font-weight: bold;
    }
    
    .payment-method img {
        max-height: 30px;
        max-width: 100%;
        transition: all 0.3s;
    }
    
    .payment-method:hover img {
        transform: scale(1.05);
    }
    
    /* Button */
    .btn-addfunds {
        background-color: var(--primary);
        border: none;
        color: white;
        padding: 0.75rem 2rem;
        font-size: 1rem;
        font-weight: 600;
        border-radius: 50px;
        transition: all 0.3s;
        position: relative;
        overflow: hidden;
        z-index: 1;
        box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
    }

    .btn-addfunds:hover {
        background-color: var(--primary-dark);
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
        color: white; /* 确保悬停时文字保持白色 */
    }

    .btn-addfunds:focus,
    .btn-addfunds:active {
        color: white; /* 确保点击和聚焦时文字保持白色 */
        background-color: var(--primary-dark);
        box-shadow: 0 2px 8px rgba(240, 138, 93, 0.3);
    }
    
    /* Alert */
    .alert-custom {
        background-color: #fff3cd;
        color: #856404;
        border: none;
        border-radius: 10px;
        padding: 1rem;
        margin-bottom: 1.5rem;
        position: relative;
        animation: fadeIn 0.5s ease-in-out;
    }
    
    .alert-custom.alert-danger {
        background-color: #f8d7da;
        color: #721c24;
    }
    
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-10px); }
        to { opacity: 1; transform: translateY(0); }
    }
    
    /* Responsive */
    @media (max-width: 768px) {
        .payment-method {
            flex: 0 0 calc(50% - 1rem);
        }
        
        .addfunds-decoration {
            display: none;
        }
        
        .balance-amount {
            font-size: 2.5rem;
        }
    }
    
    @media (max-width: 576px) {
        .payment-method {
            flex: 0 0 100%;
        }
        
        .balance-amount {
            font-size: 2rem;
        }
        
        .addfunds-card-header h5 {
            font-size: 1.3rem;
        }
    }
    
    @media (min-width: 560px) and (max-width: 930px) {
        .payment-method img {
            height: 20px;
        }
    }
</style>

<div class="addfunds-page">
    <!-- 装饰元素 -->
    <div class="addfunds-decoration addfunds-decoration-1"></div>
    <div class="addfunds-decoration addfunds-decoration-2"></div>
    
    <!-- 余额卡片 -->
    <div class="addfunds-card">
        <div class="addfunds-card-header">
            <h5>账户资产</h5>
        </div>
        <div class="addfunds-card-body">
            <div class="balance-display">
                <div class="balance-label">当前余额</div>
                <div class="balance-amount">{$Addfunds.addfunds.credit}<span class="balance-currency">{$Addfunds.addfunds.currency.suffix}</span></div>
            </div>
            
            <div class="info-text">您可以向账户中进行余额充值，一旦充值完成，账户将增加等额的余额。</div>
            <div class="info-text">购置新实例时，当账户余额充足，无需额外发起付款，直接使用账户余额完成订单。</div>
            <div class="info-text">账户余额还可用于自动续费实例，帮助您节约维护时间成本。</div>
        </div>
    </div>
    
    <!-- 充值卡片 -->
    <div class="addfunds-card">
        <div class="addfunds-card-header">
            <h5>发起新充值</h5>
        </div>
        <div class="addfunds-card-body">
            <!-- 提示信息 -->
            <div class="beforecheck-box">
                <div class="alert alert-custom alert-danger alert-dismissible fade hidden beforecheck" role="alert">
                    <i class="mdi mdi-block-helper mr-2"></i>
                    <span class="msg-box">{$Lang.the_maximum_allowed_balance_exceeded}:{$Addfunds.addfunds.addfunds_maximum_balance}</span>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            </div>
            
            <div method="post">
                <!-- 金额输入 -->
                <div class="form-group">
                    <label class="form-label">{$Lang.recharge_amount}</label>
                    <div class="input-group">
                        <input type="text" name="amount" class="form-control text-center" id="addfundsInp"
                               value="{$Addfunds.addfunds.addfunds_minimum}" onblur="addfundsMaxMin()" />
                        <div class="input-group-append">
                            <span class="input-group-text">{$Addfunds.addfunds.currency.suffix}</span>
                        </div>
                    </div>
                </div>
                
                <!-- 支付方式 -->
                <div class="form-group">
                    <label class="form-label">{$Lang.payment_method}</label>
                    <div class="payment-methods">
                        {foreach $Addfunds.addfunds.gateways as $index=>$gateways}
                            <div class="payment-method {if $index==0}active{/if}" onclick="addfundsBtn(this)" data-payment="{$gateways.name}" title="{$gateways.title}" data-toggle="tooltip" data-placement="bottom">
                                <input type="radio" name="payment" class="hidden" value="{$gateways.name}" {if $index==0}checked{/if} />
                                {if $gateways.author_url}
                                    <img src="{$gateways.author_url}" alt="{$gateways.title}" />
                                {else}
                                    <span>{$gateways.title}</span>
                                {/if}
                            </div>
                        {/foreach}
                    </div>
                </div>
                
                <!-- 提交按钮 -->
                <div class="form-group text-center">
                    <button type="button" class="btn btn-addfunds pay-now-btn" onclick="formSubmitBtn();return false;">
                        {$Lang.confirm_recharge}
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

{include file="includes/paymodal"}

<script type="text/javascript" src="/themes/clientarea/default/assets/libs/qrcode/jquery.qrcode.min.js?v={$Ver}"></script>
<script src="/themes/clientarea/default/assets/libs/dropzone/min/dropzone.min.js?v={$Ver}"></script>
<script type="text/javascript">
    // 页面加载时为卡片添加动画效果
    document.addEventListener("DOMContentLoaded", function() {
        const cards = document.querySelectorAll('.addfunds-card');
        
        cards.forEach((card, index) => {
            card.style.opacity = "0";
            card.style.transform = "translateY(20px)";
            card.style.transition = "opacity 0.5s ease, transform 0.5s ease";
            
            setTimeout(() => {
                card.style.opacity = "1";
                card.style.transform = "translateY(0)";
            }, 300 + (index * 200));
        });
        
        // 更新支付方式选择
        const paymentMethods = document.querySelectorAll('.payment-method');
        paymentMethods.forEach(method => {
            method.addEventListener('click', function() {
                paymentMethods.forEach(m => m.classList.remove('active'));
                this.classList.add('active');
                const radio = this.querySelector('input[type="radio"]');
                if (radio) radio.checked = true;
            });
        });
        
        // 添加输入框焦点效果
        const inputGroup = document.querySelector('.input-group');
        const inputField = document.getElementById('addfundsInp');
        
        if (inputField) {
            inputField.addEventListener('focus', function() {
                inputGroup.classList.add('focused');
            });
            
            inputField.addEventListener('blur', function() {
                inputGroup.classList.remove('focused');
            });
        }
    });

    var intervalBox;
    var max = '{$Addfunds.addfunds.addfunds_maximum}',
        min = '{$Addfunds.addfunds.addfunds_minimum}'
        ,_url = '';
</script>
<script src="/themes/clientarea/default/assets/js/addfunds.js?v={$Ver}"></script>

