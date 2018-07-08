<div class="row">
	<div class="col-md-12">
		<div class="box">
            <div class="box-header">
                <h3 class="box-title">Halaman</h3>
            </div><!-- /.box-header -->
            <div class="box-body">
            	<?php echo $this->session->flashdata('message');?>
            	<p><a class="btn btn-default" href="<?php echo site_url('admin/pages/add')?>">Buat Halaman</a></p>
                <table class="table table-bordered">
                    <tr>
                    
                        <th>Judul</th>
                        
                        <th>Published</th>
                        <th>Author</th>
                        <th>Status</th>
                        <th style="width: 100px">Action</th>
                    </tr>
                    <?php if(!empty($pages)):?>
                    	<?php foreach($pages as $page):?>
		                    <tr>
		                      
		                        <td><?php echo $page['title']?></td>
		                       
                                <td><?php echo $page['published_at']?></td>
                                <td><?php echo $page['username']?></td>
		                        <td><?php echo $post_status[$page['status']]?></td>
		                        <td>
		                        	<a href="<?php echo site_url('admin/pages/edit/'.$page['id'])?>"><span class="badge bg-green">edit</span></a>
		                        	<a href="<?php echo site_url('admin/pages/delete/'.$page['id'])?>" onclick="return confirm('Are you sure?')"><span class="badge bg-red">delete</span></a>
		                        </td>
		                    </tr>
                    	<?php endforeach;?>
                	<?php else:?>
                		<tr><td colspan="5">No record found</td></tr>
                	<?php endif;?>
                </table>
            </div><!-- /.box-body -->
            <div class="box-footer clearfix">
                <?php echo $pagination ?>
            </div>
        </div><!-- /.box -->
	</div>
</div>