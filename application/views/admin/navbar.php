<div class="col-md-3 left_col">
  <div class="left_col scroll-view">
    <div class="navbar nav_title" style="border: 0;">
      <a href="<?php echo base_url()?>Home" class="site_title"><i class="fa fa-female"></i> <span>Women's Solution</span></a>
    </div>
    <div class="clearfix"></div>
    <!-- menu profile quick info -->
    <div class="profile clearfix">
      <div class="profile_pic">
        <img src="<?php echo base_url('Gambar/admin.png') ?>" class="img-circle profile_img">
      </div>
      <div class="profile_info">
        <span>Welcome,</span>
        <h2><?php echo $this->session->userdata("nama");?></h2>
      </div>
    </div><br/>
    <!-- /menu profile quick info -->

    <!-- sidebar menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
      <div class="menu_section">
        <ul class="nav side-menu">
          <li><a href="<?php echo base_url();?>Home"><i class="fa fa-home"></i> Home</a>
          <li><a href="<?php echo base_url();?>Users"><i class="fa fa-user-md"></i> User</a>
          <li><a href="<?php echo base_url();?>Gejala"><i class="fa fa-wpforms"></i> Data Gejala </a></li>
          <li><a><i class="fa fa-desktop"></i> Penyakit <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="<?php echo base_url();?>Penyakit">Data Penyakit</a></li>
              <li><a href="<?php echo base_url();?>BasisKasus">Data Basis Kasus</a></li>
            </ul>
          </li>
          <li><a href="<?php echo base_url();?>Pemeriksaan"><i class="fa fa-stethoscope"></i> Data Hasil Pemeriksaan </a></li>
          <li><a href="<?php echo base_url();?>Home/DataKomentar"><i class="fa fa-comments-o"></i> Kritik & Saran </a></li>
        </ul>
      </div>
    </div>
  </div>
</div>