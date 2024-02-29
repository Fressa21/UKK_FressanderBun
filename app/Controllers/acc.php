<?php

namespace App\Controllers;

use App\Models\UserModel;
use App\Models\AlbumModel;

class acc extends BaseController
{
    public function index()
    {
        $userModel = new UserModel();
        $albumModel = new AlbumModel();

        $userId = session()->get('id'); 
        $userData = $userModel->find($userId);

        $albums = $albumModel->getAlbumsByUser($userId);

        $data = [
            'userData' => $userData,
            'albums'   => $albums,
        ];
        echo view('header');
        echo view('account', $data);
        echo view('footer');
    }
    public function edit_profile()
    {
        $userId = session()->get('id');

        $userModel = new UserModel();

        $userData = $userModel->getUserById($userId);

        echo view('header');
        echo view('edit_profile', ['userData' => $userData]);
        echo view('footer');
    }

    public function updateProfile()
    {
        $userModel = new UserModel();

        $userId = session()->get('id');

        $username = $this->request->getPost('username');
        $nama = $this->request->getPost('nama');
        $foto = $this->request->getFile('foto');

        $imageName = null;

        if ($foto && $foto->isValid() && !$foto->hasMoved()) {
            $imageName = $foto->getName();
            $foto->move('images/', $imageName);
        }

        $userData = [
            'username' => $username,
            'nama' => $nama,
            'foto'     => $imageName
        ];

        $userModel->updateUser($userId, $userData);

        return redirect()->to(base_url('/acc/edit_profile'))->with('success', 'Profile updated successfully.');
    }
}
