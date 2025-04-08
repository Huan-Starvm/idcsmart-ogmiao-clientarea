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

/* 知识库列表样式 */
.knowledge-list {
  margin-top: 20px;
}

.knowledge-item {
  display: flex;
  align-items: center;
  padding: 15px;
  border-radius: 10px;
  margin-bottom: 10px;
  transition: all 0.3s ease;
  background-color: rgba(240, 138, 93, 0.03);
  border: 1px solid rgba(240, 138, 93, 0.1);
  text-decoration: none;
  position: relative;
  overflow: hidden;
}

.knowledge-item:hover {
  background-color: rgba(240, 138, 93, 0.08);
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(240, 138, 93, 0.1);
}

.knowledge-item::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 3px;
  background-color: var(--primary);
  opacity: 0;
  transition: opacity 0.3s ease;
}

.knowledge-item:hover::before {
  opacity: 1;
}

.knowledge-icon {
  color: var(--primary);
  font-size: 20px;
  margin-right: 12px;
  flex-shrink: 0;
}

.knowledge-content {
  flex: 1;
  min-width: 0;
}

.knowledge-title {
  font-weight: 600;
  color: var(--dark);
  margin-bottom: 0;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  transition: color 0.3s ease;
}

.knowledge-item:hover .knowledge-title {
  color: var(--primary);
}

.knowledge-date {
  color: var(--gray);
  font-size: 0.85rem;
  flex-shrink: 0;
  margin-left: 15px;
  transition: all 0.3s ease;
}

.knowledge-item:hover .knowledge-date {
  color: var(--primary-dark);
}

/* 搜索框样式 */
.knowledge-search {
  position: relative;
  margin-bottom: 20px;
}

.knowledge-search-input {
  width: 100%;
  height: 45px;
  padding: 10px 15px 10px 45px;
  border-radius: 50px;
  border: 1px solid rgba(240, 138, 93, 0.2);
  background-color: #fff;
  box-shadow: 0 3px 10px rgba(240, 138, 93, 0.05);
  transition: all 0.3s ease;
  font-size: 14px;
  color: var(--dark);
}

.knowledge-search-input:focus {
  outline: none;
  border-color: var(--primary);
  box-shadow: 0 5px 15px rgba(240, 138, 93, 0.1);
  padding-left: 50px;
}

.knowledge-search-input::placeholder {
  color: #aaa;
  transition: all 0.3s ease;
}

.knowledge-search-input:focus::placeholder {
  opacity: 0.7;
}

.knowledge-search-icon {
  position: absolute;
  left: 15px;
  top: 50%;
  transform: translateY(-50%);
  color: var(--primary);
  font-size: 18px;
  pointer-events: none;
  transition: all 0.3s ease;
}

.knowledge-search-input:focus + .knowledge-search-icon {
  color: var(--primary-dark);
  left: 18px;
}

/* 分类列表样式 */
.category-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.category-item {
  margin-bottom: 5px;
}

.category-link {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 12px 15px;
  border-radius: 10px;
  color: var(--dark);
  text-decoration: none;
  transition: all 0.3s ease;
  background-color: rgba(240, 138, 93, 0.03);
  border: 1px solid rgba(240, 138, 93, 0.1);
  position: relative;
  overflow: hidden;
}

.category-link:hover {
  background-color: rgba(240, 138, 93, 0.08);
  transform: translateX(5px);
  color: var(--primary);
  box-shadow: 0 3px 10px rgba(240, 138, 93, 0.1);
}

.category-link::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 3px;
  background-color: var(--primary);
  opacity: 0;
  transition: opacity 0.3s ease;
}

.category-link:hover::before {
  opacity: 1;
}

.category-name {
  display: flex;
  align-items: center;
}

.category-icon {
  color: var(--primary);
  margin-right: 10px;
  font-size: 18px;
  transition: all 0.3s ease;
}

.category-link:hover .category-icon {
  transform: translateX(3px);
}

.category-badge {
  background-color: rgba(240, 138, 93, 0.1);
  color: var(--primary);
  font-weight: 600;
  padding: 3px 10px;
  border-radius: 50px;
  font-size: 12px;
  transition: all 0.3s ease;
}

