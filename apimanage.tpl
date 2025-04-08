<style>
    /* 基础变量定义 - 与全局主题保持一致 */
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

    #protocolModal p {
        font-size: 14px;
        line-height: 25px;
    }
    
    .blod {
        font-size: 18px;
        font-weight: bold;
    }
    
    .protocolModalDialog {
        max-width: 55% !important;
    }

    /* API申请页面样式 */
    .api-apply {
        width: 100%;
        height: 500px;
        border: none;
        border-radius: 15px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        background-color: var(--light);
        box-shadow: var(--card-shadow);
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    .api-apply::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, rgba(240, 138, 93, 0.03), rgba(249, 179, 132, 0.03));
        z-index: 0;
    }

    .api-apply img {
        width: 180px;
        height: 180px;
        margin-bottom: 20px;
        animation: float 6s ease-in-out infinite;
        position: relative;
        z-index: 1;
    }

    .api-apply-center {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .api-apply h4 {
        padding-top: 10px;
        font-weight: 600;
        color: var(--dark);
        position: relative;
        z-index: 1;
    }

    .api-apply p {
        color: var(--gray);
        text-align: center;
        max-width: 500px;
        margin: 15px 0;
        position: relative;
        z-index: 1;
    }

    .api-apply .agree {
        padding-top: 15px;
        position: relative;
        z-index: 1;
    }

    .api-apply .btn-primary {
        background-color: var(--primary);
        border-color: var(--primary);
        color: white;
        box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
        padding: 0.6rem 1.5rem;
        border-radius: 50px;
        font-weight: 600;
        transition: all 0.3s;
        position: relative;
        overflow: hidden;
        z-index: 1;
        margin: 15px 0;
    }

    .api-apply .btn-primary:hover {
        background-color: var(--primary-dark);
        border-color: var(--primary-dark);
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
    }

    .need-bind-phone-certify {
        margin-top: 15px;
        color: var(--gray);
        font-size: 14px;
        position: relative;
        z-index: 1;
    }

    .need-bind-phone-certify a {
        color: var(--primary);
        text-decoration-line: underline !important;
        margin-left: 5px;
        transition: all 0.3s ease;
    }

    .need-bind-phone-certify a:hover {
        color: var(--primary-dark);
    }

    /* API管理页面样式 */
    .api-manage-top {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
        margin-bottom: 30px;
    }

    .api-manage-top-item {
        background-color: var(--light);
        border-radius: 15px;
        box-shadow: var(--card-shadow);
        padding: 20px;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
        min-height: 120px;
    }

    .api-manage-top-item:hover {
        transform: translateY(-5px);
        box-shadow: var(--card-hover-shadow);
    }

    .api-manage-top-item::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 4px;
        height: 100%;
        background: linear-gradient(to bottom, var(--primary), var(--primary-light));
        border-radius: 4px 0 0 4px;
    }

    .flex-between {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    /* 修改图标样式，覆盖蓝色背景 */
    .api-manage-top-item .img {
        width: 60px;
        height: 60px;
        border-radius: 15px;
        background-color: rgba(240, 138, 93, 0.1);
        padding: 12px;
        box-shadow: 0 5px 15px rgba(240, 138, 93, 0.15);
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    .api-manage-top-item .img::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(240, 138, 93, 0.15);
        z-index: 1;
    }

    .api-manage-top-item .img img {
        position: relative;
        z-index: 2;
        filter: brightness(0.9) sepia(0.2) hue-rotate(320deg);
        width: 100%;
        height: 100%;
        object-fit: contain;
    }

    .api-manage-top-item:hover .img {
        transform: scale(1.05);
        box-shadow: 0 8px 20px rgba(240, 138, 93, 0.25);
    }

    .flex {
        display: flex;
        align-items: center;
    }

    .flex-col {
        display: flex;
        flex-direction: column;
        padding-left: 20px;
    }

    .mt-10 {
        margin-top: 10px;
    }

    .api-manage-top-item-value {
        font-size: 28px;
        font-weight: 700;
        color: var(--primary);
        margin-bottom: 5px;
        transition: all 0.3s ease;
    }

    .api-manage-top-item:hover .api-manage-top-item-value {
        transform: scale(1.05);
        color: var(--primary-dark);
    }

    .api-manage-top-item-title {
        font-size: 14px;
        color: var(--gray);
        font-weight: 500;
    }

    .ml-10 {
        margin-left: 10px;
    }

    /* API图表样式 */
    .api-charts {
        background-color: var(--light);
        border-radius: 15px;
        box-shadow: var(--card-shadow);
        padding: 20px;
        margin-bottom: 30px;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    .api-charts:hover {
        box-shadow: var(--card-hover-shadow);
    }

    .api-charts::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 4px;
        background: linear-gradient(90deg, var(--primary), var(--primary-light), var(--primary));
        border-radius: 4px 4px 0 0;
    }

    .api-charts-top {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        flex-wrap: wrap;
    }

    .date-select-item {
        padding: 6px 15px;
        margin-right: 10px;
        cursor: pointer;
        border-radius: 50px;
        font-size: 14px;
        font-weight: 500;
        transition: all 0.3s ease;
        background-color: rgba(240, 138, 93, 0.1);
        color: var(--primary);
    }

    .date-select-item:hover {
        background-color: rgba(240, 138, 93, 0.2);
        transform: translateY(-2px);
    }

    .date-select-item-active {
        color: #fff;
        background-color: var(--primary);
        box-shadow: 0 4px 10px rgba(240, 138, 93, 0.3);
    }

    .date-select-item-active:hover {
        background-color: var(--primary-dark);
    }

    .api-manage-sub-title {
        font-size: 18px;
        font-weight: 700;
        color: var(--dark);
        position: relative;
        display: inline-block;
        margin-bottom: 0;
    }

    .api-manage-sub-title::after {
        content: "";
        position: absolute;
        bottom: -5px;
        left: 0;
        width: 40px;
        height: 3px;
        background: var(--primary);
        border-radius: 3px;
    }

    .mb-10 {
        margin-bottom: 10px;
    }

    /* 表格样式 */
    .table-container {
        background-color: var(--light);
        border-radius: 15px;
        box-shadow: var(--card-shadow);
        padding: 20px;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    .table-container:hover {
        box-shadow: var(--card-hover-shadow);
    }

    .table-container::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 4px;
        background: linear-gradient(90deg, var(--primary), var(--primary-light), var(--primary));
        border-radius: 4px 4px 0 0;
    }

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
        font-size: 14px;
    }

    .table.tablelist td {
        padding: 15px !important;
        vertical-align: middle !important;
        border-top: none !important;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
        transition: all 0.3s ease;
        color: var(--gray);
        font-size: 14px;
    }

    .table.tablelist tr:hover td {
        background-color: rgba(240, 138, 93, 0.03) !important;
    }

    /* 按钮样式 */
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

    .btn-danger {
        background-color: #fc5c65;
        border-color: #fc5c65;
        color: white;
        box-shadow: 0 4px 15px rgba(252, 92, 101, 0.3);
    }

    .btn-danger:hover {
        background-color: #eb3b5a;
        border-color: #eb3b5a;
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(252, 92, 101, 0.4);
    }

    /* 修改按钮样式，缩小尺寸并增加间距 */
    #resetApi, #closeApi {
        border-radius: 50px;
        padding: 0.3rem 0.8rem;
        font-size: 0.75rem;
        font-weight: 600;
        transition: all 0.3s ease;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        border: none;
        margin-left: 8px; /* 增加按钮之间的间距 */
    }

    #resetApi {
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
        color: white;
    }

    #resetApi:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(240, 138, 93, 0.3);
        background: linear-gradient(135deg, var(--primary-dark), var(--primary));
    }

    #closeApi {
        background: linear-gradient(135deg, #fc5c65, #eb3b5a);
        color: white;
    }

    #closeApi:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(252, 92, 101, 0.3);
        background: linear-gradient(135deg, #eb3b5a, #fc5c65);
    }

    /* 添加按钮点击效果 */
    #resetApi:active, #closeApi:active {
        transform: translateY(0);
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    /* 锁定提示模态框 */
    .api-manage-modal {
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        position: fixed;
        top: 0;
        left: 0;
        overflow-y: hidden;
        display: none;
        justify-content: center;
        align-items: center;
        z-index: 1050;
        backdrop-filter: blur(5px);
    }

    .api-manage-modal-title {
        width: 400px;
        background: #fff;
        padding: 30px;
        border-radius: 15px;
        display: flex;
        align-items: center;
        box-shadow: 0 15px 50px rgba(0, 0, 0, 0.2);
        animation: fadeInUp 0.5s ease;
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .api-manage-modal-title i {
        font-size: 40px;
        color: #f0ad4e;
        margin-right: 20px;
    }

    .api-manage-modal-title p {
        margin: 0;
        font-size: 16px;
        line-height: 1.5;
    }

    .api-manage-modal-title a {
        color: var(--primary);
        text-decoration: underline;
        transition: all 0.3s ease;
    }

    .api-manage-modal-title a:hover {
        color: var(--primary-dark);
    }

    /* 动画效果 */
    @keyframes float {
        0% {
            transform: translateY(0px);
        }
        50% {
            transform: translateY(-10px);
        }
        100% {
            transform: translateY(0px);
        }
    }

    @keyframes pulse {
        0% {
            transform: scale(1);
        }
        50% {
            transform: scale(1.05);
        }
        100% {
            transform: scale(1);
        }
    }

    /* 响应式调整 */
    @media (max-width: 992px) {
        .api-manage-top {
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        }
        
        .api-manage-top-item {
            padding: 15px;
        }
        
        .api-manage-top-item-value {
            font-size: 24px;
        }
        
        .api-charts, .table-container {
            padding: 15px;
        }
    }

    @media (max-width: 768px) {
        .api-manage-top {
            grid-template-columns: 1fr;
        }
        
        .api-charts-top {
            flex-direction: column;
            align-items: flex-start;
        }
        
        .api-charts-top p:last-child {
            margin-top: 10px;
        }
        
        .date-select-item {
            margin-bottom: 10px;
        }
        
        .api-manage-modal-title {
            width: 90%;
            max-width: 400px;
            padding: 20px;
        }

    .api-manage-top-item .flex-between {
        flex-direction: column;
        align-items: flex-start;
    }
    
    .api-manage-top-item .api-buttons {
        margin-top: 10px;
        display: flex;
        width: 100%;
    }
    
    .api-manage-top-item .api-buttons button {
        flex: 1;
        margin-right: 10px;
        padding: 0.3rem 0.8rem;
        font-size: 0.7rem;
    }
    
    .api-manage-top-item .api-buttons button:last-child {
        margin-right: 0;
    }
    
    .api-manage-top-item .img {
        width: 50px;
        height: 50px;
    }
    
    .api-manage-top-item .img i {
        font-size: 28px !important;
    }
}

    @media (max-width: 576px) {
        .api-apply {
            height: auto;
            padding: 30px 15px;
        }
        
        .api-apply img {
            width: 150px;
            height: 150px;
        }
        
        .api-manage-top-item {
            min-height: auto;
        }
        
        .api-manage-top-item .img {
            width: 50px;
            height: 50px;
            padding: 10px;
        }
        
        .flex-col {
            padding-left: 15px;
        }
        
        .api-manage-top-item-value {
            font-size: 22px;
        }
        
        .table.tablelist th,
        .table.tablelist td {
            padding: 10px !important;
            font-size: 13px;
        }

    .api-manage-top-item .api-buttons button {
        padding: 0.25rem 0.6rem;
        font-size: 0.7rem;
    }
    
    .api-manage-top-item .img {
        width: 45px;
        height: 45px;
    }
    
    .api-manage-top-item .img i {
        font-size: 24px !important;
    }
}

    /* 警告提示样式 */
    .no-check-pro {
        background-color: rgba(252, 92, 101, 0.1);
        border-left: 4px solid #fc5c65;
        color: #fc5c65;
        padding: 15px;
        border-radius: 10px;
        margin-bottom: 20px;
        font-weight: 500;
        animation: fadeIn 0.5s ease;
        position: relative;
    }

    .no-check-pro-close {
        position: absolute;
        top: 10px;
        right: 10px;
        color: #fc5c65;
        opacity: 0.7;
        transition: all 0.3s ease;
    }

    .no-check-pro-close:hover {
        opacity: 1;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

/* 添加图标动画效果 */
.api-manage-top-item .img i {
    transition: all 0.3s ease;
}

.api-manage-top-item:hover .img i {
    transform: scale(1.1);
    color: var(--primary-dark);
}

/* 调整按钮内图标样式，缩小图标 */
#resetApi i, #closeApi i {
    font-size: 12px;
    vertical-align: middle;
    margin-right: 3px;
}

/* 添加按钮波纹效果 */
#resetApi, #closeApi {
    position: relative;
    overflow: hidden;
}

