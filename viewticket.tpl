{if $ErrorMsg}
{include file="error/alert" value="$ErrorMsg"}
{/if}

{if $SuccessMsg}
{include file="error/notifications" value="$SuccessMsg" url=""}
{/if}

{include file="includes/modal"}
<link href="/themes/clientarea/default/assets/libs/bootstrap-rating/bootstrap-rating.css?v={$Ver}" rel="stylesheet" />
<script>
function adminScore(rid, type) {
    const star = $(`#starRating${rid}`).val();
    const obj = {
        rid,
        type,
        star,
        tid: '{$Think.get.tid}'
    }
    $.ajax({
        type: "post",
        url: '/ticket/evaluate',
        data: obj,
        success: function (data) {
            if (data.status !== 200) {
                toastr.error(data.msg)
                return
            }
            toastr.success(data.msg)
            $(`#starRating${rid}`).attr("disabled", true);
        }
    });
}
</script>

<div class="row">
    <div class="col-12">
        <div class="card mb-3">
            <div class="card-body p-3">
                <div class="d-flex flex-wrap align-items-center mb-3">
                    <span class="mr-3 badge badge-dark px-3 py-2"
                        style="background-color: {$ViewTicket.ticket.status.color}; border-radius: 50px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                        {$ViewTicket.ticket.status.title}
                    </span>
                    <h4 class="card-title mb-0">
                        #{$ViewTicket.ticket.tid} - {$ViewTicket.ticket.title}
                    </h4>

                    <div class="ticket-actions ml-auto mt-2 mt-sm-0">
                        <a href="#ticketReplyContainer" class="btn btn-outline-info btn-sm mr-2">
                            <i class="fas fa-eye mr-1"></i> 跳转至最后一条
                        </a>
                        
                        {if $ViewTicket.ticket.status.id != "4"}
                        <a href="javascript: getModal('ticket/close', '{$Lang.close_work_order}', '{$Lang.close_the_job}', {tid: {$ViewTicket.ticket.tid}, token: '{$Token}'}, function(){location.href = '/supporttickets'});"
                            class="btn btn-danger btn-sm">
                            <i class="fas fa-times fa-fw"></i>
                            {$Lang.close_work_order}
                        </a>
                        {/if}
                    </div>
                </div>

                <div class="ticket-meta">
                    <div class="d-flex flex-wrap text-muted fz-14">
                        <div class="mr-4">
                            <i class="far fa-calendar-alt mr-1" style="color: var(--primary);"></i> 
                            工单创建时间：{$ViewTicket.ticket.create_time|date="Y-m-d H:i"}
                        </div>
                        <div class="mr-4">
                            <i class="far fa-clock mr-1" style="color: var(--primary);"></i> 
                            最后动态：{$ViewTicket.ticket.last_reply_time|date="Y-m-d H:i"}
                        </div>
                        <div class="mr-4">
                            <i class="fas fa-users mr-1" style="color: var(--primary);"></i> 
                            对接小组：{$ViewTicket.ticket.department.name}
                        </div>
                        {if $ViewTicket.ticket.host}
                        <div>
                            <i class="fas fa-server mr-1" style="color: var(--primary);"></i> 
                            相关产品：{$ViewTicket.ticket.host}
                        </div>
                        {/if}
                    </div>
                    <div class="mt-2 text-muted fz-14">
                        <i class="fas fa-info-circle mr-1" style="color: var(--primary);"></i> 
                        授权运维将于 24 小时内处理您的问题
                    </div>
                </div>
            </div>
        </div>

        <div class="ticket-replies mb-4">
            {foreach $ViewTicket.list as $reply}
            <div class="card mb-3 ticket-reply {if $reply.admin}admin-reply{/if}">
                <div class="card-header bg-transparent d-flex justify-content-between align-items-center p-3">
                    <div class="post-user d-flex align-items-center">
                        <div class="user-avatar-container mr-2" style="width: 36px; height: 36px;">
                            <div class="user-center_header">
                                <span>{$reply.realname|substr=0,1}</span>
                            </div>
                        </div>
                        <div>
                            <span class="badge badge-{if $reply.admin}info{else}success{/if} mr-2">{$reply.user_type}</span>
                            <span class="font-weight-medium">{$reply.realname}</span>
                        </div>
                    </div>
                    <div class="post-date text-muted fz-12">
                        <i class="far fa-clock mr-1"></i> {$reply.format_time}
                    </div>
                </div>
                <div class="card-body p-3">
                    <div class="message">{$reply.content}</div>
                    
                    {if $reply.attachment}
                    <div class="attachments mt-3 p-3" style="background-color: rgba(240, 138, 93, 0.05); border-radius: 10px;">
                        <div class="mb-2"><i class="fas fa-paperclip mr-1" style="color: var(--primary);"></i> {$Lang.enclosure}：</div>
                        {foreach $reply.attachment as $attachments}
                        <div class="attachment-item">
                            <a href="http://{$attachments}" target="_blank" class="d-flex align-items-center">
                                <i class="fas fa-file-download mr-1" style="color: var(--primary);"></i>
                                {:substr($attachments,strpos($attachments,"^")+1)}
                            </a>
                        </div>
                        {/foreach}
                    </div>
                    {/if}

                    {if $reply.admin}
                    <div class="rating-container mt-3 justify-content-end align-items-center"
                        style="display:{$ViewTicket.feedback_request == '0'?none:flex}">
                        <span class="mr-2 fz-14 text-muted">评分：</span>
                        <input type="hidden" class="rating" id="starRating{$reply.id}" data-filled="mdi mdi-star text-warning"
                            data-empty="mdi mdi-star-outline text-muted" onchange="adminScore('{$reply.id}','{$reply.type}')" {if
                            $reply.star !='0' } disabled {/if} value="{$reply.star}" />
                    </div>
                    {/if}
                </div>
            </div>
            {/foreach}
        </div>
        
        {if $ViewTicket.ticket.status.id != "4"}
        <div class="card" id="ticketReplyContainer">
            <div class="card-body">
                <h4 class="card-title mb-3">
                    <i class="fas fa-reply mr-2" style="color: var(--primary);"></i>{$Lang.reply}
                </h4>
                <form method="post" enctype="multipart/form-data">
                    <input type="hidden" name="tid" value="{$ViewTicket.ticket.tid}" />
                    <input type="hidden" name="c" value="{$ViewTicket.ticket.c}" />
                    
                    <div class="form-group">
                        {include file="includes/summernote" height="200"}
                        <textarea class="form-control" id="content" name="content" rows="10"
                            placeholder="{$Lang.please_enter_question}"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-control-label" for="formrow-firstname-input">
                            <i class="fas fa-paperclip mr-1" style="color: var(--primary);"></i>{$Lang.enclosure}
                        </label>
                        <div class="row" id="filelist">
                            <div class="col-12 mb-2 filebox d-flex justify-content-between">
                                <input type="file" class="form-control-file w-75" name="attachments[]">
                                <a class="btn btn-danger deletefileBtn">{$Lang.delete}</a>
                            </div>
                        </div>
                        <a class="btn btn-outline-info mt-2" id="addFileBtn" onclick="addFileBtn()">
                            <i class="fas fa-plus mr-1"></i>{$Lang.add_more}
                        </a>
                    </div>
                    
                    <div class="row mt-4">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-2">
                            <button type="submit" class="btn btn-primary btn-block">
                                <i class="fas fa-paper-plane mr-1"></i>{$Lang.reply_work_order}
                            </button>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <a href="supporttickets" class="btn btn-outline-secondary btn-block">
                                <i class="fas fa-times mr-1"></i>{$Lang.cancel}
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        {else}
        <div class="card" id="ticketReplyContainer">
            <div class="card-body">
                <div class="text-center p-4">
                    <i class="fas fa-ticket-alt" style="font-size: 3rem; color: var(--gray); margin-bottom: 1rem;"></i>
                    <h4 class="card-title">此工单已关闭</h4>
                    <p class="card-text mb-4">此工单已关闭，您不能再在此工单发布回复。如有需要，请<a href="/submitticket">提交新工单</a>，或点击下方按钮重新开启工单。</p>
                    
                    <form method="post" enctype="multipart/form-data">
                        <input type="hidden" name="tid" value="{$ViewTicket.ticket.tid}" />
                        <input type="hidden" name="c" value="{$ViewTicket.ticket.c}" />
                        <input type="hidden" id="content" name="content" value="用户重新开启了工单。"></input>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary mr-2">
                                <i class="bx bxs-bell-plus mr-1"></i> 重新开启工单
                            </button>
                            <a href="/submitticket" class="btn btn-outline-secondary">
                                <i class="fas fa-plus mr-1"></i> 提交新工单
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        {/if}
    </div>
