<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'user';
    protected $primaryKey = 'id_user';
    protected $allowedFields = ['foto','nama', 'username', 'password'];
    
    
    public function getUserByUsername($username)
    {
        return $this->where('username', $username)->first();
    }
    public function getUserById($userId)
    {
        return $this->where('id_user', $userId)->first();
    }

    public function updateUser($userId, $data)
    {
        $this->set($data);
        $this->where('id_user', $userId);
        $this->update();
    }
}