#resetApi::after, #closeApi::after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 5px;
    height: 5px;
    background: rgba(255, 255, 255, 0.5);
    opacity: 0;
    border-radius: 100%;
    transform: scale(1, 1) translate(-50%);
    transform-origin: 50% 50%;
}

#resetApi:focus:not(:active)::after, #closeApi:focus:not(:active)::after {
    animation: ripple 1s ease-out;
}

@keyframes ripple {
    0% {
        transform: scale(0, 0);
        opacity: 0.5;
    }
    20% {
        transform: scale(25, 25);
        opacity: 0.5;
    }
    100% {
        opacity: 0;
        transform: scale(40, 40);
    }
}

/* 修改第一个卡片中的按钮容器样式 */
.api-manage-top-item .api-buttons {
    display: flex;
    align-items: center;
    justify-content: flex-end;
}

/* 响应式调整 */
@media (max-width: 768px) {
    .api-manage-top-item .api-buttons button {
        padding: 0.25rem 0.6rem;
        font-size: 0.7rem;
        margin-left: 5px;
    }
    
    .api-manage-top-item .api-buttons button i {
        font-size: 11px;
        margin-right: 2px;
    }
}

@media (max-width: 576px) {
    .api-manage-top-item .api-buttons button {
        padding: 0.2rem 0.5rem;
        font-size: 0.65rem;
        margin-left: 4px;
    }
    
    .api-manage-top-item .api-buttons button i {
        font-size: 10px;
        margin-right: 2px;
    }
}
</style>
<!-- 提示框 -->
<div class="modal fade" id="customModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customTitle">{$Lang.prompt}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="customBody">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
                <button type="button" class="btn btn-primary" id="customSureBtn">{$Lang.determine}</button>
            </div>
        </div>
    </div>
