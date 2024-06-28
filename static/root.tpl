<html>

<head>
  <title>Active Job Dashboard</title>
  <script src="https://code.jquery.com/jquery-3.2.0.min.js"
    integrity="sha256-JAW99MJVpJBGcbzEuXk4Az05s/XyDdBomFqNlM3ic+I=" crossorigin="anonymous"></script>
  <script type="text/javascript" src="tablesorter/jquery.tablesorter.min.js"></script>
  <link rel="icon" href="./static/favicon.ico" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="./tablesorter/style.css">

  <script>
    function submit(reset) {
      var sorting = $("#job_info_table").data().tablesorter.sortList
      $("#sorting").val(JSON.stringify(sorting))
      $('#reset').val(reset)
      $('#action_form').submit()
    }
    function refresh() { submit(false) }
    function reset() { submit(true) }
    $(document).ready(function () {
      var table = $("#job_info_table")
      var sorting = $("#sorting").val()
      table.tablesorter({ sortList: JSON.parse(sorting) })
    });
  </script>

</head>

<body>
  <div class='container mt-3'>
    <h1 class="text-primary">Work Active Jobs on Galatea</h1>

    <div class='container'>
      <h4 class="mt-3">Elapsed time: {{elapsed_time}} seconds</h4>

      <span id='actions' class="mt-3 mb-3">

        <form id='action_form' action='/' method='POST'>
          <input type='hidden' id='sorting' name='sorting' value='{{sorting}}' />
          <input type='hidden' id='reset' name='reset' value='false' />
        </form>

        <div class="d-grid gap-2 d-md-block">
          <button class="btn btn-primary" type='submit' onclick='refresh()'>Refresh</button>
          <button class="btn btn-warning" type='submit' onclick='reset()'>Reset</button>
        </div>

      </span>

      <table width="750px" id="job_info_table" class="tablesorter mt-3">

        <thead>
          % include('./static/row', values=headers, header=True)
        </thead>

        <tbody>
          % for row in rows:
          % include('./static/row', values=row, header=False)
          % end
        </tbody>

      </table>
    </div>
  </div>

</body>

</html>