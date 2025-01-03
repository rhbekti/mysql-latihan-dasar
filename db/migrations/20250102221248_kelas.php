<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class Kelas extends AbstractMigration
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
        $this->table('tb_kelas', ['id' => false, 'primary_key' => ['id_kelas']])
            ->addColumn('id_kelas', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('nama_kelas', 'string', ['limit' => 255])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_kelas')->drop()->update();
    }
}
