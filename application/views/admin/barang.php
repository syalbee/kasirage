
 

        <div class="container mt-5 mb-5">
            <div class="card">
                <div class="card-header">
                    <h4> SQL Query With Join (CSRF)</h4>
                </div>

                <div class="card-body">
                    <table class="table table-striped table-bordered" id="table-artikel-csrf">
                        <thead>
                            <tr>
                                <th> No. </th>
                                <th> Kategori </th>
                                <th> Sub Kategori </th>
                                <th> Aksi </th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
        <hr/>
            <center>
                Dibuat dengan <i class="fa fa-heart" style="color:red;"></i> Oleh 
                <a href="https://www.codekop.com/" target="_blank">Codekop</a> © <?= date('Y');?>
            </center>
        <br/>

        <!-- DATATABLES BS 4-->
        <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.7/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.7/js/responsive.bootstrap4.min.js"></script>
        <!-- Datatable config -->
        <script>
            var tabel = null;
            var token = "<?php echo $this->security->get_csrf_hash();?>";
            $(document).ready(function() {
                tabel = $('#table-artikel-csrf').DataTable({
                    "processing": true,
                    "responsive":true,
                    "serverSide": true,
                    "ordering": true, // Set true agar bisa di sorting
                    "order": [[ 0, 'asc' ]], // Default sortingnya berdasarkan kolom / field ke 0 (paling pertama)
                    "ajax":
                    {
                        "url": "http://127.0.0.1/datatable/datatables/view_data_query_csrf", // URL file untuk proses select datanya
                        "type": "POST",
                        // csrf datatable
                        "data": function ( d ) {
                            d.<?php echo $this->security->get_csrf_token_name();?> = token;
                        }
                    },
                    "deferRender": true,
                    "aLengthMenu": [[5, 10, 50],[ 5, 10, 50]], // Combobox Limit
                    "columns": [
                        {"data": 'id_kategori',"sortable": false, 
                            render: function (data, type, row, meta) {
                                return meta.row + meta.settings._iDisplayStart + 1;
                            }  
                        },
                        { "data": "nama_kategori" },  // Tampilkan kategori
                        { "data": "subkat" },  // Tampilkan nama sub kategori
                        { "data": "id_kategori",
                        "render": 
                        function( data, type, row, meta ) {
                            return '<a href="show/'+data+'">Show</a>';
                        }
                        },
                    ],
                });
                // csrf datatable
                table.on('xhr.dt', function ( e, settings, json, xhr ) {
                    token = json.<?=$this->security->get_csrf_token_name();?>;
                } );
            });
        </script>
    </body>
</html>
