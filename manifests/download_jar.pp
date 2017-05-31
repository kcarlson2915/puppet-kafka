define kafka::download_jar ($jar_name, $jar_source, $install_dir) {
    exec { "downloading ${jar_name}":
      command => "/usr/bin/wget -O /${install_dir}/${jar_name} ${jar_source}",
      creates => "/${install_dir}/${jar_name}",
    }
}