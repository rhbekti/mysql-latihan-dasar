<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class Mapel extends AbstractMigration
{
    public function up(): void
    {
        $this->table('tb_mapel', ['id' => false, 'primary_key' => ['id_mapel']])
            ->addColumn('id_mapel', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('nama_mapel', 'string', ['limit' => 255])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_mapel')->drop()->update();
    }
}
