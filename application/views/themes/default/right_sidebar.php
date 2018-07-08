
              <div class="widget default">
                <div class="widget-title">
        
              <h3> KATEGORI EVENT </h3>
              <div class="widget">
                <div class="widget-title">
                  
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