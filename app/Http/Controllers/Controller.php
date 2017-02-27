<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesResources;
use DB;
use Request;

class Controller extends BaseController
{
    use AuthorizesRequests, AuthorizesResources, DispatchesJobs, ValidatesRequests;

    public function verTop(){
      $selecciones = DB::select('CALL getTop();')->paginate(9);
      $sitios = array();
      foreach ($selecciones as $seleccion) {
        $sitios[]=array("nombre" => $seleccion->nombre
                      ,"calificacion" => $seleccion->calificacion
                      ,"resumen" => $seleccion->resumen
                      ,"foto" => $seleccion->url
                      ,"id" => $seleccion->id_sitio);
      }
      return view('welcome',array('sitios' => $sitios));
    }

    public function verSitio(){
      $id = Request::get('id');
      $resultados = DB::select('CALL getSitio('.$id.')');
      $sitios = array();
      foreach ($resultados as $seleccion) {
        $sitios[]=array("nombre" => $seleccion->nombre
                      ,"calificacion" => $seleccion->calificacion
                      ,"descripcion" => $seleccion->resumen
                      ,"foto" => $seleccion->url
                      ,"id" => $seleccion->id_sitio
                      ,"latitud" => $seleccion->latitud
                      ,"longitud" => $seleccion->longitud);
      }
      $puntos = Request::get('puntos');
      if($puntos != null){
        $calificar = DB::statement('CALL calificar('.$id.', '.$puntos.')');
      }
      return view('sitio', array('sitios' => $sitios));
    }

}
