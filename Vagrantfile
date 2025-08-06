master = {"master" => {"memory" => "1024", "cpu" => "1"}}


Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-24.04"

  # Nó master
  config.vm.define "master" do |master|
    config.vm.boot_timeout = 600
    master.vm.network "private_network", ip: "192.168.56.160"
    master.vm.hostname = "master"
    master.vm.provider "virtualbox" do |vb|
      vb.name = "master"
      vb.memory = 2048  # Altere conforme desejado
      vb.cpus = 2
    end
    master.vm.provision "shell", path: "instalacao-master.sh"
  end

  # Nós workers
  (1..3).each do |i|
    config.vm.define "node0#{i}" do |worker|
      config.vm.boot_timeout = 600
      worker.vm.network "private_network", ip: "192.168.56.16#{i}"
      worker.vm.hostname = "node0#{i}"
       worker.vm.provider "virtualbox" do |vb|
        vb.name = "node0#{i}"
        vb.memory = 1024  # Pode ajustar para algo maior, como 2048
        vb.cpus = 1
      end
      worker.vm.provision "shell", path: "instalacao-worker.sh"
    end
  end
end
