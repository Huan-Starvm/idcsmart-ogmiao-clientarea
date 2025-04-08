<style>
/* Base styles for knowledge base article view */
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

/* Article card styling */
.article-card {
  border: none;
  border-radius: 15px;
  box-shadow: var(--card-shadow);
  transition: all 0.3s ease;
  overflow: hidden;
  margin-bottom: 1.5rem;
  background-color: var(--light);
  position: relative;
}

.article-card:hover {
  box-shadow: var(--card-hover-shadow);
  transform: translateY(-5px);
}

.article-card-body {
  padding: 2rem;
  position: relative;
}

/* Decorative elements */
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

/* Article header styling */
.article-header {
  text-align: center;
  margin-bottom: 2rem;
  position: relative;
  z-index: 1;
}

.article-category {
  display: inline-block;
  background-color: rgba(240, 138, 93, 0.15);
  color: var(--primary);
  font-size: 0.8rem;
  font-weight: 600;
  padding: 0.4rem 1rem;
  border-radius: 50px;
  margin-bottom: 1rem;
  transition: all 0.3s ease;
}

.article-category:hover {
  background-color: rgba(240, 138, 93, 0.25);
  transform: translateY(-2px);
}

.article-category i {
  margin-right: 0.5rem;
  font-size: 0.9rem;
}

.article-title {
  font-size: 1.8rem;
  font-weight: 700;
  color: var(--dark);
  margin-bottom: 1rem;
  line-height: 1.4;
}

.article-date {
  color: var(--gray);
  font-size: 0.9rem;
  margin-bottom: 0;
}

.article-date i {
  color: var(--primary);
  margin-right: 0.3rem;
}

/* Article content styling */
.article-content {
  margin-top: 2rem;
  position: relative;
  z-index: 1;
}

.article-description {
  font-size: 1.1rem;
  color: var(--dark);
  line-height: 1.6;
  margin-bottom: 1.5rem;
  font-weight: 500;
  border-left: 3px solid var(--primary);
  padding-left: 1rem;
  font-style: italic;
}

.article-body {
  color: var(--gray);
  font-size: 1rem;
  line-height: 1.8;
}

