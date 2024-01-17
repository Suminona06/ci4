<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
    protected $komikModel;

    public function __construct()
    {
        $this->komikModel = new KomikModel(); // Correct assignment
    }

    public function getIndex()
    {
        // $komik = $this->komikModel->findAll(); 
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik()
        ];

        // Access model correctly

        return view('komik/index', $data);

    }

    public function detail($slug)
    {

        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        //Jika komik tidak ada di tabel

        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik' . $slug . 'tidak ditemukan');
        }

        return view('komik/detail', $data);
    }

    public function create()
    {

        $data = [
            'title' => 'Create',
            'content' => 'blog/create',
            'validation' => session()->getFlashdata('validation')
        ];

        return view('komik/create', $data);
    }

    public function save()
    {
        // Validation
        $config = [
            'judul' => [
                'rules' => 'required|is_unique[manga.judul]',
                'errors' => [
                    'required' => 'judul komik tidak boleh kosong!',
                    'is_unique' => 'judul komik sudah tersedia!'
                ]
            ],
        ];

        if (!$this->validate($config)) {
            return redirect()->to('komik/create')->withInput()->with('validation', $this->validator);
        }


        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan.');

        return redirect()->to('/Komik');
    }

    public function delete($id)
    {
        $this->komikModel->delete($id);
        return redirect()->to('/Komik');
    }
}