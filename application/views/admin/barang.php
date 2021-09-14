 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
     <!-- Content Header (Page header) -->
     <section class="content-header">
         <div class="container-fluid">
             <div class="row mb-2">
                 <div class="col-sm-6">
                     <h1>Data Semua Barang </h1>
                 </div>
                 <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                         <li class="breadcrumb-item"><a href="<?= base_url('admin'); ?>">Admin</a></li>
                         <li class="breadcrumb-item active">Data Barang</li>
                     </ol>
                 </div>
             </div>
         </div><!-- /.container-fluid -->
     </section>

     <!-- Main content -->
     <section class="content">
         <div class="container-fluid">
             <div class="row">
                 <div class="col-12">

                     <div class="container mt-5 mb-5">
                         <div class="card">
                             <div class="card-header">
                                 <h4> Tabel Barang </h4>
                             </div>

                             <div class="card-body">
                                 <table class="table table-striped table-bordered" id="example2">
                                     <thead>
                                         <tr>
                                             <th> No. </th>
                                             <th> Kode Barang </th>
                                             <th> Nama Barang </th>
                                             <th> Harga Beli </th>
                                             <th> Harga Jual Biasa</th>
                                             <th> Harga Jual Grosir </th>
                                             <th> Keterangan </th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                         <!-- ini isi tabele -->
                                         <?php
                                            $i = 1;
                                            foreach ($barangs as $barang) : ?>
                                             <tr>
                                                 <th> <?= $i++; ?></th>
                                                 <td><?= $barang['kode_barang']; ?></td>
                                                 <td><?= $barang['nama_barang']; ?></td>
                                                 <td><?= $barang['harga_asli']; ?></td>
                                                 <td><?= $barang['harga_grosir']; ?></td>
                                                 <td><?= $barang['harga_biasa']; ?></td>
                                                 <td><?= $barang['keterangan']; ?></td>
                                             </tr>
                                         <?php endforeach; ?>
                                     </tbody>
                                 </table>

                                 <?= $this->paginitaion->create_links(); ?>
                             </div>

                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
 </div>