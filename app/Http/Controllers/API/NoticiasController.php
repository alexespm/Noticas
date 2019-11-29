<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Noticias;
use Validator;
use App\Http\Resources\Noticia as NoticiaResource;
   
class NoticiasController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Noticias::all();
    
        return $this->sendResponse(NoticiaResource::collection($products), 'Noticias Encontradas.');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'Titulo' => 'required',
            'Fecha' => 'required',
            'Descripcion' => 'required',
            'Redactor' => 'required'
        ]);
   
        if($validator->fails()){
            return $this->sendError('Error de Validacion', $validator->errors());       
        }
   
        $Creanoticia = Noticias::create($input);
   
        return $this->sendResponse(new NoticiaResource($Creanoticia), 'Noticia Creada Correctamente.');
    } 
   
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Encuentranoticia = Noticias::findOrFail($id);
  
        if (is_null($Encuentranoticia)) {
            return $this->sendError('Esta noticia no existe.');
        }
   
        return $this->sendResponse(new NoticiaResource($Encuentranoticia), 'Noticia Encotrada Correctamente.');
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Noticias $product,$id)
    {
        //$input = $request->all();
        $Encuentranoticia = Noticias::findOrFail($id);

            $FechaRecibida = $request->Fecha;
            $TituloRecibido = $request->Titulo;
            $DescripcionRecibida = $request->Descripcion;
            $RedactorRecibido = $request->Redactor;
            if($FechaRecibida===NULL)
            {
                $FechaRecibida=$Encuentranoticia->Fecha;
                $Encuentranoticia->Fecha = $FechaRecibida;
            }
            else{
                $Encuentranoticia->Fecha = $FechaRecibida;
            }    
            if($TituloRecibido===NULL) 
            {
                $TituloRecibido=$Encuentranoticia->Titulo;
                $Encuentranoticia->Titulo = $TituloRecibido;
            }
            else{
                $Encuentranoticia->Titulo = $TituloRecibido;
            }
            if($DescripcionRecibida===NULL)
            {
                $DescripcionRecibida=$Encuentranoticia->Descripcion;
                $Encuentranoticia->Descripcion = $DescripcionRecibida;
            }
            else{
                $Encuentranoticia->Descripcion = $DescripcionRecibida;
            }  
            if($RedactorRecibido===NULL) 
            {
                $RedactorRecibido=$Encuentranoticia->Redactor;
                $Encuentranoticia->Redactor = $RedactorRecibido;
            }
            else{
                $Encuentranoticia->Redactor = $RedactorRecibido;
            }

        $Encuentranoticia->save();
   
        return $this->sendResponse(new NoticiaResource($Encuentranoticia), 'Noticia Actualizada Correctamente.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Noticias $noticia)
    {
        $noticia->delete();
   
        return $this->sendResponse([], 'Noticia Eliminada Correctamente.');
    }
}