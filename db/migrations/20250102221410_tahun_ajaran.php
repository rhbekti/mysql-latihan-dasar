<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class TahunAjaran extends AbstractMigration
{
    public function up(): void
    {
        $this->table('tb_tahun_ajaran', ['id' => false, 'primary_key' => ['id_tahun_ajaran']])
            ->addColumn('id_tahun_ajaran', 'integer', ['identity' => false, 'signed' => false, 'null' => false])
            ->addColumn('nama_tahun_ajaran', 'string', ['limit' => 255])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_tahun_ajaran')->drop()->update();
    }
}
