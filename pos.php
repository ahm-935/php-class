<?php
require_once 'models/product.class.php';


$rows = Product::readAll();
// echo '<pre>';
// print_r($rows);
// echo '</pre>';
?>

<style>
.main-sidebar,.main-header,.main-footer{
    display: none;
}
.content-wrapper{
    margin-left: 0px !important;
}
</style>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>POS</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active"><a href="products" class="btn btn-sm btn-dark">&larr; Back to Products</a></li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-8">
          <div class="row">
            <?php 
            foreach($rows as $item): 
                if($item['active'] == 0){
                    continue;
                }
            ?>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <img src="<?= BASE_URL_ADMIN . $item['image']; ?>" alt="" height="200" class="card-img p-3">
                    <div class="card-body text-center">
                        <h6><?= $item['name']; ?></h6>
                        <h5 class="card-text">BDT <?= $item['price']; ?></h5>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
          </div>
          <!-- /.card -->
        </div>
        <div class="col-4"></div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>