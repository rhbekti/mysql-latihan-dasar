<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class SiswaKelas extends AbstractMigration
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * https://book.cakephp.org/phinx/0/en/migrations.html#the-change-method
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function up(): void
    {
        $this->table('tb_siswa_perkelas', ['id' => false, 'primary_key' => ['id_siswa_perkelas']])
            ->addColumn('id_siswa_perkelas', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('id_siswa', 'integer', ['signed' => false])
            ->addColumn('id_kelas', 'integer', ['signed' => false])
            ->addColumn('id_tahun_ajaran', 'integer', ['signed' => false])
            ->addForeignKey('id_siswa', 'tb_siswa', 'id_siswa', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->addForeignKey('id_kelas', 'tb_kelas', 'id_kelas', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->addForeignKey('id_tahun_ajaran', 'tb_tahun_ajaran', 'id_tahun_ajaran', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_siswa_perkelas')->drop()->update();
    }
}
