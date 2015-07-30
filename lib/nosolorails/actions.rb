module NoSoloRails
  module Actions
    # Remove active record configuration in the specified file
    # (comments of removed configurations will be removed too)
    def remove_active_record_from( file )
      gsub_file file, /config\.active_record.+/, ''
      gsub_file file, /( *#.*\n)+ *\n\n/, "\n"
    end

    # It deletes blank spaces from the specified file
    def remove_blank_spaces_from( file )
      gsub_file file, /^ +$/, "\n"
      gsub_file file, /\n{3,}/, "\n\n"
    end
  end
end