</div>


<!-- 未开启 -->
{if $api_open==0}
    <div class="card">
        <div class="card-body api-apply-center">
            <div class="api-apply">
                <div class="no-check-pro alert alert-danger alert-dismissible" style="width:500px;display: none;" role="alert">
                    <i class="glyphicon glyphicon-remove-sign"></i>
                    <button type="button" class="close no-check-pro-close" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    {$Lang.api_pro_no_checked}
                </div>
                <img src="/themes/clientarea/default/assets/images/api0.png">
                {if $api_open_total==0}
                <h4>{$Lang.api_no_open_title_total}</h4>
                {elseif $need_bind_phone==1 || $need_certify==1}
                {if $need_bind_phone==1}
                    <p class="need-bind-phone-certify">使用API功能需要绑定手机<a href="security" >去绑定手机</a></p>
                {/if}
                {if $need_certify==1}
                    <p class="need-bind-phone-certify">使用API功能需要实名认证<a href="verified" >去实名认证</a></p>
                {/if}
                {else}
                <h4>{$Lang.api_no_open_title}</h4>
                <p>{$Lang.api_no_open_sub_title}</p>
                <button type="button" class="apiOn btn btn-primary">{$Lang.api_open_now}</button>
                <p class="agree"><input class="agreeOn" type="checkbox"> <span>{$Lang.api_read_pro} <a href="{$server_clause_url}" target="_blank" class="apiProtocolDisable">《{$Lang.api_protocol}》</a></span>
                    {/if}
            </div>
        </div>
    </div>
    <script>
        $(function () {
            var Lang =  {:json_encode($Lang)};
            $('.no-check-pro').hide()
            $('.no-check-pro-close').on('click', function () {
                $('.no-check-pro').hide()
            })
            $('.apiOn').on('click', function () {
                if (!$('.agreeOn')[0].checked) {
                    $('.no-check-pro').show()
                    var timer = setTimeout(() => {
                        $('.no-check-pro').hide()
                    }, 2000);
                } else {
                    $('.no-check-pro').hide()
                    var text = Lang.api_open_confirm;
                    content = '<div class="d-flex align-items-center"><i class="fas fa-exclamation-circle fs-20 text-warning mr-2"></i> ' + text + '</div>';
                    area = ['420px'];
                    $('#customModal').modal('show')
                    $('#customBody').html(content)
                    $(document).on('click', '#customSureBtn', function () {
                        $.ajax({
                            url: "/zjmf_finance_api/open"
                            ,data: {"api_open":1}
                            ,type: 'post'
                            ,dataType: 'json'
                            ,success: function(e){
                                if(e.status != 200)
                                {
                                    toastr.error(e.msg);
                                    return false;
                                }
                                else{
                                    toastr.success(e.msg);
                                    location.reload();
                                }
                            }
                        })
                    });
                }
            })
        })

    </script>
    <!-- 已开启或已锁定-->
{else}
    <div class="card">
        <div class="card-body">
            <!-- 头部框框 -->
            <div class="api-manage-top">
                <!-- 修改第一个卡片中的按钮样式 -->