</div>

<script src="/themes/clientarea/default/assets/libs/bootstrap-rating/bootstrap-rating.min.js?v={$Ver}"></script>
<script src="/themes/clientarea/default/assets/js/rating-init.js?v={$Ver}"></script>

<style>
    .ticket-reply.admin-reply {
        border-left: 3px solid var(--primary);
    }
    
    .ticket-meta {
        line-height: 1.6;
    }
    
    .ticket-replies .card {
        transition: all 0.3s ease;
        border: none;
        box-shadow: var(--card-shadow);
        overflow: hidden;
    }
    
    .ticket-replies .card:hover {
        box-shadow: var(--card-hover-shadow);
        transform: translateY(-2px);
    }
    
    .attachment-item {
        margin-bottom: 5px;
    }
    
    .attachment-item a {
        color: var(--dark);
        transition: all 0.3s ease;
    }
    
    .attachment-item a:hover {
        color: var(--primary);
        text-decoration: none;
    }
    
    #ticketReplyContainer {
        border: none;
        box-shadow: var(--card-shadow);
        transition: all 0.3s ease;
    }
    
    #ticketReplyContainer:hover {
        box-shadow: var(--card-hover-shadow);
    }
    
    .deletefileBtn {
        border-radius: 50px;
        padding: 0.4rem 1rem;
    }
    
    @media (max-width: 576px) {
        .ticket-actions {
            margin-top: 1rem !important;
            display: flex;
            width: 100%;
        }
        
        .ticket-actions a {
            flex: 1;
        }
    }
</style>

<script>
    function addFileBtn() {
        // 添加更多附件
        var fileHtml = `
            <div class="col-12 mb-2 filebox d-flex justify-content-between">
                <input type="file" class="form-control-file w-75" name="attachments[]">
                <a class="btn btn-danger deletefileBtn">{$Lang.delete}</a>
            </div>
        `
        $('#filelist').append(fileHtml)
    };

    // 删除附件
    $('#filelist').on('click', '.deletefileBtn', function () {
        $(this).parent('.filebox').remove()
    });
</script>

