<!-- Main Sidebar Container -->
<!-- http://fordev22.com/ -->
<aside class="main-sidebar sidebar-dark-red elevation-10">
    <!-- Brand Logo -->
    <!-- <a href="" class="brand-link bg-gray">
      <img src="../assets/img/FD22.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">FD22 | POS System</span>
    </a> -->


    <a href="" class="brand-link bg-red">
      <!-- <img src="../assets/img/ffd2222.png"
           alt="AdminLTE Logo"
           class="brand-image"
          > -->
      <center>
      <span class="brand-text font-weight-light">NAMSAE</span>
      </center>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
           <img src="../images/<?php echo $_SESSION['mem_img'];?>" class="img-circle elevation-2" alt="User Image"> 
          <!-- <img src="../assets/img/FD22.png" class="img-circle elevation-2" alt="User Image"> -->
        </div>
        <div class="info">
          <a href="edit_profile.php" target="" class="d-block"> <?php echo $_SESSION['mem_name'];?> | Edit Profile</a>
        </div>
      </div>



        <!-- Sidebar Menu -->
      <nav class="mt-2">
        <!-- nav-compact -->
        <ul class="nav nav-pills nav-sidebar nav-child-indent flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-header">เมนูสำหรับการขาย</li>

         <li class="nav-item">
            <a href="product.php" class="nav-link <?php if($menu=="product"){echo "active";} ?> ">
              <i class="nav-icon fas fa-clipboard-list"></i>
              <p>รายการสินค้า</p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="index.php" class="nav-link <?php if($menu=="index"){echo "active";} ?> ">
              <i class="nav-icon fas fa-clipboard-list"></i>
              <p>รายการขาย </p>
            </a>
          </li>


          <li class="nav-item">
            <a href="index2.php" class="nav-link <?php if($menu=="sale"){echo "active";} ?> ">
              <i class="nav-icon fa fa-shopping-cart "></i>
              <p>ขายสินค้า </p>
            </a>
          </li>
        </ul>
        <hr>
        <ul class="nav nav-pills nav-sidebar nav-child-indent flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-header">ตั้งค่าข้อมูลระบบ</li>
          
          <li class="nav-item">
            <a href="list_mem.php" class="nav-link <?php if($menu=="member"){echo "active";} ?> ">
              <i class="nav-icon fa fa-users"></i>
              <p>Member </p>
            </a>
          </li>


          <li class="nav-item">
            <a href="" class="nav-link <?php if($menu=="type"){echo "active";} ?> ">
              <i class="nav-icon fa fa-copy"></i>
              <p>Type </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="" class="nav-link <?php if($menu=="brand"){echo "active";} ?> ">
              <i class="nav-icon fa fa-box"></i>
              <p>Brand </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="" class="nav-link <?php if($menu=="produc"){echo "active";} ?> ">
              <i class="nav-icon fa fa-box-open"></i>
              <p>Product </p>
            </a>
          </li>




        </ul>
        <hr>


<ul class="nav nav-pills nav-sidebar nav-child-indent flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <li class="nav-item">
            <a href="../logout.php" class="nav-link text-danger">
              <i class="nav-icon fas fa-power-off"></i>
              <p>ออกจากระบบ</p>
            </a>
          </li>
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
      <!-- http://fordev22.com/ -->
    </div>
    <!-- /.sidebar -->
  </aside>