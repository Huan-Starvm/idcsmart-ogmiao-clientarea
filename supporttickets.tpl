{include file="includes/tablestyle"}

<div class="card">
    <div class="card-body">
        <h4 class="card-title mb-4">
            <i class="fas fa-ticket-alt mr-2" style="color: var(--primary);"></i>我的工单
        </h4>
        
        <div class="d-flex flex-wrap justify-content-between mb-4">
            <div class="search-container position-relative">
                <div class="input-group search-input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-white border-right-0">
                            <i class="fas fa-search text-muted search-icon"></i>
                        </span>
                    </div>
                    <input type="text" id="searchInput" class="form-control border-left-0 search-input" placeholder="搜索工单标题..." />
                    <div class="input-group-append d-none" id="searchClearBtn">
                        <span class="input-group-text bg-white border-left-0 pointer">
                            <i class="fas fa-times text-muted"></i>
                        </span>
                    </div>
                </div>
                <div id="noResultsMessage" class="search-no-results d-none">
                    <div class="alert alert-info mt-2 mb-0">
                        <i class="fas fa-info-circle mr-2"></i>没有找到匹配的工单
                    </div>
                </div>
            </div>
            
            <div>
                <a href="submitticket" class="btn btn-primary">
                    <i class="fas fa-plus mr-1"></i> {$Lang.submit_work_order}
                </a>
            </div>
        </div>
        
        <div class="table-container">
            <div class="table-responsive">
                <table class="table tablelist" id="ticketsTable">
                    <colgroup>
                        <col width="8%">
                        <col width="35%">
                        <col width="15%">
                        <col width="15%">
                        <col width="12%">
                        <col width="15%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>{$Lang.title}</th>
                            <th>{$Lang.creation_time}</th>
                            <th>{$Lang.update_time}</th>
                            <th>{$Lang.state}</th>
                            <th>{$Lang.operating}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {if $SupportTickets}
                        {foreach $SupportTickets as $ticket}
                        <tr class="ticket-row">
                            <td>{$ticket.tid}</td>
                            <td class="ticket-title">
                                <a href="viewticket?tid={$ticket.tid}&c={$ticket.c}" class="text-dark">
                                    <span class="badge badge-info mr-2">{$ticket.department_name}</span> 
                                    <span class="title-text">{$ticket.title}</span>
                                    {if $ticket.priority == "high"}
                                        <span class="badge badge-warning ml-2" data-toggle="popover" data-trigger="hover" title="事态紧急的工单" data-content="您提交工单时认为事态紧急，运维人员会优先处理您的工单。">紧急</span>
                                    {elseif $ticket.priority == "low"}
                                        <span class="badge badge-dark ml-2" data-toggle="popover" data-trigger="hover" title="事态不紧急的工单" data-content="您提交工单时认为事态不是非常紧急，运维人员会根据实际情况稍微靠后处理您的工单。感谢您为高效运维工作做出贡献！">宽松</span>
                                    {/if}
                                </a>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="far fa-calendar-alt mr-2" style="color: var(--primary);"></i>
                                    <span>{$ticket.create_time|date="Y-m-d H:i"}</span>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="far fa-clock mr-2" style="color: var(--primary);"></i>
                                    <span>{$ticket.last_reply_time|date="Y-m-d H:i"}</span>
                                </div>
                            </td>
                            <td>
                                <span class="badge status-badge text-white px-3 py-2" style="background-color: {$ticket.status.color}; border-radius: 50px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                    {$ticket.status.title}
                                </span>
                            </td>
                            <td>
                                {if $ticket.status.id == "4"}
                                    <a href="viewticket?tid={$ticket.tid}&c={$ticket.c}" class="btn btn-outline-secondary btn-sm">
                                        <i class="fas fa-book mr-1"></i> 回顾
                                    </a>
                                {elseif $ticket.status.id == "2"}
                                    <a href="viewticket?tid={$ticket.tid}&c={$ticket.c}" class="btn btn-primary btn-sm">
                                        <i class="fas fa-reply mr-1"></i> 处理
                                    </a>
                                {else}
                                    <a href="viewticket?tid={$ticket.tid}&c={$ticket.c}" class="btn btn-outline-info btn-sm">
                                        <i class="fas fa-eye mr-1"></i> 查看
                                    </a>
                                {/if}
                            </td>
                        </tr>
                        {/foreach}
                        {else}
                        <tr id="noTicketsRow">
                            <td colspan="6">
                                <div class="no-data">
                                    <i class="fas fa-ticket-alt mb-3" style="font-size: 2rem; color: var(--gray);"></i>
                                    <p>{$Lang.nothing}</p>
                                </div>
                            </td>
                        </tr>
                        {/if}
                    </tbody>
                </table>
            </div>
            <div class="table-footer">
                <div class="table-pageinfo">
                    {$Lang.common} {$Total} {$Lang.strips}
                </div>
                <div class="table-pagination">
                    <ul class="pagination pagination-sm">
                        {$Pages}
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* 搜索框样式 */
    .search-container {
        max-width: 400px;
        width: 100%;
        margin-bottom: 1rem;
    }
    
    .search-input-group {
        border-radius: 50px;
        overflow: hidden;
        box-shadow: 0 2px 10px rgba(240, 138, 93, 0.1);
        transition: all 0.3s ease;
    }
    
    .search-input-group:focus-within {
        box-shadow: 0 5px 15px rgba(240, 138, 93, 0.15);
        transform: translateY(-2px);
    }
    
    .search-input {
        border-radius: 0 50px 50px 0 !important;
        padding-left: 0;
    }
    
    .search-input:focus {
        box-shadow: none;
    }
    
    .search-input-group .input-group-text {
        border-radius: 50px 0 0 50px;
        background-color: white;
        border-color: #ced4da;
    }
    
    .search-input-group .input-group-append .input-group-text {
        border-radius: 0 50px 50px 0;
        cursor: pointer;
    }
    
    .search-icon {
        color: var(--primary) !important;
    }
    
    /* 工单列表样式 */
    .table {
        margin-bottom: 0;
    }
    
    .table th {
        font-weight: 600;
        color: #333;
        background-color: rgba(240, 138, 93, 0.05);
        border-bottom: 2px solid rgba(240, 138, 93, 0.2);
    }
    
    .table td {
        vertical-align: middle;
    }
    
    .table tr {
        transition: all 0.2s ease;
    }
    
    .table tr:hover {
        background-color: rgba(240, 138, 93, 0.03);
    }
    
    /* 状态标签样式 */
    .status-badge {
        font-weight: 500;
        letter-spacing: 0.3px;
        text-shadow: 0 1px 2px rgba(0,0,0,0.2);
    }
    
    /* 高亮搜索结果 */
    .highlight {
        background-color: rgba(255, 230, 0, 0.3);
        padding: 2px;
        border-radius: 3px;
    }
    
    /* 无数据状态 */
    .no-data {
        text-align: center;
        padding: 3rem 1rem;
        color: var(--gray);
    }
    
    /* 响应式调整 */
    @media (max-width: 768px) {
        .search-container {
            max-width: 100%;
            margin-right: 0;
        }
        
        .table td, .table th {
            padding: 0.75rem 0.5rem;
        }
    }
