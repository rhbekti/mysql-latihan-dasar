<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class Tabungan extends AbstractMigration
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
        $this->table('tb_tabungan', ['id' => false, 'primary_key' => ['id_tabungan']])
            ->addColumn('id_tabungan', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('id_siswa', 'integer', ['signed' => false])
            ->addColumn('tgl_transaksi', 'date')
            ->addColumn('nominal', 'integer', ['signed' => false])
            ->addForeignKey('id_siswa', 'tb_siswa', 'id_siswa', ['delete' => 'CASCADE', 'update' => 'CASCADE'])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_tabungan')->drop()->update();
    }
}
