<!-- Datatable config -->
<script>
    var tabel = null;
    var token = "<?php echo $this->security->get_csrf_hash(); ?>";

    $(document).ready(function() {
        tabel = $('#example2').DataTable({
            "processing": true,
            "responsive": true,
            "serverSide": true,
            "ordering": true, // Set true agar bisa di sorting
            "order": [
                [0, 'asc']
            ], // Default sortingnya berdasarkan kolom / field ke 0 (paling pertama)
            "ajax": {
                "url": "http://127.0.0.1/datatable/datatables/view_data_query_csrf", // URL file untuk proses select datanya
                "type": "POST",
                // csrf datatable
                "data": function(d) {
                    d.<?php echo $this->security->get_csrf_token_name(); ?> = token;
                }
            },
            "deferRender": true,
            "aLengthMenu": [
                [5, 10, 50],
                [5, 10, 50]
            ], // Combobox Limit
            "columns": [{
                    "data": 'id_kategori',
                    "sortable": false,
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    "data": "nama_kategori"
                }, // Tampilkan kategori
                {
                    "data": "subkat"
                }, // Tampilkan nama sub kategori
                {
                    "data": "id_kategori",
                    "render": function(data, type, row, meta) {
                        return '<a href="show/' + data + '">Show</a>';
                    }
                },
            ],
        });
        // csrf datatable
        table.on('xhr.dt', function(e, settings, json, xhr) {
            token = json.<?= $this->security->get_csrf_token_name(); ?>;
        });
    });
</script>