</style>

<script>
    $(document).ready(function() {
        // 搜索功能
        const searchInput = $('#searchInput');
        const searchClearBtn = $('#searchClearBtn');
        const noResultsMessage = $('#noResultsMessage');
        const ticketRows = $('.ticket-row');
        const noTicketsRow = $('#noTicketsRow');
        
        // 初始化 popover
        $('[data-toggle="popover"]').popover();
        
        // 搜索输入事件
        searchInput.on('input', function() {
            const searchTerm = $(this).val().toLowerCase().trim();
            
            // 显示/隐藏清除按钮
            if (searchTerm.length > 0) {
                searchClearBtn.removeClass('d-none');
            } else {
                searchClearBtn.addClass('d-none');
            }
            
            let hasResults = false;
            
            // 过滤工单
            ticketRows.each(function() {
                const titleElement = $(this).find('.title-text');
                const title = titleElement.text().toLowerCase();
                
                if (title.includes(searchTerm)) {
                    $(this).show();
                    hasResults = true;
                    
                    // 高亮匹配文本
                    if (searchTerm.length > 0) {
                        const regex = new RegExp('(' + searchTerm + ')', 'gi');
                        const highlightedText = titleElement.text().replace(regex, '<span class="highlight">$1</span>');
                        titleElement.html(highlightedText);
                    } else {
                        titleElement.text(titleElement.text()); // 移除高亮
                    }
                } else {
                    $(this).hide();
                }
            });
            
            // 显示/隐藏无结果消息
            if (!hasResults && ticketRows.length > 0) {
                noResultsMessage.removeClass('d-none');
                noTicketsRow.addClass('d-none');
            } else {
                noResultsMessage.addClass('d-none');
                if (!hasResults) {
                    noTicketsRow.removeClass('d-none');
                } else {
                    noTicketsRow.addClass('d-none');
                }
            }
        });
        
        // 清除搜索
        searchClearBtn.on('click', function() {
            searchInput.val('');
            searchInput.trigger('input');
            searchInput.focus();
        });
    });
</script>

