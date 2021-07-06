camera = Post.create(name: 'camera_maker')
canon, nikon, sony, panasonic, olympus, 富士フイルム, pentax, sigma, hasselblad, leica, その他 = camera.children.create(
    [
        {name: 'canon'},
        {name: 'nikon'},
        {name: 'sony'},
        {name: 'panasonic'},
        {name: 'olympus'},
        {name: '富士フイルム'},
        {name: 'pentax'},
        {name: 'sigma'},
        {name: 'hasselblad'},
        {name: 'leica'},
        {name: 'その他'},
    ]    
)

['EOS-1D X Mark III', 'EOS-1D X Mark II', 'EOS-1D X', 
 'EOS R3', 'EOS R5', 'EOS R6', 'EOS R', 'EOS Ra', 
 'EOS 5D Mark IV', 'EOS 5D Mark III', 'EOS 5D Mark II', 'EOS 5Ds', 'EOS 5Ds R', 
 'EOS RP', 'EOS 6D mark II', 'EOS 90D', 
 'EOS M6 Mark II', 'EOS Kiss M2', 'EOS Kiss M', 'EOS M200', 'EOS M100', 'EOS Kiss X10i', 'EOS Kiss X10', 'EOS Kiss X9i', 
 'EOS 9000D', 'EOS Kiss X90'].each do |name|
    canon.children.create(name: name)
end
