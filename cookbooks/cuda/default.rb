execute 'apt-get install -y linux-image-extra-`uname -r`'

execute 'apt-get install software-properties-common'
execute 'add-apt-repository -y ppa:graphics-drivers/ppa'
execute 'apt-get update'
execute 'apt-get install nvidia-352'

cuda_url = 'http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb'
cuda_deb_file = File.basename(cuda_url)
cuda_sha256sum = '7570ef4b5cb5dd861b6e01732e20a0da3241c69f164bcb3348cfecba04230e85'

execute 'Download cuda-repo' do
  command "curl -OL #{cuda_url}"
  cwd '/tmp'
  not_if "sha256sum #{cuda_deb_file} 2>/dev/null | grep -q #{cuda_sha256sum}"
end

execute 'Install cuda-repo' do
  command "dpkg -i #{cuda_deb_file}"
  cwd '/tmp'
end

execute 'apt-get update'

package 'cuda-7-0'

remote_file '/etc/profile.d/cuda.sh'
