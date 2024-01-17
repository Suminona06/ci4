<?php

namespace App\Controllers\Admin;
use App\Controllers\BaseController;

class Siswa extends BaseController
{
    public function getMurid()
    {
        echo "<h1>Saya Siswa dan dari directory admin</h1>";

        // return view('siswa');
        $this->getValidasi();
        $this->getKonfirmasi();
    }
    protected function getValidasi()
    {
        echo " INI FUNCTION PROTECTED HANYA BISA DI AKSES OLEH SISWA <br>";
    }
    protected function getKonfirmasi()
    {
        echo " INI FUNCTION PROTECTED HANYA BISA DI AKSES OLEH SISWA";
    }
}
?>