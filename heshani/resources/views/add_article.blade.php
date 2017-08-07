<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Riverview Test</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">        
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <center><h1>Riverview</h1></center>
        </div>

        <div class="container">

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <h3>Add New Article</h3>

                    @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif

                    <form id="add_article_form" name="add_article_form">                  
                        <div class="form-group">
                            <label for="title">Title:</label>
                            <input type="text" class="form-control" id="title" name="title">
                        </div>
                        <div class="form-group">
                            <label for="author_id">Author:</label>
                            <select class="form-control" name="author_id" id="author_id">
                                <option value="">Select Author</option>
                                @foreach($authors as $author)
                                <option value="{{ $author->id }}">{{ $author->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="url">URL:</label>
                            <input type="text" class="form-control" id="url" name="url">
                        </div>
                        <div class="form-group">
                            <label for="content">Content:</label>
                            <textarea id="content" name="content" class="form-control"></textarea>
                        </div>

                        <div class="pull-right">
                            <button type="submit" class="btn btn-info">Submit</button>
                            <button type="button" class="btn btn-danger">Cancel</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-2"></div>
            </div>

        </div>        

    </body>
</html>

<script type="text/javascript">

$(document).ready(function () {

    $("#add_article_form").validate({
        rules: {
            name: {required: true}
        },
        submitHandler: function (form) {
            $.ajax({
                type: "POST",
                url: "http://localhost/riverview/heshani/public/api/store",
                data: $('#add_article_form').serialize(),
                success: function (data) {
                    alert(data);
                }
            });
        }
    });

});

</script>