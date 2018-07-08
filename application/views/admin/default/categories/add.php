<div class="row">
	<div class="col-md-12">
		 <!-- general form elements -->
        <div class="box box-primary">
            <div class="box-header">
                <h3 class="box-title">Kategori</h3>
            </div><!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="<?php echo site_url('admin/categories/add')?>" method="post">
                <div class="box-body">
                    <?php echo message_box(validation_errors(),'danger'); ?>
                    <div class="form-group">
                        <label for="category_name">Nama Kategori</label>
                        <input type="text" name="name" class="form-control" id="category_name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label for="category_status">Status</label>
                        <?php
                            echo form_dropdown('status',$category_status,null,array('class' => 'form-control'));
                        ?>
                    </div>
                </div><!-- /.box-body -->

                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Buat Kategori</button> 
                    <button type="button" class="btn btn-default" onclick="javascript:history.back()">Kembali</button>
                </div>
            </form>
        </div><!-- /.box -->
	</div>
</div>