<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class Agama extends AbstractMigration
{
    public function up(): void
    {
        $this->table('tb_agama', ['id' => false, 'primary_key' => ['id_agama']])
            ->addColumn('id_agama', 'integer', ['identity' => true, 'signed' => false])
            ->addColumn('nama_agama', 'string', ['limit' => 255])
            ->create();
    }

    public function down(): void
    {
        $this->table('tb_agama')->drop()->update();
    }
}
