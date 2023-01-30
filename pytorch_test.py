import torch
x = torch.rand(5, 3)
print(x)


print('\ncuda.is_available: ', torch.cuda.is_available())
print('cuda.device_count: ', torch.cuda.device_count())
device = torch.cuda.current_device()
print('cuda.current_device: ', device)
print('cuda.get_device_name: ', torch.cuda.get_device_name(device))
