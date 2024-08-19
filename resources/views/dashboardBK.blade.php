@extends('layouts.master')

@section('content')
    <div class="page-heading">
        {{-- <h3>Profile Statistics</h3> --}}
    </div>
    <div class="page-content">
        <section class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon purple">
                                            <i class="iconly-boldShow"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Answered Questions</h6>
                                        <h6 class="font-extrabold mb-0">{{ $answered }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon green">
                                            <i class="iconly-boldBookmark"></i>

                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Current Session</h6>
                                        <h6 class="font-extrabold mb-0">{{ $sesion }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon blue">
                                            <i class="iconly-boldAdd-User"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Total Users</h6>
                                        <h6 class="font-extrabold mb-0">{{ $users }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon red">
                                            <i class="iconly-boldCall-Silent"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Unanswered Questions</h6>
                                        <h6 class="font-extrabold mb-0"> {{ $unanswered }} </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <div class="card">
                            <div class="card-header">
                                <h4>Qs. Responses gainst Parliamentary Session</h4>
                            </div>
                            <div class="card-body">
                                <canvas id="questionsChat1" style="height: 153px; display: block; width: 306px;" width="306"
                                    height="173" class="chartjs-render-monitor"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="card">
                            <div class="card-header">
                                <h4>Session and All Questions</h4>
                            </div>
                            <div class="card-body">
                                <canvas id="questionsChat2" style="height: 153px; display: block; width: 306px;" width="306"
                                    height="173" class="chartjs-render-monitor"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

    </div>
    </div>
    </section>
    </div>


@endsection

@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <script>
        var sesion_numbers = <?php echo $sesion_numbers; ?>;
        var saq = <?php echo $saq; ?>;
        var suq = <?php echo $suq; ?>;
        var stq = <?php echo $stq; ?>;

        var questionChart1Data = {
            labels: sesion_numbers,
            datasets: [{
                    label: "Answered Questions",
                    data: saq,
                    backgroundColor: '#87e59d',
                    borderColor: "#fff",
                    borderWidth: 1
                },
                {
                    label: "Unanswered Questions",
                    data: suq,
                    backgroundColor: '#e07d6d',
                    borderColor: "#fff",
                    borderWidth: 1
                }
            ]
        }
        var questionChart2Data = {
            labels: sesion_numbers,
            datasets: [{
                label: "",
                backgroundColor: ['#3971C9', '#50AA33', '#22232D', '#AC2323', '#B36B21'],
                data: stq
            }]
        }

        window.onload = function() {
            var questionsChart1 = document.getElementById("questionsChat1").getContext("2d");
            var questionsChart2 = document.getElementById("questionsChat2").getContext("2d");

            window.myBar = new Chart(questionsChart1, {
                type: 'bar',
                data: questionChart1Data,
                options: {
                    elements: {
                        rectangle: {
                            borderWidth: 1,
                            borderColor: '#fff',
                            borderSkipped: 'bottom'
                        }
                    },
                    responsive: true,
                    title: {
                        display: true,
                        text: 'Green: Answered, Red: Unanswered'
                    },
                    legend: {
                        display: false
                    },
                }
            });

            window.myBar = new Chart(questionsChart2, {
                type: 'pie',
                data: questionChart2Data,
                options: {
                    elements: {
                        rectangle: {
                            borderWidth: 1,
                            borderColor: '#fff',
                            borderSkipped: 'bottom'
                        }
                    },
                    responsive: true,
                    title: {
                        display: true,
                        text: 'Session and total number of questions'
                    },
                }
            });
        }
    </script>

@endsection
