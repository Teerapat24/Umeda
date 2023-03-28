</div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2021 POS System<a href="">Namsae</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->

<script src="../assets/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/bootstrap.bundle.min.js"></script>

<!-- Select2 -->
<script src="../assets/select2.full.min.js"></script>
<!-- DataTables -->
<script src="../assets/jquery.dataTables.js"></script>
<script src="../assets/dataTables.bootstrap4.js"></script>
<script src="../assets/tagsinput.js?v=1"></script>

<script src="../assets/sweetalert2@9.js"></script>

<script src="../assets/adminlte.min.js"></script>

<!-- AdminLTE App -->
<script src="../assets/demo.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="assets/dist/js/demo.js"></script> -->
<!-- http://fordev22.com/ -->


<script>
  $(document).ready(function () {
    //$('.sidebar-menu').tree();
    //$('.select2').select2();
    //Initialize Select2 Elements
    $('.select2').select2({
      theme: 'bootstrap4'
    })
  })
</script>

<script>
$(function() {

    // cb(start, end);
    // $('#createContactModal').modal('show')
    $('#example1').DataTable({
        "order": [
            [0, "desc"]
        ],
        "lengthMenu": [
            [10 ,25, 50, -1],
            [10 ,25, 50, "All"]
        ],

    });

    

});
</script>

<?php if(isset($_GET['product_error'])){ ?>
<script>
  Swal.fire({
  title: 'error',
  text: 'ข้อมูล Product ซ้ำ',
  icon: 'error',
  confirmButtonText: 'ตกลง'
})
</script>
<?php } ?>


<?php if(isset($_GET['product_add'])){ ?>
<script>
  Swal.fire({
  title: 'สำเร็จ',
  text: 'บันทึกข้อมูลสำเร็จ',
  icon: 'success',
  confirmButtonText: 'ตกลง'
})
</script>
<?php } ?>

<!-- http://fordev22.com/ -->

<?php if(isset($_GET['product_edit'])){ ?>
<script>
  Swal.fire({
  title: 'สำเร็จ',
  text: 'แก้ไขข้อมูลสำเร็จ',
  icon: 'success',
  confirmButtonText: 'ตกลง'
})
</script>
<?php } ?>

<?php if(isset($_GET['product_edit_error'])){ ?>
<script>
  Swal.fire({
  title: 'error',
  text: 'แก้ไขข้อมูลสำเร็จ',
  icon: 'error',
  confirmButtonText: 'ตกลง'
})
</script>
<?php } ?>

<?php if(isset($_GET['product_del'])){ ?>
<script>
  Swal.fire({
  title: 'สำเร็จ',
  text: 'ลบข้อมูลสำเร็จ',
  icon: 'success',
  confirmButtonText: 'ตกลง'
})
</script>
<?php } ?>

<?php if(isset($_GET['product_del_error'])){ ?>
<script>
  Swal.fire({
  title: 'error',
  text: 'ลบข้อมูลไม่สำเร็จ',
  icon: 'error',
  confirmButtonText: 'ตกลง'
})
</script>
<?php } ?>