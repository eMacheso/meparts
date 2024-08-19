
@extends('layouts.master')
   @section('content')
       <div class="container">
           

           <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<body>
<h3>ORT Issues by Directorate</h3>
<div>
<canvas id="ortChart" style="width:100%;max-width:100%"></canvas><div>
<script>

var dir_arr = <?php echo $dir_arr; ?>;

        var orti_all = <?php echo $orti_all; ?>;
       var ortid = <?php echo $ortid; ?>;
        var ortind = <?php echo $ortind; ?>;
        var ortip = <?php echo $ortip; ?>;

new Chart("ortChart", {
  type: "bar",
  data: {
    labels: dir_arr,
    datasets: [
    { label: "Done",
      data: ortid,
      backgroundColor: "green",
      borderColor: '#57617B',
      fill: true
    },
    { label: "Pending",
      data: ortip,
      backgroundColor: "orange",
      borderColor: '#57617B',
      fill: true
    },{
      label: "Not Done", 
      data: ortind,
      backgroundColor: "red",
                    borderColor: "#fff",
                    borderWidth: 1,
      fill: true
    }]
  },
  options: {
    legend: {display: true},

    scales: {
            y: {
                suggestedMin: 1,
                suggestedMax: 20,
                stacked: true
            },
            x: {
        stacked: true,
      }
        }

        
  }

 
});
</script>
</div>

</br></br>
<h3>Project Issues by Directorate</h3>
<div>
<canvas id="ProjectChart" style="width:100%;max-width:100%"></canvas><div>
<script>

var dir_arrp = <?php echo $dir_arr; ?>;

        var projecti_all = <?php echo $projecti_all; ?>;
       var projectid = <?php echo $projectid; ?>;
        var projectind = <?php echo $projectind; ?>;
        var projectip = <?php echo $projectip; ?>;

new Chart("ProjectChart", {
  type: "bar",
  data: {
    labels: dir_arrp,
    datasets: [
    { label: "Done",
      data: projectid,
      backgroundColor: "green",
      borderColor: '#57617B',
      fill: true
    },
    { label: "Pending",
      data: projectip,
      backgroundColor: "orange",
      borderColor: '#57617B',
      fill: true
    },{
      label: "Not Done", 
      data: projectind,
      backgroundColor: "red",
                    borderColor: "#fff",
                    borderWidth: 1,
      fill: true
    }]
  },
  options: {
    legend: {display: true},

    scales: {
            y: {
                suggestedMin: 1,
                suggestedMax: 20,
                stacked: true
            },
            x: {
        stacked: true,
      }
        }

        
  }

 
});
</script>
</div>







   @endsection

   