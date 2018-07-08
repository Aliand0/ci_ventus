
              <div class="widget default">
                <div class="widget-title">
<<<<<<< HEAD
        
              <h3> KATEGORI EVENT </h3>
=======
                  <h3> Daftar Event </h3>
                </div>
                <div class="list-group">
                  <?php if(!empty($this->general->getRecentPosts())):?>
                    <?php foreach ($this->general->getRecentPosts() as $post):?>
                      <div class="list-group-item">
                        <?php if(!empty($post['featured_image'])):?>
                        <div class="row-picture">
                            <img class="circle" src="<?php echo BASE_URI.$post['featured_image']?>" alt="icon">
                        </div>
                        <?php endif;?>
                        <div class="row-content">
                            <h4><a href="<?php echo site_url('read/'.$post['slug']) ?>"><?php echo $post['title'] ?></a></h4>
                        </div>
                      </div>
                      <div class="list-group-separator"></div>
                    <?php endforeach;?>
                  <?php endif;?>
                </div>
              </div>
>>>>>>> b0293191283f7ff9dbce5a9362254f146bc6ff9b
              <div class="widget">
                <div class="widget-title">
                 <h3>Kategori Event </h3> 
                </div>
                <div class="widget-content list-menus">
                  <ul>
                    <?php if(!empty($this->general->getCategories())):?>
                        <?php foreach($this->general->getCategories() as $category):?>
                          <li><a href="<?php echo site_url('category/'.$category['slug'])?>"><?php echo $category['name']?></a></li>
                        <?php endforeach;?>
                      <?php endif;?>
                  </ul>
                </div>
              </div>
          
              <div class="widget">
                <div class="widget-title">
                  <h3> Tags Event </h3>
                </div>
                <div class="widget-content list-menus">
                  <?php if(!empty($this->general->getTags())):?>
                    <?php foreach($this->general->getTags() as $tag):?>
                        <a class="tags" href="<?php echo site_url('tag/'.$tag['slug'])?>"><?php echo ucwords($tag['name'])?></a>
                    <?php endforeach;?>
                  <?php endif;?>
                </div>
              </div>