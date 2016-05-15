remote_file '/tmp/cudnn-7.0-linux-x64-v4.0-prod.tgz' do
  owner 'root'
  group 'root'
  source File.expand_path('../../../tmp/cudnn-7.0-linux-x64-v4.0-prod.tgz', __FILE__)
end

execute 'tar xf cudnn-7.0-linux-x64-v4.0-prod.tgz -C /usr/local' do
  cwd '/tmp'
  not_if 'test -f /usr/local/cuda/lib64/libcudnn.so'
end
