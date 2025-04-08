<style>
/* 基础变量定义 - 与news.tpl保持一致 */
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

/* 修改新闻标题样式，使其更突出 */
.news-title {
  font-size: 2rem;
  font-weight: 700;
  color: var(--dark);
  margin-bottom: 1.2rem;
  line-height: 1.4;
  position: relative;
  display: inline-block;
  text-align: center;
  width: 100%;
}

.news-title::after {
  content: "";
  position: absolute;
  bottom: -12px;
  left: 50%;
  transform: translateX(-50%);
  width: 80px;
  height: 3px;
  background: var(--primary);
  border-radius: 3px;
}

/* 修改新闻分类标签样式 */
.news-category {
  display: inline-block;
  background-color: rgba(240, 138, 93, 0.15);
  color: var(--primary);
  font-size: 0.9rem;
  font-weight: 600;
  padding: 0.5rem 1.2rem;
  border-radius: 50px;
  margin-bottom: 1.2rem;
  transition: all 0.3s ease;
  box-shadow: 0 3px 10px rgba(240, 138, 93, 0.1);
}

/* 修改新闻日期样式 */
.news-date {
  color: var(--gray);
  font-size: 0.95rem;
  margin-bottom: 2rem;
}

/* 修改分隔线样式 */
hr {
  height: 1px;
  background: linear-gradient(90deg, rgba(240, 138, 93, 0.2), rgba(240, 138, 93, 0.05), rgba(240, 138, 93, 0.2));
  border: none;
  margin: 2.5rem 0;
  position: relative;
}

/* 修改内容区域样式，提高可读性 */
#viewcontent {
  border: none;
  width: 100%;
  transition: all 0.3s ease;
  border-radius: 12px;
  overflow: hidden;
  background-color: #fff;
  padding: 0;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
  margin: 2rem 0;
}

/* 修改标签样式 */
.tags-title {
  font-size: 1.2rem;
  font-weight: 600;
  color: var(--dark);
  margin-bottom: 1.2rem;
  position: relative;
  display: inline-block;
}

.tags-title::after {
  content: "";
  position: absolute;
  bottom: -5px;
  left: 0;
  width: 30px;
  height: 2px;
  background: var(--primary);
  border-radius: 2px;
}

.tags-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-wrap: wrap;
}

.tag-item {
  margin-right: 0.8rem;
  margin-bottom: 0.8rem;
  padding: 0.6rem 1.2rem;
  background-color: rgba(240, 138, 93, 0.1);
  color: var(--primary);
  border-radius: 50px;
  font-size: 0.9rem;
  font-weight: 500;
  transition: all 0.3s ease;
  box-shadow: 0 2px 8px rgba(240, 138, 93, 0.05);
}

/* 导航按钮样式 */
.btn-primary {
  background-color: var(--primary);
  border-color: var(--primary);
  color: white;
  box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
  padding: 0.6rem 1.5rem;
  border-radius: 50px;
  font-weight: 600;
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
  z-index: 1;
}

.btn-primary:hover {
  background-color: var(--primary-dark);
  border-color: var(--primary-dark);
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
}

.btn-primary:active {
  transform: translateY(-1px);
  box-shadow: 0 3px 10px rgba(240, 138, 93, 0.3);
}

.btn-primary::after {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0));
  transition: all 0.4s ease;
  z-index: -1;
}

.btn-primary:hover::after {
  left: 100%;
}

/* 添加内容容器样式 */
.content-container {
  background-color: #fff;
  border-radius: 15px;
  padding: 0;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
  margin: 2rem 0;
  overflow: hidden;
}

/* 修改响应式样式 */
@media (max-width: 992px) {
  .card-body {
    padding: 20px;
  }
  
  .news-title {
    font-size: 1.6rem;
  }
}

@media (max-width: 768px) {
  .news-title {
    font-size: 1.6rem;
  }
  
  .card-body {
    padding: 15px;
  }
  
  #viewcontent {
    margin: 1.5rem 0;
  }
  
  .btn-primary {
    padding: 0.5rem 1.2rem;
    font-size: 0.9rem;
  }
}

@media (max-width: 576px) {
  .news-title {
    font-size: 1.4rem;
  }
  
  .news-category {
    font-size: 0.8rem;
    padding: 0.4rem 1rem;
  }
  
  .tag-item {
    font-size: 0.8rem;
    padding: 0.4rem 0.8rem;
  }
  
  #viewcontent {
    margin: 1rem 0;
  }
  
  .btn-primary {
    padding: 0.45rem 1rem;
    font-size: 0.85rem;
    margin-bottom: 10px;
    width: 100%;
    text-align: center;
  }
  
  .mt-4.d-flex {
    flex-direction: column;
  }
}

