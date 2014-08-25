<?php

$article = <<<EOD
<article>
    <table>
        <tbody>
            <tr>
                <td class="imgHolder">
                    <img src="images/off.png" alt="off" class="topicImage"/>
                </td>
                <td class="topicDescription">
                    <table class="topicTable">
                        <tbody>
                            <tr><td>General Discussion</td></tr>
                            <tr><td>Feel free to talk about anything and everything in this board.</td></tr>
                        </tbody>
                    </table>
                </td>

                <td class="topicStats">
                     <table class="statsTable">
                        <tbody>
EOD;

$myTrOne = "<tr><td>" . rand(0, 35) . " answers</td></tr>";
$myTrTwo = "<tr><td>" . rand(35,305) . " votes</td></tr>";

$articleEndPart =  <<<EOD
                        </tbody>
                    </table>
                </td>

                <td class="topicLastPost">
                    <table class="lastPostTable">
                        <tbody>
                            <tr><td><b>Pesho</b> in <span>Lorem Ipsum</span></td></tr>
                            <tr><td>October 15, 2010, 07:34:09 AM</td></tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</article>
EOD;

echo $article . $myTrOne . $myTrTwo . $articleEndPart;

