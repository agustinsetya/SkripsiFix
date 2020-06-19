<div class="right_col" role="main">
  <div class="row">
    <div class=" col-xs-12">
      <div class="x_panel">
        <div class="x_title">
          <h3>Edit Profile</h3>
          <div class="clearfix"></div>
        </div><br>
        
        <?php if ($this->session->flashdata('success')) {?>
          <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $this->session->flashdata('success'); ?>
          </div>
        <?php  } elseif($this->session->flashdata('hapus')) {?>
          <!-- validation message to display after form is submitted -->
          <div class="alert alert-danger alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $this->session->flashdata('hapus'); ?> 
          </div>
        <?php } elseif($this->session->flashdata('error')) {?>
          <!-- validation message to display after form is submitted -->
          <div class="alert alert-danger alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $this->session->flashdata('error'); ?> 
          </div>
        <?php } ?>

        <?php foreach($user as $key) {?>
          <?=form_open_multipart('Users/updateProfile/'.$this->session->userdata('id_users'))?>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Username </label>
            <div class="col-sm-3">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="username" class="form-control" placeholder="Username" value="<?php echo $key->username ?>" >
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Nama </label>
            <div class="col-sm-3">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="nama" class="form-control" placeholder="Nama" value="<?php echo $key->nama ?>" >
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Alamat </label>
            <div class="col-sm-3">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="alamat" class="form-control" placeholder="Alamat Rumah" value="<?php echo $key->alamat ?>" >
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Nomor Telepon </label>
            <div class="col-sm-3">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="noWa" class="form-control" placeholder="Nomor Telepon" value="<?php echo $key->noWa ?>" >
            </div>
          </div>
          <div class="page-header">
            <input type="submit" class="btn btn-success" value="EDIT">
            <a href="<?php echo base_url()?>Users"><button type="button" class="btn btn-danger">KEMBALI</button></a>
            <a class="btn btn btn-warning" data-toggle="modal" data-target="#modal_edit<?=$this->session->userdata('id_users');?>">Ubah Password</a>
          </div>
          <?php echo form_close(); ?>
        <?php } ?>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</div>