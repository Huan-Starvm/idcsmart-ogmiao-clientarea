<style>
  /* Base styles */
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
  .card {
    border: none;
    border-radius: 15px;
    box-shadow: var(--card-shadow);
    transition: all 0.3s ease;
    overflow: hidden;
    margin-bottom: 20px;
    background-color: var(--light);
  }

  .card:hover {
    box-shadow: var(--card-hover-shadow);
    transform: translateY(-5px);
  }

  .card-body {
    padding: 1.5rem;
    position: relative;
  }

  /* Table container */
  .table-container {
    position: relative;
  }

  /* Table styling */
  .table-responsive {
    overflow: visible;
    border-radius: 10px;
    box-shadow: 0 2px 15px rgba(0, 0, 0, 0.03);
  }

  .table {
    width: 100%;
    margin-bottom: 0;
    color: var(--dark);
    border-collapse: separate;
    border-spacing: 0;
  }

  .table thead {
    background-color: rgba(240, 138, 93, 0.05);
  }

  .table th {
    padding: 1rem !important;
    vertical-align: middle !important;
    border-top: none !important;
    font-weight: 600 !important;
    color: var(--dark) !important;
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
    white-space: unset;
    color: var(--gray);
  }

  .table tr:hover td {
    background-color: rgba(240, 138, 93, 0.03) !important;
  }

  /* Bill header row styling */
  .table-secondary {
    background-color: rgba(240, 138, 93, 0.08) !important;
    font-weight: 600;
  }

  .table-secondary td {
    color: var(--primary-dark) !important;
    font-size: 1.05rem;
  }

  /* Table footer */
  .table-footer {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    padding: 1.5rem 0 0.5rem 0;
    transition: all 0.3s ease;
  }

  /* Button styling */
  .btn {
    padding: 0.6rem 1.5rem;
    border-radius: 50px;
    font-weight: 600;
    transition: all 0.3s;
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
    background: linear-gradient(90deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0);
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

  /* Amount styling */
  .amount-value {
    color: var(--primary);
    font-weight: 600;
  }

  /* Total row styling */
  .total-row {
    background-color: rgba(240, 138, 93, 0.05);
    font-weight: 700;
  }

  .total-row td {
    color: var(--primary-dark) !important;
    font-size: 1.1rem;
    border-top: 2px dashed rgba(240, 138, 93, 0.2) !important;
  }

  /* Responsive adjustments */
  @media (max-width: 768px) {
    .card-body {
      padding: 1.2rem;
    }

    .table th,
    .table td {
      padding: 0.8rem !important;
      font-size: 0.9rem;
    }

    .table-secondary td {
      font-size: 1rem;
    }

    .btn {
      padding: 0.5rem 1.2rem;
      font-size: 0.9rem;
    }
  }

  @media (max-width: 576px) {
    .card-body {
      padding: 1rem;
    }

    .table th,
    .table td {
      padding: 0.7rem !important;
      font-size: 0.85rem;
    }

    .table-secondary td {
      font-size: 0.95rem;
    }

    .btn {
      padding: 0.45rem 1rem;
      font-size: 0.85rem;
    }

    .table-footer {
      flex-direction: column;
      align-items: stretch;
    }

    .table-footer .btn {
      margin-bottom: 0.5rem;
      width: 100%;
    }
  }

  /* Animation effects */
  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
  }

  .card {
    animation: fadeIn 0.5s ease-out;
  }
</style>
<div class="card">
	<div class="card-body">
  <form action="combinebilling" method="post">
		<div class="table-container">
      
			<div class="table-responsive">
        <table class="table mb-0">
            <thead>
                <tr>
                    <th>{$Lang.describe}</th>
                    <th width="20%">{$Lang.amount_money}</th>
                </tr>
            </thead>
            <tbody>
                {foreach $Combine_billing as $index => $list}
                  <tr class="table-secondary">
                      <td>
                        <input type="hidden" name="ids[{$index}]" value="{$list.id}"/>
                        <strong>{$Lang.bill}#{$list.id}</strong>
                      </td>
                      <td class="amount-value">￥{$list.total}</td>
                  </tr>
                  {foreach $list.items as $item}
                  <tr>
                      <td>{$item.description}</td>
                      <td class="amount-value">￥{$item.amount}</td>
                  </tr>
                  {/foreach}
                {/foreach}
                
                <!-- Total row - calculate and display total if needed -->
                {if $Combine_billing}
                <tr class="total-row">
                  <td><strong>总计</strong></td>
                  <td class="amount-value">￥{$Total_amount}</td>
                </tr>
                {/if}
            </tbody>
        </table>

      </div>

      <!-- Table footer with action buttons -->
      <div class="table-footer">
        <button class="btn btn-primary mr-2" type="submit">
          <i class="bx bx-check mr-1"></i>{$Lang.pay_immediately}
        </button>
        <button class="btn btn-outline-light" type="button" id="rebackd">
          <i class="bx bx-arrow-back mr-1"></i>{$Lang.return}
        </button>
      </div>
				
		</div>
   </form>
	</div>
</div>

<script>
  $(document).ready(function() {
    // Handle return button click
    $('#rebackd').click(function() {
      window.history.go(-1);
    });
    
    // Add hover effects to table rows
    $('.table tbody tr').not('.table-secondary, .total-row').hover(
      function() {
        $(this).css({
          'background-color': 'rgba(240, 138, 93, 0.03)',
          'transform': 'translateY(-2px)',
          'box-shadow': '0 2px 8px rgba(0, 0, 0, 0.05)',
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
    
    // Add button hover effects
    $('.btn').hover(
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
  });
</script>