/* 内容样式 */
.newscontent pre,
.newscontent .newscontent {
  max-width: 100%;
  word-break: break-all;
  white-space: pre-wrap;
}

.newscontent img {
  max-width: 100%;
  height: auto;
  border-radius: 10px;
  margin: 1.5rem 0;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.newscontent img:hover {
  transform: scale(1.02);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.newscontent p {
  display: block !important;
  white-space: normal;
  margin-bottom: 1.2rem;
  line-height: 1.8;
  color: var(--gray);
}
</style>

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body">
        <!-- 装饰元素 -->
        <div class="decoration decoration-1"></div>
        <div class="decoration decoration-2"></div>
        
<!-- 修改HTML结构，优化内容展示 -->
<div class="pt-3">
  <div class="row justify-content-center">
    <div class="col-xl-10">
      <div>
        <div class="text-center">
          <div class="mb-4">
            <span class="news-category">
              <i class="bx bx-purchase-tag-alt"></i>{$ViewAnnouncement.cate_name}
            </span>
          </div>
          <h1 class="news-title">{$ViewAnnouncement.title}</h1>
          <p class="news-date">
            <i class="bx bx-calendar"></i>{$ViewAnnouncement.push_time | date='Y-m-d H:i'}
          </p>
        </div>
        
        <div class="content-container">
          <iframe id="viewcontent" scrolling="no" style="border: none; width: 100%"></iframe>
        </div>
        
        {if $ViewAnnouncement.label}
        <div class="mt-4">
          <h5 class="tags-title">标签:</h5>

          <div>
            <ul class="tags-list row w-100">
              {foreach $ViewAnnouncement.label as $label}
              <li class="tag-item col-sm-auto">{$label}</li>
              {/foreach}
            </ul>
          </div>
        </div>
        {/if}

        <hr />

        <div class="mt-4 d-flex {if !$ViewAnnouncement.prev && $ViewAnnouncement.next}justify-content-end{else}justify-content-between{/if}">
          {if $ViewAnnouncement.prev}
          <a href="newsview?id={$ViewAnnouncement.prev.id}" class="btn btn-primary">
            <i class="bx bx-left-arrow-alt font-size-16 align-middle mr-2"></i> {$ViewAnnouncement.prev.title}
          </a>
          {/if} 
          
          {if $ViewAnnouncement.next}
          <a href="newsview?id={$ViewAnnouncement.next.id}" class="btn btn-primary">
            {$ViewAnnouncement.next.title} <i class="bx bx-right-arrow-alt font-size-16 align-middle ml-2"></i>
          </a>
          {/if}
        </div>
      </div>
    </div>
  </div>
</div>
      </div>
      <!-- end card body -->
    </div>
    <!-- end card -->
  </div>
  <!-- end col -->
</div>
<!-- end row -->

<script>
// 修改脚本部分，增强内容处理和交互体验
$(function () {
  $('.newscontent').find('*').css({ margin: '0px', display: 'inline-block' })
  $('.newscontent')
    .find('p')
    .each(function () {
      if ($(this).html() == '&nbsp;') {
        $(this).remove()
      }
    })
  $('.newscontent')
    .find('span')
    .each(function () {
      if ($(this).html() == '&nbsp;') {
        $(this).remove()
      }
    })

  // 内容显示到 iframe 中
  const viewstyle = `<style>
      html, body { 
        margin: 0; 
        word-break: break-all; 
        height: 100%;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        color: #4a4a4a;
        line-height: 1.8;
        padding: 25px;
        background-color: #fff;
        font-size: 16px;
      }
      table { 
        width: 100%;
        border-collapse: collapse;
        margin: 2rem 0;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
      }
      table td, table th {
        padding: 12px 15px;
        border: 1px solid rgba(240, 138, 93, 0.15);
      }
      table th {
        background-color: rgba(240, 138, 93, 0.08);
        color: #2d3436;
        font-weight: 600;
      }
      table tr:nth-child(even) {
        background-color: rgba(240, 138, 93, 0.02);
      }
      img { 
        max-width: 100%; 
        height: auto;
        border-radius: 12px;
        margin: 2rem auto;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        display: block;
      }
      img:hover {
        transform: scale(1.02);
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
      }
      p { 
        display: block !important; 
        white-space: normal;
        margin-bottom: 1.5rem;
        line-height: 1.8;
        font-size: 16px;
      }
      a {
        color: #f08a5d;
        text-decoration: none;
        transition: all 0.3s ease;
        border-bottom: 1px dashed #fad7a0;
        padding-bottom: 2px;
        font-weight: 500;
      }
      a:hover {
        color: #e67e22;
        border-bottom: 1px solid #f08a5d;
      }
      h1, h2, h3, h4, h5, h6 {
        color: #2d3436;
        margin-top: 2.5rem;
        margin-bottom: 1.2rem;
        font-weight: 600;
        line-height: 1.4;
      }
      h1 { font-size: 2rem; border-bottom: 2px solid rgba(240, 138, 93, 0.1); padding-bottom: 0.5rem; }
      h2 { font-size: 1.75rem; }
      h3 { font-size: 1.5rem; }
      h4 { font-size: 1.25rem; }
      h5 { font-size: 1.1rem; }
      h6 { font-size: 1rem; }
      
      ul, ol {
        padding-left: 1.8rem;
        margin-bottom: 1.8rem;
      }
      li {
        margin-bottom: 0.8rem;
      }
      blockquote {
        border-left: 4px solid #f08a5d;
        padding: 1.2rem 1.8rem;
        margin: 2rem 0;
        background-color: rgba(240, 138, 93, 0.05);
        border-radius: 0 12px 12px 0;
        font-style: italic;
        color: #555;
      }
      blockquote p:last-child {
        margin-bottom: 0;
      }
      pre {
        background-color: #f8f9fa;
        padding: 1.2rem;
        border-radius: 12px;
        overflow-x: auto;
        margin: 2rem 0;
        border: 1px solid rgba(0, 0, 0, 0.05);
        font-family: 'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, monospace;
        font-size: 0.9rem;
      }
      code {
        background-color: rgba(240, 138, 93, 0.1);
        color: #e67e22;
        padding: 0.2rem 0.5rem;
        border-radius: 4px;
        font-size: 0.9em;
        font-family: 'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, monospace;
      }
      
      /* 添加内容区域的阅读引导线 */
      @media (min-width: 768px) {
        body {
          max-width: 800px;
          margin: 0 auto;
        }
      }
      
      /* 优化引用和代码块 */
      blockquote {
        position: relative;
      }
      blockquote::before {
        content: """;
        position: absolute;
        top: 10px;
        left: 10px;
        font-size: 3rem;
        color: rgba(240, 138, 93, 0.2);
        font-family: Georgia, serif;
        line-height: 1;
      }
      
      /* 添加图片说明样式 */
      .image-caption {
        text-align: center;
        color: #777;
        font-size: 0.9rem;
        margin-top: -1rem;
        margin-bottom: 2rem;
        font-style: italic;
      }
      
      /* 添加内容强调样式 */
      .highlight {
        background-color: rgba(240, 138, 93, 0.15);
        padding: 2px 5px;
        border-radius: 4px;
      }
      
      /* 添加分隔线样式 */
      hr {
        height: 1px;
        background: linear-gradient(90deg, rgba(240, 138, 93, 0.2), rgba(240, 138, 93, 0.05), rgba(240, 138, 93, 0.2));
        border: none;
        margin: 2.5rem 0;
      }
      
      /* 添加响应式调整 */
      @media (max-width: 768px) {
        html, body {
          padding: 20px;
          font-size: 15px;
        }
        h1 { font-size: 1.8rem; }
        h2 { font-size: 1.6rem; }
        h3 { font-size: 1.4rem; }
        h4 { font-size: 1.2rem; }
        h5 { font-size: 1.1rem; }
        h6 { font-size: 1rem; }
      }
      
      @media (max-width: 576px) {
        html, body {
          padding: 15px;
          font-size: 14px;
        }
        h1 { font-size: 1.6rem; }
        h2 { font-size: 1.4rem; }
        h3 { font-size: 1.3rem; }
        h4 { font-size: 1.1rem; }
        h5 { font-size: 1rem; }
        h6 { font-size: 0.9rem; }
        
        img {
          margin: 1.5rem auto;
        }
        
        blockquote {
          padding: 1rem 1.5rem;
          margin: 1.5rem 0;
        }
        
        pre {
          padding: 1rem;
          margin: 1.5rem 0;
        }
      }
  </style>`
  
  let content = `{$ViewAnnouncement.content|raw}`
  content = content.indexOf('</head>') > 0 ? content.replace('</head>', `${viewstyle}</head>`) : `${viewstyle}${content}`
  const iframe = document.querySelector('#viewcontent')
  const viewdoc = iframe.contentDocument
  viewdoc.open()
  viewdoc.write(content)
  viewdoc.close()
  
  // 处理iframe内容
  setTimeout(function() {
    // 处理图片
    const images = viewdoc.querySelectorAll('img');
    images.forEach((img, index) => {
      // 为图片添加加载动画
      img.style.opacity = '0';
      img.style.transition = 'opacity 0.5s ease';
      
      // 添加图片点击放大效果
      img.style.cursor = 'pointer';
      img.setAttribute('data-action', 'zoom');
      
      // 图片加载完成后显示
      if (img.complete) {
        img.style.opacity = '1';
      } else {
        img.onload = function() {
          img.style.opacity = '1';
        };
      }
      
      // 添加图片点击事件
      img.addEventListener('click', function() {
        if (this.classList.contains('zoomed')) {
          this.style.transform = 'scale(1)';
          this.style.maxWidth = '100%';
          this.style.zIndex = '1';
          this.classList.remove('zoomed');
        } else {
          this.style.transform = 'scale(1.5)';
          this.style.maxWidth = '150%';
          this.style.zIndex = '100';
          this.classList.add('zoomed');
        }
        
        // 重新调整iframe高度
        iframe.height = viewdoc.body.scrollHeight + 30;
      });
    });
    
    // 处理链接
    const links = viewdoc.querySelectorAll('a');
    links.forEach(link => {
      // 外部链接在新窗口打开
      if (link.hostname !== window.location.hostname) {
        link.setAttribute('target', '_blank');
        link.setAttribute('rel', 'noopener noreferrer');
      }
      
      // 添加链接悬停效果
      link.addEventListener('mouseenter', function() {
        this.style.color = '#e67e22';
        this.style.borderBottom = '1px solid #f08a5d';
      });
      
      link.addEventListener('mouseleave', function() {
        this.style.color = '#f08a5d';
        this.style.borderBottom = '1px dashed #fad7a0';
      });
    });
    
    // 处理标题
    const headings = viewdoc.querySelectorAll('h1, h2, h3, h4, h5, h6');
    headings.forEach(heading => {
      // 添加标题悬停效果
      heading.addEventListener('mouseenter', function() {
        this.style.color = '#f08a5d';
      });
      
      heading.addEventListener('mouseleave', function() {
        this.style.color = '#2d3436';
      });
    });
    
    // 自动调整iframe高度
    iframe.height = viewdoc.body.scrollHeight + 30;
  }, 300);
  
  // 添加动画效果
  $('.card').css({
    'opacity': '0',
    'transform': 'translateY(20px)'
  });
  
  setTimeout(() => {
    $('.card').css({
      'transition': 'all 0.6s cubic-bezier(0.4, 0, 0.2, 1)',
      'opacity': '1',
      'transform': 'translateY(0)'
    });
  }, 100);
  
  // 为标签添加动画效果
  $('.tag-item').each(function(index) {
    $(this).css({
      'opacity': '0',
      'transform': 'translateY(10px)'
    });
    
    setTimeout(() => {
      $(this).css({
        'transition': 'all 0.4s cubic-bezier(0.4, 0, 0.2, 1)',
        'opacity': '1',
        'transform': 'translateY(0)'
      });
    }, 500 + (index * 50));
  });
  
  // 为按钮添加动画效果
  $('.btn-primary').hover(
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
  
  // 添加按钮点击波纹效果
  $('.btn-primary').on('mousedown', function(e) {
    const $this = $(this);
    $this.find('.ripple').remove();
    
    const $ripple = $('<span class="ripple"></span>');
    $this.append($ripple);
    
    const x = e.pageX - $this.offset().left;
    const y = e.pageY - $this.offset().top;
    
    $ripple.css({
      top: y + 'px',
      left: x + 'px'
    });
    
    setTimeout(function() {
      $ripple.remove();
    }, 600);
  });
  
  // 添加波纹效果样式
  $('<style>')
    .prop('type', 'text/css')
    .html(`
      .btn-primary {
        position: relative;
        overflow: hidden;
      }
      .ripple {
        position: absolute;
        background: rgba(255, 255, 255, 0.3);
        border-radius: 50%;
        transform: scale(0);
        animation: ripple-effect 0.6s linear;
        pointer-events: none;
      }
      @keyframes ripple-effect {
        to {
          transform: scale(2.5);
          opacity: 0;
        }
      }
    `)
    .appendTo('head');
    
  // 监听窗口大小变化，重新调整iframe高度
  $(window).on('resize', function() {
    setTimeout(function() {
      iframe.height = viewdoc.body.scrollHeight + 30;
    }, 300);
  });
})
</script>

