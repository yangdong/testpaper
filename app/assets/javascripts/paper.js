$(document).ready(
    YD.TestPaper.addQuestionSet = function(questionSet) {
        $('.add_paper_part').click(function() {
            $('.part1').append($('<div>').html('question set'));
        })
    }
);