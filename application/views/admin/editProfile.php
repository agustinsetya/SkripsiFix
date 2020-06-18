<div class="right_col" role="main">
  <div class="row">
    <div class=" col-xs-12">
      <div class="x_panel">
        <div class="x_title">
          <h3>Edit Profile</h3>
          <div class="clearfix"></div>
        </div><br>
        <?php foreach($user as $key) {?>
          <?=form_open_multipart('Users/updateProfile/'.$this->session->userdata('id_users'))?>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Username </label>
            <div class="col-sm-8">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="username" class="form-control" placeholder="Username" value="<?php echo $this->session->userdata('email'); ?>" >
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Nama </label>
            <div class="col-sm-8">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="nama" class="form-control" placeholder="Nama" value="<?php echo $this->session->userdata('nama'); ?>" >
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Alamat </label>
            <div class="col-sm-8">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="alamat" class="form-control" placeholder="Alamat Rumah" value="<?php echo $this->session->userdata('alamat'); ?>" >
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Nomor Telepon </label>
            <div class="col-sm-8">
              <input type="hidden" name="id_users" value="<?php echo $this->session->userdata('id_users'); ?>">
              <input type="text" name="noWa" class="form-control" placeholder="Nomor Telepon" value="<?php echo $this->session->userdata('noWa'); ?>" >
            </div>
          </div>
          <div class="page-header">
            <input type="submit" class="btn btn-success" value="EDIT">&nbsp;&nbsp;
            <a href="<?php echo base_url()?>Penyakit/DataPenyakit"><button type="button" class="btn btn-danger">KEMBALI</button></a>
          </div>
          <?php echo form_close(); ?>
        <?php } ?>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</div>