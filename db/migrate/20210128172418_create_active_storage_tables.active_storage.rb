# This migration comes from active_storage (originally 20170806125915)
class CreateActiveStorageTables< ActiveRecord::Migration[5.2]
  def change
    drop_table :active_storage_attachments
    drop_table :active_storage_blobs
    end

end
