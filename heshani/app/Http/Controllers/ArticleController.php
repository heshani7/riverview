<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\HttpException;
use App\Article;

class ArticleController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

        $articles = Article::paginate(10);

        if (!$articles) {
            throw new HttpException(400, "Invalid data");
        }

        return response()->json(
                        $articles, 200
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $article = new Article;
        $article->title = $request->input('title');
        $article->author_id = $request->input('author_id');
        $article->url = $request->input('url');
        $article->content = $request->input('content');

        if ($article->save()) {
            return $article;
        }

        throw new HttpException(400, "Invalid data");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        if (!$id) {
            throw new HttpException(400, "Invalid id");
        }

        $article = Article::find($id);

        return response()->json([
                    $article,
                        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        if (!$id) {
            throw new HttpException(400, "Invalid id");
        }

        $article = Article::find($id);
        $article->title = $request->input('title');
        $article->author_id = $request->input('author_id');
        $article->url = $request->input('url');
        $article->content = $request->input('content');

        if ($article->save()) {
            return $article;
        }

        throw new HttpException(400, "Invalid data");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {

        if (!$id) {
            throw new HttpException(400, "Invalid id");
        }

        $article = Article::find($id);
        $article->delete();

        return response()->json([
                    'message' => 'book deleted',
                        ], 200);
    }

}
