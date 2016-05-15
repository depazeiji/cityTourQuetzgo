<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesResources;
use DB;

class Controller extends BaseController
{
    use AuthorizesRequests, AuthorizesResources, DispatchesJobs, ValidatesRequests;

    public function verTop(){
      $selecciones = DB::select('CALL getTop();');
      $sitios = array();
      foreach ($selecciones as $seleccion) {
        $sitios[]=array("nombre" => $seleccion->nombre
                      ,"calificacion" => $seleccion->calificacion
                      ,"resumen" => $seleccion->resumen);
      }
      return view('welcome',array('sitios' => $sitios));
    }

}
