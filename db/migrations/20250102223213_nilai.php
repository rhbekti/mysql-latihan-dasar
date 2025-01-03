<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class Nilai extends AbstractMigration
{
    public function up(): void
    {
        $this->table('tb_nilai', ['id' => false, 'primary_key' => ['id_nilai']])
            ->addColumn('id_nilai', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('id_siswa', 'integer', ['signed' => false])
            ->addColumn('id_mapel', 'integer', ['signed' => false])
            ->addColumn('nilai', 'integer', ['signed' => false])
            ->addColumn('id_tahun_ajaran', 'integer', ['signed' => false])
            ->addForeignKey('id_siswa', 'tb_siswa', 'id_siswa', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->addForeignKey('id_mapel', 'tb_mapel', 'id_mapel', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->addForeignKey('id_tahun_ajaran', 'tb_tahun_ajaran', 'id_tahun_ajaran', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_nilai')->drop()->update();
    }
}