.category-link:hover .category-badge {
  background-color: var(--primary);
  color: white;
  box-shadow: 0 3px 8px rgba(240, 138, 93, 0.2);
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

/* 标题样式 */
.section-title {
  font-size: 1.25rem;
  font-weight: 700;
  color: var(--dark);
  margin-bottom: 1.5rem;
  position: relative;
  display: inline-block;
}

.section-title::after {
  content: "";
  position: absolute;
  bottom: -8px;
  left: 0;
  width: 40px;
  height: 3px;
  background: var(--primary);
  border-radius: 3px;
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

/* 响应式调整 */
@media (max-width: 992px) {
  .card-body {
    padding: 20px;
  }
  
  .knowledge-item {
    padding: 12px;
  }
  
  .category-link {
    padding: 10px 12px;
  }
}

@media (max-width: 768px) {
  .card-body {
    padding: 15px;
  }
  
  .knowledge-item {
    padding: 10px;
    flex-direction: column;
    align-items: flex-start;
  }
  
  .knowledge-date {
    margin-left: 0;
    margin-top: 5px;
    font-size: 0.8rem;
  }
  
  .category-link {
    padding: 8px 10px;
  }
  
  .category-badge {
    padding: 2px 8px;
    font-size: 10px;
  }
}

@media (max-width: 576px) {
  .knowledge-search-input {
    height: 40px;
    font-size: 13px;
    padding: 8px 15px 8px 40px;
  }
  
  .knowledge-search-icon {
    font-size: 16px;
    left: 12px;
  }
  
  .pagination .page-item .page-link {
    min-width: 30px;
    padding: 0.4rem 0.6rem;
    font-size: 0.85rem;
  }
}
</style>

<div class="row">
  <div class="col-xl-9 col-lg-8">
    <div class="card">
      <div class="card-body">
        <div class="decoration decoration-1"></div>
        <div class="decoration decoration-2"></div>
        <h4 class="section-title">知识库文章</h4>
        
        <div class="knowledge-list">
          {if $HelpList}
            {foreach $HelpList as $help}
              <a href="./knowledgebaseview?id={$help.id}" class="knowledge-item">
                <i class="bx bx-file knowledge-icon"></i>
                <div class="knowledge-content">
                  <h5 class="knowledge-title">{$help.title}</h5>
                </div>
                <div class="knowledge-date">{$help.create_time|date='Y-m-d'}</div>
              </a>
            {/foreach}
          {else}
            <div class="text-center py-5">
              <i class="bx bx-search-alt" style="font-size: 48px; color: var(--primary); opacity: 0.5;"></i>
              <p class="mt-3 text-muted">暂无相关文章</p>
            </div>
          {/if}
        </div>

        <!-- 表单底部调用开始 -->
        {include file="includes/tablefooter" url="knowledgebase"}
      </div>
    </div>
  </div>

  <div class="col-xl-3 col-lg-4">
    <div class="card">
      <div class="card-body">
        <h4 class="section-title">搜索</h4>
        <div class="knowledge-search">
          <input type="text" class="knowledge-search-input" id="searchInp" placeholder="{$Lang['search_by_keyword']}">
          <i class="bx bx-search-alt knowledge-search-icon"></i>
        </div>

        <h4 class="section-title mt-4">分类</h4>
        <ul class="category-list">
          {foreach $HelpCate as $classify}
            <li class="category-item">
              <a href="./knowledgebase?cate={$classify.id}" class="category-link">
                <div class="category-name">
                  <i class="bx bx-folder category-icon"></i>
                  <span>{$classify.title}</span>
                </div>
                <span class="category-badge">{$classify.count}</span>
              </a>
            </li>
          {/foreach}
        </ul>
      </div>
    </div>
  </div>
</div>

<script>
  // 搜索功能
  $('#searchInp').on('keydown', function(e) {
    if (e.keyCode == 13) {
      location.href = 'knowledgebase?keywords=' + $('#searchInp').val();
    }
  });

  // 添加动画效果
  $(document).ready(function() {
    // 为知识库项添加延迟动画
    $('.knowledge-item').each(function(index) {
      $(this).css({
        'opacity': '0',
        'transform': 'translateY(20px)'
      });
      
      setTimeout(() => {
        $(this).css({
          'transition': 'all 0.5s cubic-bezier(0.4, 0, 0.2, 1)',
          'opacity': '1',
          'transform': 'translateY(0)'
        });
      }, 100 + (index * 50));
    });
    
    // 为分类项添加延迟动画
    $('.category-item').each(function(index) {
      $(this).css({
        'opacity': '0',
        'transform': 'translateX(-20px)'
      });
      
      setTimeout(() => {
        $(this).css({
          'transition': 'all 0.5s cubic-bezier(0.4, 0, 0.2, 1)',
          'opacity': '1',
          'transform': 'translateX(0)'
        });
      }, 300 + (index * 50));
    });
    
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
  });
</script>

