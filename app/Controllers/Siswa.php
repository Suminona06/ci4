<?php

namespace App\Controllers;

use App\Controllers\Admin\Siswa as AdminSiswa;

class Siswa extends BaseController
{
    public function getMurid($siswa, $kelas)
    {
        $AdminSiswa = new AdminSiswa();
        $AdminSiswa->getMurid();
        echo "<h1>Saya Siswa Jurusan $siswa, dan saya kelas $kelas</h1>";

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