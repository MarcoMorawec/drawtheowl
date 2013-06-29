$(document).ready(function(){
	var template = $('#adviceTemplate').html();
	var data_index = 0;
	var offset = 0;
	var renderAdvice = function(){
		if(sentences.length == 0){
			template = $('#noadviceTemplate').html();
			var content = Mustache.render(template, data);
            $('#adviceBox').html(content);
		}
		else{
			var data = sentences[data_index];
		    var content = Mustache.render(template, data);
	    	$('#adviceBox').html(content);
		}
	};
	renderAdvice();
	$('#next_advice').click(function(e){
		e.preventDefault();
        data_index += 1;
        console.log('data-index='+data_index);
        if(sentences.length-1 < data_index){
        	console.log('resetting dataindex');
        	offset+= sentences.length;
        	$.get('/sentence.json', {offset:offset})
        		.done(
        			function(resp){
        				console.log('success');
					  	console.log(resp);
					  	sentences = resp;
					  	data_index=0;
                        
					  	renderAdvice();
        		});
        }
        else{
    		renderAdvice();    	
        }
    
	});
	
});

// word-wrap: break-word;
// height:595