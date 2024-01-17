<?php

namespace App\Controllers;

class Halaman extends BaseController
{
    public function getIndex()
    {
        $data = [
            'title' => 'Home | GwenStacy'
        ];
        return view("pages/home", $data);
    }
    public function getAbout()
    {
        $data = [
            'title' => 'About Me'
        ];
        echo view("pages/about", $data);
    }

    public function getContact()
    {
        $data = [
            'title' => 'Contact',
            'alamat' => [
                [
                    'tipe' => 'rumah',
                    'alamat' => 'Jalan Pembangunan 123',
                    'kota' => 'Bandung'
                ],
                [
                    'tipe' => 'kantor',
                    'alamat' => 'Jalan sukarno',
                    'kota' => 'Bandung'
                ]
            ]
        ];
        return view("pages/contact", $data);
    }
}
