<?php
$menu = "product"
?>



<?php include("header.php"); ?>

<?php
$query_member = "SELECT * FROM tb_pd" or die
("Error : ".mysqlierror($query_member));
$rs_member = mysqli_query($condb, $query_member);
//echo ($query_level);//test query
?>




<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function readURL(input) {
if (input.files && input.files[0]) {
var reader = new FileReader();
reader.onload = function (e) {
$('#blah').attr('src', e.target.result);
}
reader.readAsDataURL(input.files[0]);
}
}
</script>
<!-- Content Header (Page header) -->
<section class="content-header">
  <div class="container-fluid">
    <h1>Product</h1>
    </div><!-- /.container-fluid -->
  </section>
  <!-- Main content -->
  <section class="content">
    <div class="card card-dark">
      <div class="card-header ">
        <h3 class="card-title">รายการสินค้า</h3>
        <div align="right">
          
          
          
          <button type="button" class="btn btn-light" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i> เพิ่มข้อมูล</button>
          
        </div>
      </div>
      <br>
      <div class="card-body">
        <div class="row">
          
          <div class="col-md-12">
            <table id="example1" class="table table-bordered  table-hover table-striped">
              <thead>
                <tr class="danger">
                  <th width="5%"><center>No.</center></th>
                  <th width="10%">ID</th>
                  <th width="10%">Img</th>
                  <th width="15%">Name</th>
                  <th width="20%">Detail</th>
                  <th width="10%">Price</th>
                  <th width="10%">Edit</th>
                  <th width="10%">Del</th>
                  
                </tr>
              </thead>
              <tbody>
                <?php foreach ($rs_member as $row_member) { ?>
                <tr>
                  <td><?php echo $l=$l+1; ?></td>
                  <td><?php echo $row_member['pd_id']; ?></td>
                  <td><img src="../images/<?php echo $row_member['pd_img']; ?>" width="100%"></td>
                  <td><?php echo $row_member['pd_name']; ?></td>
                  <td><?php echo $row_member['pd_detail']; ?></td>
                  <td><?php echo $row_member['pd_price']; ?></td>
                  <td>
                    <center>
                      <a href="product_edit.php?pd_id=<?php echo $row_member['pd_id']; ?>" class="btn btn-warning"><i class="fas fa-pencil-alt"></i><br>edit</a>
                    </center>
                    <!-- <a href="level.php?ace=edit&l_id=<?php echo $row_level['l_id'];?>" class="btn btn-warning btn-xs"> edit</a> -->
                  </td>
                  <!-- <td><a href="product_db.php?pd_name=<?php echo $row_member['pd_name'];?>&&product=del" class="del-btn btn btn-danger" onclick="return confirm('ต้องการลบข้อมูลใช่หรือไม่')"><i class="fas fas fa-trash"></i> del</a></td> -->
                  <td>
                  <center>
                    <a href="product_db.php?product=del&&pd_id=<?php echo $row_member['pd_id']; ?>" class="del-btn btn btn-danger" onclick="return confirm('ยืนยันการลบข้อมูล')"><i class="fas fas fa-trash"></i><br>del</a>
                    </center>
                  </td>
                  
                </tr>
                <?php }?>
              </tbody>
            </table>
            
            
            
          </div>
          
        </div>
      </div>
      <div class="card-footer">
        
      </div>
      
    </div>
    
    
    
    
  </section>
  <!-- /.content -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <form action="product_db.php" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="product" value="add">
        <div class="modal-content">
          <div class="modal-header bg-dark">
            <h5 class="modal-title" id="exampleModalLabel">เพิ่มข้อมูล</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="form-group row">
              <label for="" class="col-sm-2 col-form-label">ระดับการใช้งาน </label>
              <!-- <div class="col-sm-10">
                <select class="form-control select2" name="ref_l_id" id="ref_l_id" required>
                  <option value="">-- เลือกประเภท --</option>
                  
                  <option value="1">1</option>
                  <option value="2">2</option>
                  
                </select>
                
              </div> -->
            </div>
            
            <div class="form-group row">
              <label for="" class="col-sm-2 col-form-label">ID </label>
              <div class="col-sm-10">
                <input type="text" name="pd_id" class="form-control" id="pd_id" placeholder="" value="<?php echo $row['pd_id']; ?>">
              </div>
            </div>
            
          </span>
          <div class="form-group row">
            <label for="" class="col-sm-2 col-form-label">name </label>
            <div class="col-sm-10">
              <input type="text" name="pd_name" class="form-control" id="pd_name" placeholder="" value="<?php echo $row['pd_name']; ?>">
            </div>
          </div>
          <div class="form-group row">
            <label for="" class="col-sm-2 col-form-label">detial </label>
            <div class="col-sm-10">
            <input type="text" name="pd_detail" class="form-control" id="pd_detail" placeholder="" value="<?php echo $row['pd_detail']; ?>">
            </div>
          </div>
          <div class="form-group row">
            <label for="" class="col-sm-2 col-form-label">price </label>
            <div class="col-sm-10">
              <input type="text" name="pd_price" class="form-control" id="pd_price" placeholder="" value="<?php echo $row['pd_price']; ?>">
            </div>
          </div>
          <div class="form-group row">
            <label for="" class="col-sm-2 col-form-label">img</label>
            <div class="col-sm-10">
              
              
              
              
              เลือกไฟล์ใหม่<br>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="pd_img" name="pd_img" onchange="readURL(this);" >
                <label class="custom-file-label" for="file">Choose file</label>
              </div>
              <br><br>
              <img id="blah" src="#" alt="your image" width="300" />
            </div>
          </div>
          
          
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">ปิด</button>
          <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> ยืนยัน</button>
        </div>
      </div>
    </form>
  </div>
</div>

<?php include('footer1.php'); ?>
<script>
$(function () {
$(".datatable").DataTable();
// $('#example2').DataTable({
//   "paging": true,
//   "lengthChange": false,
//   "searching": false,
//   "ordering": true,
//   "info": true,
//   "autoWidth": false,
// http://fordev22.com/
// });
});
</script>

</body>
</html>
<!-- http://fordev22.com/ -->