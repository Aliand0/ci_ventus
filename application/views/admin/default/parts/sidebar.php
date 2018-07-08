
<!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<?php echo $base_assets_url;?>img/avatar5.png" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p><?php echo $current_user['first_name']?></p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <!-- <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form> -->
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a href="<?php echo site_url('admin')?>">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="treeview <?php echo ($parent_menu == 'post')? 'active' : '' ?>">
                            <a href="#">
                                <i class="fa fa-edit"></i> <span>Buat Event</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu" <?php echo ($parent_menu == 'post')? 'style="display:block"' : 'style="display:none"' ?>>
                                <li><a href="<?php echo site_url('admin/posts/add')?>"><i class="fa fa-angle-double-right"></i> Buat Baru</a></li>
                                <li><a href="<?php echo site_url('admin/posts/')?>"><i class="fa fa-angle-double-right"></i> Semua Event</a></li>
                                <?php if(in_array('admin',$current_groups)):?>
                                    <li><a href="<?php echo site_url('admin/categories')?>"><i class="fa fa-angle-double-right"></i> Kategori</a></li>
                                <?php endif;?>
                            </ul>
                        </li>
                        <?php if(in_array('admin',$current_groups)):?>
                            <li class="active">
                                <a href="<?php echo site_url('admin/pages')?>">
                                    <i class="fa fa-file"></i> <span>Buat Halaman</span>
                                </a>
                            </li>
                            <li class="active">
                                <a href="<?php echo site_url('admin/menus')?>">
                                    <i class="fa fa-tasks"></i> <span>Menu</span>
                                </a>
                            </li>
                            <li class="treeview <?php echo ($parent_menu == 'user')? 'active' : '' ?>">
                                <a href="#">
                                    <i class="fa fa-users"></i> <span>Pengguna</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu" <?php echo ($parent_menu == 'user')? 'style="display:block"' : 'style="display:none"' ?>>
                                    <li><a href="<?php echo site_url('admin/users/')?>"><i class="fa fa-angle-double-right"></i> Daftar Pengguna</a></li>
                                    <li><a href="<?php echo site_url('admin/groups')?>"><i class="fa fa-angle-double-right"></i> Grup</a></li>
                                </ul>
                            </li>
                            <li class="active">
                                <a href="<?php echo site_url('admin/settings')?>">
                                    <i class="fa fa-gear"></i> <span>Pengaturan</span>
                                </a>
                            </li>
                        <?php endif;?>
                    </ul>
                </section>
                <!-- /.sidebar -->