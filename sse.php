<?php
date_default_timezone_set("Asia/Kolkata");
header("Cache-Control: no-cache");
header("Content-Type: text/event-stream");
$emails = fopen("test.txt", "r") or die("Unable to open file!");

$counter = rand(1, 10);
while (true) {
    // $free = shell_exec('free');
    // $free = (string)trim($free);
    // $free_arr = explode("\n", $free);
    // $mem = explode(" ", $free_arr[1]);
    // $mem = array_filter($mem);
    // $mem = array_merge($mem);
    // $memory_usage = $mem[2] / $mem[1] * 100;
    // Every second, send a "ping" event.
    $email = fgets($emails);

    echo "event: ping\n";
    $curDate = date(DATE_ISO8601);
    echo 'data: {"time": "' . $email . '","time": "' . $memory_usage . '"}';
    // echo 'data: {"time": "' . fread($myfile, filesize("test.txt")) . '","time": "' . $memory_usage . '"}';
    echo "\n\n";
    // fclose($myfile);

    // Send a simple message at random intervals.

    $counter--;

    if (!$counter) {
        echo 'data: {"time": "' . $curDate . '"}';
        echo "\n\n";
        $counter = rand(1, 10);
    }

    ob_end_flush();
    flush();

    // Break the loop if the client aborted the connection (closed the page)

    if (connection_aborted()) break;

    sleep(1);
}

// $emails = fopen(__DIR__ . '/big_file.txt', 'r');

// // You can use an infinite loop to keep going until you say stop.
// while (1) {
//     // This is where you get the next email.

//     // If it is blank, the stream returns false, so you can break.
//     if (!$email) {
//         break;
//     }
//     // This is where you can do something with the address.
//     echo $email;
// }

// Here you close the stream. PHP will do this anyway, but it's good practice.
fclose($emails);