<div class="api-manage-top-item">
    <p class="flex-between">
        <span class="api-manage-top-item-title">{$Lang.api_key}：{$API.client.api_password}</span>
        <span class="api-buttons">
            <button id="resetApi" type="button" class="btn waves-effect waves-light" onclick="resetApiPwd()">
                <i class="bx bx-refresh"></i>{$Lang.api_reset}
            </button>
            <button id="closeApi" type="button" class="btn waves-effect waves-light" onclick="closeApi()">
                <i class="bx bx-power-off"></i>{$Lang.api_close}
            </button>
        </span>
    </p>
    <p class="mt-10 api-manage-top-item-title">{$Lang.api_open_date}：{if $API.client.api_create_time}{$API.client.api_create_time|date="Y-m-d H:i:s"}{else}-{/if}</p>
</div>
                <!-- 修改图标部分的HTML结构，添加图标替代方案 -->
<div class="api-manage-top-item flex">
    <div class="img">
        <i class="bx bx-server" style="font-size: 36px; color: var(--primary); position: relative; z-index: 2;"></i>
    </div>
    <p class="flex-col">
        <span class="api-manage-top-item-title">{$Lang.api_product_num}</span>
        <span class="api-manage-top-item-value">{$API.client.active_count}/{$API.client.host_count}</span>
    </p>
