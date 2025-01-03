<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class Siswa extends AbstractMigration
{
    public function up(): void
    {
        $this->table('tb_siswa', ['id' => false, 'primary_key' => ['id_siswa']])
            ->addColumn('id_siswa', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('nama_siswa', 'string', ['limit' => 255])
            ->addColumn('tgl_lahir', 'date')
            ->addColumn('id_agama', 'integer', ['signed' => false])
            ->addColumn('tabungan', 'integer', ['signed' => false])
            ->addForeignKey('id_agama', 'tb_agama', 'id_agama', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_siswa')->drop()->update();
    }
}
