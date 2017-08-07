<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
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

        //$articles = Article::paginate(10);
        $articles = DB::table('article')
                ->select('article.id', 'article.author_id', 'article.title', 'article.url', 'article.content', 'author.name as author_name')
                ->join('author', 'article.author_id', '=', 'author.id')
                ->get();

        if (!$articles) {
            throw new HttpException(400, "Invalid data");
        }

        $data['j_articles'] = json_encode($articles);

//        $data['articles'] =response()->json([
//            $articles,
//        ], 200);

        return view('template', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {

        $data['authors'] = DB::table('author')->get();

        return view('add_article', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $this->validate($request, [
            'title' => 'required|unique:posts|max:255',
            'author_id' => 'required'
        ]);

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
    public function show(Request $request) {

        $id = $request->input('id');

        $data['article'] = DB::table('article')
                ->select('article.id', 'article.author_id', 'article.title', 'article.url', 'article.content', 'author.name as author_name')
                ->join('author', 'article.author_id', '=', 'author.id')
                ->where('article.id', $id)
                ->first();

        return view('edit_article', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
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
                    'message' => 'Article deleted',
                        ], 200);
    }

}
