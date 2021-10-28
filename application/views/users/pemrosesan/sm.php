<!-- Main content -->
<div class="content-wrapper">
  <!-- Content area -->
  <div class="content">
    <?php
    echo $this->session->flashdata('msg');
    ?>
    <!-- Dashboard content -->
    <div class="row">
      <!-- Basic datatable -->
      <div class="panel panel-flat">
        <div class="panel-heading">
          <h3 class="panel-title"> Arsip Surat</h3>
          <h5>Berikut ini adalah surat-surat yang telah terbit dan diarsipkan. Klik ikon mata pada kolom aksi untuk menampilkan surat</h5>
          <hr style="margin:0px;">
          <div class="heading-elements">
            <ul class="icons-list">
              <li><a data-action="collapse"></a></li>
            </ul>
          </div>
        </div>
        <!-- Basic datatable -->

        <table class="table datatable-basic" width="100%">
          <thead>
            <tr>
              <th width="30px;">No.</th>
              <!-- <th>Nomor</th>
              <th>Tanggal</th> -->
              <th>No surat</th>
              <th>Kategori</th>
              <!-- <th>Pengirim</th> -->
              <th>Judul</th>
              <!--<th>Dibaca</th>-->
              <th>Waktu Pengiriman</th>
              <th>Aksi</th>
              
            </tr>
          </thead>
          <tbody>
            <?php
            $no = 1;
            foreach ($sm->result() as $baris) {
            ?>
              <tr>
                <td><?php echo $no . '.'; ?></td>
                <!-- <td><?php echo $baris->no_surat; ?></td>
                  <td><?php echo $baris->tgl_ns; ?></td> -->
                <td><?php echo $baris->no_asal; ?></td>
                <td><?php echo $baris->penerima; ?></td>
                <!-- <td><?php echo $baris->pengirim; ?></td> -->
                <td><?php echo $baris->perihal; ?></td>
                <td><?php echo $baris->tgl_no_asal; ?></td>
                <!--<td><?php
                    if ($baris->dibaca == 1) { ?>
                    <button type="button" class="btn btn-success"><i class="icon-checkmark4"></i></button>
                  <?php
                    } ?>
                </td>-->
                <!-- <td><?php
                          if ($baris->disposisi == 1) { ?>
                            <button type="button" class="btn btn-success"><i class="icon-checkmark4"></i></button>
                      <?php
                          } ?>
                  </td> -->
                <td>
                  <a href="users/sm/d/<?php echo $baris->id_sm; ?>" class="btn btn-default btn-xs"><i class="icon-eye"></i></a>

                  <?php
                  if ($user->row()->level == 'admin') { ?>
                    <a href="users/sm/e/<?php echo $baris->id_sm; ?>" class="btn btn-success btn-xs"><i class="icon-pencil7"></i></a>
                    <a href="users/sm/h/<?php echo $baris->id_sm;  ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda yakin ingin menghapus surat ini?')"><i class="icon-trash"></i></a>

                  <?php
                  } ?>
                </td>
              </tr>
            <?php
              $no++;
            } ?>
          </tbody>
        </table>
      </div>

      <?php
          if ($user->row()->level == 'admin') { ?>
            <br>
            <a href="users/sm/t" class="btn btn-primary"> Arsipkan Surat</a>
          <?php
          } ?>
    </div>
    <!-- /dashboard content -->