</div>
<div class="api-manage-top-item flex">
    <div class="img">
        <i class="bx bx-user" style="font-size: 36px; color: var(--primary); position: relative; z-index: 2;"></i>
    </div>
    <p class="flex-col">
        <span class="api-manage-top-item-title">{$Lang.api_agents_num}</span>
        <span class="api-manage-top-item-value">{$API.client.agent_count}</span>
    </p>
</div>
<div class="api-manage-top-item flex">
    <div class="img">
        <i class="bx bx-line-chart" style="font-size: 36px; color: var(--primary); position: relative; z-index: 2;"></i>
    </div>
    <div class="flex-col">
        <span class="api-manage-top-item-title">{$Lang.api_link_num_today}</span>
        <p>
            <span class="api-manage-top-item-value">{$API.client.api_count}</span>
            <span class="api-manage-top-item-title ml-10">{$Lang.api_comparison}
                {if $API.client.up}
                    <i class="bx bx-caret-up" style="color:#34c38f;font-size: 18px;"></i>{$API.client.ratio}
                    {else}
                    <i class="bx bx-caret-down" style="color:#34c38f;font-size: 18px;"></i>{$API.client.ratio}
                {/if}
            </span>
        </p>
    </div>
</div>
            </div>
            <!-- API请求次数 -->
            <div class="api-charts">
                <div class="api-charts-top">
                    <p class="api-manage-sub-title">{$Lang.api_link_time}</p>
                    <p>
                        <span data-date="week" class="date-select-item date-select-item-active">{$Lang.api_week}</span>
                        <!--<span data-date="month" class="date-select-item">本月</span>
                        <span data-date="year" class="date-select-item">全年</span>
                        <input class="api-charts-date-start" type="datetime-local" onchange="getDataFn()">
                        <span>到</span>
                        <input class="api-charts-date-end" type="datetime-local" onchange="getDataFn()">-->
                    </p>
                </div>
                <div id="api-charts-main" style="width: 100%;height:400px;"></div>
            </div>
            <!-- 豁免产品列表 -->
            <div class="table-container">
                <div>
                    <p class="api-manage-sub-title mb-10">{$Lang.api_exempted_products}</p>
                </div>
                <div>
                    <div class="table-responsive">
                        <table class="table tablelist">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col>
                            </colgroup>
                            <thead class="bg-light">
                            <tr>
                                <th>
                                    <span>{$Lang.product_name}</span>
                                </th>
                                <th class="pointer" prop="num">
                                    <span>{$Lang.api_trial_quantity}</span>
                                    <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
                      <i class="bx bx-caret-up"></i>
                      <i class="bx bx-caret-down"></i>
                    </span>
                                </th>
                                <th class="pointer" prop="max_num">
                                    <span>{$Lang.api_buy_maxnum}</span>
                                    <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
                      <i class="bx bx-caret-up"></i>
                      <i class="bx bx-caret-down"></i>
                    </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            {foreach $API.free_products as $free_product}
                                <tr>
                                    <td>{$free_product.name}</td>
                                    <td>{$free_product.ontrial}</td>
                                    <td>{$free_product.qty}</td>
                                </tr>
                            {/foreach}
                            </tbody>
                        </table>
                    </div>
                    <!-- 表单底部调用开始 -->
                    <!-- {include file="includes/tablefooter" url="apilog"} -->
                </div>
            </div>
        </div>
    </div>
    <!-- 锁定提示 模态框 -->
    <div class="api-manage-modal">
        <div class="api-manage-modal-title">
            <p>
                <i class="bx bxs-error-circle" style="font-size: 30px;color:#f0ad4e;"></i>
            </p>
            <p class="ml-10">
                {$Lang.api_lock_title}，<a href="/submitticket">{$Lang.api_contact_admin}</a>
            </p>
        </div>
    </div>
    <script src="/themes/clientarea/default/assets/libs/echarts/echarts.min.js?v={$Ver}"></script>
    <script>
        // 若已开启API功能 隐藏锁定提示
        {if $api_open==2}
        $('.api-manage-modal').css('display','flex')
        {/if}
        // 窗口大小改变,重载
        // window.onresize = function () {
        //    location.reload()
        // }
        function resetApiPwd() {
            var text = '是否确定重置API';
            content = '<div class="d-flex align-items-center"><i class="fas fa-exclamation-circle fs-20 text-warning mr-2"></i> ' + text + '</div>';
            area = ['420px'];
            $('#customModal').modal('show')
            $('#customBody').html(content)
            $(document).on('click', '#customSureBtn', function () {
                $.ajax({
                    url: "/zjmf_finance_api/reset"
                    ,data: ''
                    ,type: 'post'
                    ,dataType: 'json'
                    ,success: function(e){
                        if(e.status != 200)
                        {
                            toastr.error(e.msg);
                            return false;
                        }
                        else{
                            toastr.success(e.msg);
                            location.reload();
                        }
                    }
                })
            });

        }
        function closeApi() {
            var text = '是否确定关闭API';
            content = '<div class="d-flex align-items-center"><i class="fas fa-exclamation-circle fs-20 text-warning mr-2"></i> ' + text + '</div>';
            area = ['420px'];
            $('#customModal').modal('show')
            $('#customBody').html(content)
            $(document).on('click', '#customSureBtn', function () {
                $.ajax({
                    url: "/zjmf_finance_api/open"
                    ,data: {"api_open":0}
                    ,type: 'post'
                    ,dataType: 'json'
                    ,success: function(e){
                        if(e.status != 200)
                        {
                            toastr.error(e.msg);
                            return false;
                        }
                        else{
                            toastr.success(e.msg);
                            location.reload();
                        }
                    }
                })
            });

        }

        // 获取echarts渲染数据
        var formApi =  {:json_encode($API.form_api)};
        console.log('formApi', formApi)
        // 获取近七日时间
        function getDay(day){
            var today = new Date();
            var targetday_milliseconds=today.getTime() + 1000*60*60*24*day;
            today.setTime(targetday_milliseconds);
            var tYear = today.getFullYear();
            var tMonth = today.getMonth();
            var tDate = today.getDate();
            tMonth = doHandleMonth(tMonth + 1);
            tDate = doHandleMonth(tDate);
            return tYear+"-"+tMonth+"-"+tDate;
        }
        function doHandleMonth(month){
            var m = month;
            if(month.toString().length == 1){
                m = "0" + month;
            }
            return m;
        }
        $(function () {
            // 默认今日echarts
            let xData = [], yData = [];
            xData = [getDay(-6), getDay(-5), getDay(-4),getDay(-3),getDay(-2),getDay(-1),getDay(0)]
            yData = formApi
            drawEcharts(xData, yData)

            $('.date-select-item').each(function () {
                $(this).on('click', function () {
                    // 全部取消样式
                    $('.date-select-item').each(function () {
                        $(this).removeClass('date-select-item-active');
                    })
                    // 给目标上样式
                    $(this).addClass('date-select-item-active');

                    //ajax 请求-本周/本月/全年
                    console.log($(this)[0].dataset.date);
                    switch ($(this)[0].dataset.date) {
                        case 'week':
                            xData = [getDay(-6), getDay(-5), getDay(-4),getDay(-3),getDay(-2),getDay(-1),getDay(0)]
                            yData = formApi
                            drawEcharts(xData, yData)
                            break;
                        // 月/年
                        // case 'month':
                        //     xData = ['2021-05-01', '2021-05-02', '2021-05-03', '2021-05-04', '2021-05-05', '2021-05-06', '2021-05-07', '2021-05-08', '2021-05-09', '2021-05-10', '2021-05-11', '2021-05-12', '2021-05-13', '2021-05-14', '2021-05-15', '2021-05-16', '2021-05-17', '2021-05-18', '2021-05-19', '2021-05-20', '2021-05-21', '2021-05-22', '2021-05-23', '2021-05-24', '2021-05-25', '2021-05-26', '2021-05-27', '2021-05-28', '2021-05-29', '2021-05-30']
                        //     yData = [35, 38, 25, 40, 45, 40, 50, 60, 70, 55, 66, 77, 45, 60, 55, 35, 38, 25, 40, 45, 40, 50, 60, 70, 55, 66, 77, 45, 60, 55]
                        //     drawEcharts(xData, yData)
                        //     break;
                        // case 'year':
                        //     xData = ['2021-01', '2021-02', '2021-03', '2021-04', '2021-05', '2021-06', '2021-07', '2021-08', '2021-09', '2021-10', '2021-11', '2021-12']
                        //     yData = [35, 38, 25, 40, 45, 40, 50, 60, 70, 55, 66, 77, 45, 60]
                        //     drawEcharts(xData, yData)
                        //     break;
                        default:
                            break;
                    }

                })
            })
        })

        // 日期选择筛选
        function getDataFn() {
            var startTime = $('.api-charts-date-start').val();
            var endTime = $('.api-charts-date-end').val();
            console.log('startTime', startTime);
            console.log('endTime', endTime);
        }

        // 传入xData,yData 画图
        function drawEcharts(xData, yData) {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('api-charts-main'));

        // 指定图表的配置项和数据
        var option = {
            tooltip: {
                show: true,
                trigger: 'axis',
                backgroundColor: 'rgba(255, 255, 255, 0.9)',
                borderColor: 'rgba(240, 138, 93, 0.2)',
                borderWidth: 1,
                textStyle: {
                    color: '#2d3436',
                    fontSize: 12
                },
                axisPointer: {
                    type: 'line',
                    lineStyle: {
                        color: 'rgba(240, 138, 93, 0.5)',
                        width: 1,
                        type: 'dashed'
                    }
                },
                formatter: function(params) {
                    var data = params[0];
                    return data.name + '<br/>' + 
                           '<span style="display:inline-block;margin-right:5px;border-radius:50%;width:10px;height:10px;background-color:#f08a5d;"></span>' +
                           'API请求次数: ' + '<span style="color:#f08a5d;font-weight:bold;">' + data.value + '</span>';
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                top: '5%',
                containLabel: true
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: xData,
                axisLine: {
                    lineStyle: {
                        color: 'rgba(0, 0, 0, 0.1)'
                    }
                },
                axisLabel: {
                    color: '#636e72',
                    fontSize: 12
                },
                axisTick: {
                    show: false
                }
            },
            yAxis: {
                type: 'value',
                axisLine: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                    color: '#636e72',
                    fontSize: 12
                },
                splitLine: {
                    lineStyle: {
                        color: 'rgba(0, 0, 0, 0.05)',
                        type: 'dashed'
                    }
                }
            },
            series: [{
                name: 'API请求次数',
                data: yData,
                type: 'line',
                smooth: true,
                symbol: 'circle',
                symbolSize: 8,
                showSymbol: false,
                emphasis: {
                    scale: true,
                    itemStyle: {
                        shadowBlur: 10,
                        shadowColor: 'rgba(240, 138, 93, 0.5)'
                    }
                },
                lineStyle: {
                    width: 4,
                    color: {
                        type: 'linear',
                        x: 0,
                        y: 0,
                        x2: 1,
                        y2: 0,
                        colorStops: [{
                            offset: 0, 
                            color: '#f08a5d'
                        }, {
                            offset: 1, 
                            color: '#f9b384'
                        }]
                    },
                    shadowColor: 'rgba(240, 138, 93, 0.3)',
                    shadowBlur: 10
                },
                itemStyle: {
                    color: '#f08a5d',
                    borderColor: '#fff',
                    borderWidth: 2
                },
                areaStyle: {
                    color: {
                        type: 'linear',
                        x: 0,
                        y: 0,
                        x2: 0,
                        y2: 1,
                        colorStops: [{
                            offset: 0,
                            color: 'rgba(240, 138, 93, 0.5)'
                        }, {
                            offset: 0.5,
                            color: 'rgba(240, 138, 93, 0.2)'
                        }, {
                            offset: 1,
                            color: 'rgba(240, 138, 93, 0.05)'
                        }]
                    },
                    shadowColor: 'rgba(240, 138, 93, 0.1)',
                    shadowBlur: 20
                },
                markPoint: {
                    symbol: 'pin',
                    symbolSize: 40,
                    data: [
                        { type: 'max', name: '最大值' },
                        { type: 'min', name: '最小值' }
                    ],
                    itemStyle: {
                        color: '#f08a5d'
                    },
                    label: {
                        color: '#fff'
                    }
                },
                markLine: {
                    silent: true,
                    lineStyle: {
                        color: 'rgba(240, 138, 93, 0.3)',
                        type: 'dashed'
                    },
                    data: [
                        { type: 'average', name: '平均值' }
                    ],
                    label: {
                        color: '#f08a5d',
                        position: 'start'
                    }
                }
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        
        // 添加图表响应式调整
        window.addEventListener('resize', function() {
            myChart.resize();
        });
        
        // 添加图表加载动画
        myChart.showLoading({
            text: '数据加载中...',
            color: '#f08a5d',
            textColor: '#636e72',
            maskColor: 'rgba(255, 255, 255, 0.8)',
            zlevel: 0
        });
        
        // 模拟加载完成后隐藏加载动画
        setTimeout(function() {
            myChart.hideLoading();
        }, 1000);
    }
</script>
{/if}

