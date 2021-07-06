camera = Post.create(name: 'camera_maker')
canon, nikon, sony, panasonic, olympus, fuji, pentax, sigma, hasselblad, leica, other = camera.children.create(
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

['D6', 'D5', 'D4S', 'D4', 'D850', 'D810A', 'D810', 'D780', 'D750', 'D500', 'D7500', 'D7200', 'D5600', 'D5500', 
 'Z 7II', 'Z7', 'Z 6II', 'Z6', 'Z5', 'Zfc', 'Z50'].each do |name|
    nikon.children.create(name: name)
end

['α1', 'α9 II', 'α9', 'α7R IV', 'α7R III', 'α7R II', 'α7S III', 'α7S II', 'α7III', 'α7II', 'α7c', 
 'α6600', 'α6400', 'α6100', 'α99II'].each do |name|
    sony.children.create(name: name)
end

['DC-S1R', 'DC-S1', 'DC-S1H', 'DC-S5', 'DC-GH5M2', 'DC-GH5', 'DC-GH5S', 'DC-GH4', 
 'DC-G9', 'DC-G99', 'DC-G100', 'DC-GX7MK3', 'DC-GF10', 'DC-GF9', 'DC-GF8'].each do |name|
    panasonic.children.create(name: name)
end

['E-M1X', 'E-M1 Mark III', 'E-M1 Mark II', 'E-M5 Mark III', 'E-M5 Mark II', 'E-M10 Mark IV', 'E-M10 Mark III', 'E-M10 Mark II', 
 'PEN F', 'E-P7', 'E-P5', 'E-PL10', 'E-PL9', 'E-PL8', 'E-PL7'].each do |name|
    olympus.children.create(name: name)
end

['FUJIFILM GFX100', 'FUJIFILM GFX100S', 'FUJIFILM GFX 50S', 'FUJIFILM GFX 50R', 
 'FUJIFILM X-H1', 'FUJIFILM X-Pro3', 'FUJIFILM X-pro2', 'FUJIFILM X-T4', 'FUJIFILM X-T3', 'FUJIFILM X-S10', 
 'FUJIFILM X-T30', 'FUJIFILM X-T20', 'FUJIFILM X-T200', 'FUJIFILM X-T100', 'FUJIFILM X-E4', 'FUJIFILM X-E3', 
 'FUJIFILM X-A7', 'FUJIFILM X-A5'].each do |name|
    fuji.children.create(name: name)
end

[].each do |name|
    -------.children.create(name: name)
end
