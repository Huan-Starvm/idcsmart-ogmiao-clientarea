{if $Downloads.location_url}
<script>
  window.open("{$Downloads.location_url}");
</script>
{/if}

<style>
  /* Downloads page styling to match clientarea theme */
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

  /* Card styling */
  .downloads-container {
    display: flex;
    gap: 20px;
  }

  .card {
    border: none !important;
    border-radius: 15px !important;
    box-shadow: var(--card-shadow) !important;
    transition: all 0.3s ease !important;
    overflow: hidden !important;
    margin-bottom: 1.5rem !important;
    background-color: var(--light) !important;
  }

  .card:hover {
    box-shadow: var(--card-hover-shadow) !important;
    transform: translateY(-5px) !important;
  }

  .card-body {
    padding: 1.5rem !important;
    position: relative !important;
  }

  /* Sidebar styling */
  .filemanager-sidebar {
    width: 280px;
    flex-shrink: 0;
    position: relative;
  }

  .filemanager-sidebar::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 3px;
    background: linear-gradient(90deg, var(--primary), var(--primary-light), var(--primary));
    opacity: 0.7;
  }

  .categories-list li {
    margin-bottom: 10px;
  }

  .categories-list a {
    display: flex;
    align-items: center;
    padding: 10px 15px;
    border-radius: 10px;
    transition: all 0.3s ease;
    color: var(--dark) !important;
    text-decoration: none;
    font-weight: 500;
  }

  .categories-list a:hover {
    background-color: rgba(240, 138, 93, 0.08);
    transform: translateX(5px);
  }

  .categories-list a i {
    color: var(--primary) !important;
    font-size: 1.2rem;
    margin-right: 10px;
  }

  /* Badge styling */
  .badge {
    padding: 0.4rem 0.8rem;
    font-size: 0.75rem;
    font-weight: 600;
    border-radius: 50px;
    margin-left: 0.5rem;
  }

  .badge-success {
    background-color: rgba(38, 222, 129, 0.15) !important;
    color: #26de81 !important;
  }

  .badge-pill {
    border-radius: 50px;
  }

  /* Table styling */
  .table {
    min-width: 600px;
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

  .table a {
    color: var(--primary);
    transition: all 0.3s ease;
    text-decoration: none;
  }

  .table a:hover {
    color: var(--primary-dark);
    text-decoration: none;
  }

  /* File icons */
  .file-icon {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 36px;
    height: 36px;
    border-radius: 8px;
    margin-right: 10px;
    flex-shrink: 0;
    background-color: rgba(240, 138, 93, 0.1);
    color: var(--primary);
    font-size: 18px;
  }

  .file-icon.zip {
    background-color: rgba(254, 211, 48, 0.1);
    color: #fed330;
  }

  .file-icon.image {
    background-color: rgba(38, 222, 129, 0.1);
    color: #26de81;
  }

  .file-icon.text {
    background-color: rgba(69, 170, 242, 0.1);
    color: #45aaf2;
  }

  /* Download button */
  .download-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background-color: rgba(240, 138, 93, 0.1);
    color: var(--primary);
    transition: all 0.3s ease;
  }

  .download-btn:hover {
    background-color: var(--primary);
    color: white;
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(240, 138, 93, 0.3);
  }

  /* Section title */
  .section-title {
    font-size: 1.25rem;
    font-weight: 700;
    color: var(--dark);
    margin-bottom: 1.25rem;
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

  /* Responsive adjustments */
  @media (max-width: 992px) {
    .downloads-container {
      flex-direction: column;
    }
    
    .filemanager-sidebar {
      width: 100%;
    }
    
    .categories-list {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
    }
    
    .categories-list li {
      margin-bottom: 0;
    }
  }

  @media (max-width: 768px) {
    .card-body {
      padding: 1.2rem !important;
    }
    
    .table th,
    .table td {
      padding: 0.8rem !important;
    }
    
    .file-icon,
    .download-btn {
      width: 32px;
      height: 32px;
      font-size: 16px;
    }
  }

  @media (max-width: 576px) {
    .card-body {
      padding: 1rem !important;
    }
    
    .table th,
    .table td {
      padding: 0.7rem !important;
      font-size: 0.9rem;
    }
    
    .file-icon,
    .download-btn {
      width: 28px;
      height: 28px;
      font-size: 14px;
    }
    
    .section-title {
      font-size: 1.1rem;
    }
  }
</style>

<div class="downloads-container">
  <div class="card filemanager-sidebar">
    <div class="card-body">
      <h5 class="section-title">{$Lang.categories}</h5>
      <div class="d-flex flex-column h-100">
        <div class="mb-4">
          <ul class="list-unstyled categories-list">
            {foreach $Downloads.downloads.cate_data as $cate_data}
            <li>
              <a href="./downloads?cate_id={$cate_data.id}" class="d-flex align-items-center">
                <i class="bx bx-folder text-warning"></i>
                {$cate_data.name}
                <span class="badge badge-success badge-pill ml-2">{$cate_data.file_count}</span>
              </a>
            </li>
            {/foreach}
          </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="w-100">
    <div class="card">
      <div class="card-body">
        {if $ErrorMsg}
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          <i class="bx bx-error-circle mr-2"></i>
          {$ErrorMsg}
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        {/if}

        <div class="mt-2">
          <h5 class="section-title">{$Lang.downloads_directory}</h5>
          <hr class="mt-3 mb-4" style="background: linear-gradient(90deg, rgba(240, 138, 93, 0.2), rgba(240, 138, 93, 0.05), rgba(240, 138, 93, 0.2));">

          <div class="table-responsive">
            <table class="table table-hover mb-0">
              <thead>
                <tr>
                  <th scope="col">{$Lang.file_name}</th>
                  <th scope="col">{$Lang.upload_time}</th>
                  <th scope="col">{$Lang.amount_downloads}</th>
                  <th scope="col" width="80px"></th>
                </tr>
              </thead>
              <tbody>
                {if $Downloads.downloads.downloads}
                {foreach $Downloads.downloads.downloads as $downloads}
                <tr>
                  <td>
                    <a href="{$downloads.down_link}" class="d-flex align-items-center">
                      <div class="file-icon {if $downloads.type == '1'}zip{elseif $downloads.type == '2'}image{elseif $downloads.type == '3'}text{/if}">
                        <i class="bx {if $downloads.type == '1'}bx-archive{elseif $downloads.type == '2'}bx-image{elseif $downloads.type == '3'}bx-file{/if}"></i>
                      </div>
                      <span class="font-weight-medium">{$downloads.title}</span>
                    </a>
                  </td>
                  <td>{$downloads.update_time|date='Y-m-d H:i'}</td>
                  <td>
                    <span class="badge badge-light-secondary">
                      <i class="bx bx-download mr-1"></i>{$downloads.downloads}
                    </span>
                  </td>
                  <td class="text-center">
                    <a href="{$downloads.down_link}" class="download-btn">
                      <i class="bx bx-cloud-download"></i>
                    </a>
                  </td>
                </tr>
                {/foreach}
                {else}
                <tr>
                  <td colspan="4" class="text-center py-4">
                    <div class="empty-state">
                      <i class="bx bx-file text-muted" style="font-size: 2.5rem;"></i>
                      <p class="mt-2 text-muted">{$Lang.nothing}</p>
                    </div>
                  </td>
                </tr>
                {/if}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function() {
    // Add hover effects to table rows
    $('.table tbody tr').hover(
      function() {
        $(this).css({
          'transform': 'translateY(-2px)',
          'box-shadow': '0 5px 15px rgba(0, 0, 0, 0.05)',
          'z-index': '1',
          'position': 'relative',
          'transition': 'all 0.3s ease'
        });
      },
      function() {
        $(this).css({
          'transform': '',
          'box-shadow': '',
          'z-index': '',
          'position': '',
          'transition': 'all 0.3s ease'
        });
      }
    );
    
    // Add ripple effect to download buttons
    $('.download-btn').on('mousedown', function(e) {
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
    
    // Add animation to cards
    $('.card').css({
      'opacity': '0',
      'transform': 'translateY(20px)'
    }).each(function(index) {
      const $this = $(this);
      setTimeout(function() {
        $this.css({
          'transition': 'all 0.6s cubic-bezier(0.4, 0, 0.2, 1)',
          'opacity': '1',
          'transform': 'translateY(0)'
        });
      }, 100 * index);
    });
    
    // Highlight active category
    const urlParams = new URLSearchParams(window.location.search);
    const cateId = urlParams.get('cate_id');
    
    if (cateId) {
      $(`.categories-list a[href$="cate_id=${cateId}"]`).css({
        'background-color': 'rgba(240, 138, 93, 0.15)',
        'color': 'var(--primary)',
        'font-weight': '600',
        'transform': 'translateX(5px)'
      });
    }
  });
</script>

