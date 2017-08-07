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
            <h2>Articles</h2>   

            <?php $articles = json_decode($j_articles) ?>

            <a href="{{ url('/api/add_article') }}" class="btn btn-primary pull-right">Add New Article</a>

            <table class="table">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>URL</th>
                        <th>Content</th>
                        <th>Options</th>
                    </tr>
                </thead>
                <tbody>

                    @foreach($articles as $article)
                    <tr>
                        <td>{{ $article->title }} </td>
                        <td>{{ $article->author_name }} </td>
                        <td>{{ $article->url }} </td>
                        <td>{{ $article->content }} </td>
                        <td>
                            <button type="button" class="btn btn-info btn-mini" data-toggle="modal" data-target="#myModal" onclick="get_edit_view('1')">Edit</button>
                            <button type="button" class="btn btn-danger btn-mini">Delete</button>
                        </td>                        
                    </tr>
                    @endforeach

                </tbody>
            </table>
        </div>

        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body" id="modal_body">
                        <p>Some text in the modal.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>

<script type="text/javascript">

    function get_edit_view(id) {

        $.ajax({
            type: "POST",
            url: "http://localhost/riverview/heshani/public/api/get_edit",
            data: {id: id},
            success: function (data) {
                alert(data);
                $('#modal_body').html(data);
            }
        });
    }

</script>