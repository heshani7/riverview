<form id="edit_article_form" name="edit_article_form">
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