.article-body img {
  max-width: 100%;
  height: auto;
  border-radius: 10px;
  margin: 1.5rem 0;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.article-body img:hover {
  transform: scale(1.02);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.article-body p {
  margin-bottom: 1.2rem;
  display: block !important;
  white-space: normal;
}

.article-body h1, 
.article-body h2, 
.article-body h3, 
.article-body h4, 
.article-body h5, 
.article-body h6 {
  color: var(--dark);
  margin-top: 2rem;
  margin-bottom: 1rem;
  font-weight: 600;
}

.article-body a {
  color: var(--primary);
  text-decoration: none;
  transition: all 0.3s ease;
  border-bottom: 1px dashed var(--primary-light);
  padding-bottom: 2px;
}

.article-body a:hover {
  color: var(--primary-dark);
  border-bottom: 1px solid var(--primary);
}

.article-body ul, 
.article-body ol {
  padding-left: 1.5rem;
  margin-bottom: 1.5rem;
}

.article-body li {
  margin-bottom: 0.5rem;
}

.article-body blockquote {
  border-left: 4px solid var(--primary);
  padding: 1rem 1.5rem;
  margin: 1.5rem 0;
  background-color: rgba(240, 138, 93, 0.05);
  border-radius: 0 10px 10px 0;
}

.article-body pre {
  background-color: #f8f9fa;
  padding: 1rem;
  border-radius: 10px;
  overflow-x: auto;
  margin: 1.5rem 0;
  border: 1px solid rgba(0, 0, 0, 0.05);
}

.article-body code {
  background-color: rgba(240, 138, 93, 0.1);
  color: var(--primary-dark);
  padding: 0.2rem 0.4rem;
  border-radius: 4px;
  font-size: 0.9em;
}

/* Article divider */
.article-divider {
  height: 1px;
  background: linear-gradient(90deg, rgba(240, 138, 93, 0.2), rgba(240, 138, 93, 0.05), rgba(240, 138, 93, 0.2));
  margin: 2rem 0;
  position: relative;
}

.article-divider::before {
  content: "";
  position: absolute;
  width: 40px;
  height: 3px;
  background: var(--primary);
  top: -1px;
  left: 50%;
  transform: translateX(-50%);
  border-radius: 3px;
}

/* Article tags */
.article-tags {
  margin-top: 2rem;
}

.article-tags-title {
  font-size: 1.1rem;
  font-weight: 600;
  color: var(--dark);
  margin-bottom: 1rem;
  position: relative;
  display: inline-block;
}

.article-tags-title::after {
  content: "";
  position: absolute;
  bottom: -5px;
  left: 0;
  width: 30px;
  height: 2px;
  background: var(--primary);
  border-radius: 2px;
}

.article-tags-list {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  padding: 0;
  margin: 0;
}

.article-tags-item {
  margin-right: 0.5rem;
  margin-bottom: 0.5rem;
  padding: 0.5rem 1rem;
  background-color: rgba(240, 138, 93, 0.1);
  color: var(--primary);
  border-radius: 50px;
  font-size: 0.85rem;
  font-weight: 500;
  transition: all 0.3s ease;
}

.article-tags-item:hover {
  background-color: rgba(240, 138, 93, 0.2);
  transform: translateY(-2px);
}

/* Article navigation */
.article-navigation {
  display: flex;
  justify-content: space-between;
  margin-top: 2rem;
}

.article-nav-btn {
  display: inline-flex;
  align-items: center;
  padding: 0.6rem 1.2rem;
  background-color: var(--primary);
  color: white;
  border-radius: 50px;
  font-weight: 600;
  transition: all 0.3s ease;
  border: none;
  box-shadow: 0 4px 15px rgba(240, 138, 93, 0.3);
  text-decoration: none;
  max-width: 45%;
}

.article-nav-btn:hover {
  background-color: var(--primary-dark);
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(240, 138, 93, 0.4);
  color: white;
  text-decoration: none;
}

.article-nav-btn i {
  font-size: 1.2rem;
}

.article-nav-prev i {
  margin-right: 0.5rem;
}

.article-nav-next i {
  margin-left: 0.5rem;
}

.article-nav-text {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

/* Responsive adjustments */
@media (max-width: 992px) {
  .article-card-body {
    padding: 1.5rem;
  }
  
  .article-title {
    font-size: 1.6rem;
  }
  
  .article-description {
    font-size: 1rem;
  }
}

@media (max-width: 768px) {
  .article-card-body {
    padding: 1.2rem;
  }
  
  .article-title {
    font-size: 1.4rem;
  }
  
  .article-navigation {
    flex-direction: column;
    gap: 1rem;
  }
  
  .article-nav-btn {
    max-width: 100%;
  }
}

@media (max-width: 576px) {
  .article-card-body {
    padding: 1rem;
  }
  
  .article-title {
    font-size: 1.3rem;
  }
  
  .article-description {
    font-size: 0.95rem;
    padding-left: 0.8rem;
  }
  
  .article-category {
    font-size: 0.75rem;
    padding: 0.3rem 0.8rem;
  }
  
  .article-tags-item {
    font-size: 0.8rem;
    padding: 0.4rem 0.8rem;
  }
}
</style>

<div class="row">
  <div class="col-lg-12">
    <div class="article-card">
      <div class="article-card-body">
        <!-- Decorative elements -->
        <div class="decoration decoration-1"></div>
        <div class="decoration decoration-2"></div>
        
        <div class="pt-3">
          <div class="row justify-content-center">
            <div class="col-xl-8">
              <!-- Article header -->
              <div class="article-header">
                <a href="knowledgebase?cate={$KnowledgeBaseArticle.cate_id}" class="article-category">
                  <i class="bx bx-purchase-tag-alt"></i>{$KnowledgeBaseArticle.cate_name}
                </a>
                <h1 class="article-title">{$KnowledgeBaseArticle.title}</h1>
                <p class="article-date">
                  <i class="bx bx-calendar"></i>{$KnowledgeBaseArticle.create_time | date='Y-m-d H:i'}
                </p>
              </div>
              
              <div class="article-divider"></div>
              
              <!-- Article content -->
              <div class="article-content">
                {if $KnowledgeBaseArticle.description}
                <div class="article-description">
                  {$KnowledgeBaseArticle.description}
                </div>
                {/if}
                
                <div class="article-body">
                  {$KnowledgeBaseArticle.content|raw}
                </div>
              </div>
              
              <div class="article-divider"></div>
              
              <!-- Article tags -->
              {if $KnowledgeBaseArticle.label}
              <div class="article-tags">
                <h5 class="article-tags-title">{$Lang.label}</h5>
                <ul class="article-tags-list row">
                  {foreach $KnowledgeBaseArticle.label as $label}
                  <li class="article-tags-item">{$label}</li>
                  {/foreach}
                </ul>
              </div>
              {/if}
              
              <!-- Article navigation -->
              <div class="article-navigation">
                {if $KnowledgeBaseArticle.prev}
                <a href="knowledgebaseview?id={$KnowledgeBaseArticle.prev.id}" class="article-nav-btn article-nav-prev">
                  <i class="bx bx-left-arrow-alt"></i>
                  <span class="article-nav-text">{$KnowledgeBaseArticle.prev.title}</span>
                </a>
                {/if}
                
                {if $KnowledgeBaseArticle.next}
                <a href="knowledgebaseview?id={$KnowledgeBaseArticle.next.id}" class="article-nav-btn article-nav-next">
                  <span class="article-nav-text">{$KnowledgeBaseArticle.next.title}</span>
                  <i class="bx bx-right-arrow-alt"></i>
                </a>
                {/if}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

