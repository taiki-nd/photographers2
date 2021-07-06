lens = Slectbox.create(name_lens: 'lens_ancestry')
canon, nikon, sony, panasonic, olympus, fuji, pentax, sigma, hasselblad, leica, other = camera.children.create(
    [
        {name_lens: 'canon'},
        {name_lens: 'nikon'},
        {name_lens: 'sony'},
        {name_lens: 'panasonic'},
        {name_lens: 'olympus'},
        {name_lens: '富士フイルム'},
        {name_lens: 'pentax'},
        {name_lens: 'sigma'},
        {name_lens: 'hasselblad'},
        {name_lens: 'leica'},
        {name_lens: 'その他'}
    ]    
)

[''].each do |name_lens|
    canon.children.create(name_lens: name_lens)
end

['D6', 'D5', 'D4S', 'D4', 'D850', 'D810A', 'D810', 'D780', 'D750', 'D500', 'D7500', 'D7200', 'D5600', 'D5500', 
 'Z 7II', 'Z7', 'Z 6II', 'Z6', 'Z5', 'Zfc', 'Z50'].each do |name_lens|
    nikon.children.create(name_lens: name_lens)
end

['α1', 'α9 II', 'α9', 'α7R IV', 'α7R III', 'α7R II', 'α7S III', 'α7S II', 'α7III', 'α7II', 'α7c', 
 'α6600', 'α6400', 'α6100', 'α99II'].each do |name_lens|
    sony.children.create(name_lens: name_lens)
end

['DC-S1R', 'DC-S1', 'DC-S1H', 'DC-S5', 'DC-GH5M2', 'DC-GH5', 'DC-GH5S', 'DC-GH4', 
 'DC-G9', 'DC-G99', 'DC-G100', 'DC-GX7MK3', 'DC-GF10', 'DC-GF9', 'DC-GF8'].each do |name_lens|
    panasonic.children.create(name_lens: name_lens)
end

['E-M1X', 'E-M1 Mark III', 'E-M1 Mark II', 'E-M5 Mark III', 'E-M5 Mark II', 'E-M10 Mark IV', 'E-M10 Mark III', 'E-M10 Mark II', 
 'PEN F', 'E-P7', 'E-P5', 'E-PL10', 'E-PL9', 'E-PL8', 'E-PL7'].each do |name_lens|
    olympus.children.create(name_lens: name_lens)
end

['FUJIFILM GFX100', 'FUJIFILM GFX100S', 'FUJIFILM GFX 50S', 'FUJIFILM GFX 50R', 
 'FUJIFILM X-H1', 'FUJIFILM X-Pro3', 'FUJIFILM X-pro2', 'FUJIFILM X-T4', 'FUJIFILM X-T3', 'FUJIFILM X-S10', 
 'FUJIFILM X-T30', 'FUJIFILM X-T20', 'FUJIFILM X-T200', 'FUJIFILM X-T100', 'FUJIFILM X-E4', 'FUJIFILM X-E3', 
 'FUJIFILM X-A7', 'FUJIFILM X-A5'].each do |name_lens|
    fuji.children.create(name_lens: name_lens)
end

['645z', 'K-1 II', 'K-1', 'K-3 III', 'K-3 II', 'K-5 IIs', 'K-5', 'KP', 'K-S1', 'K-S2'].each do |name_lens|
    pentax.children.create(name_lens: name_lens)
end

['fp', 'fp L', 'sd', 'sd H', 'dp0', 'dp1', 'dp2', 'dp3'].each do |name_lens|
    sigma.children.create(name_lens: name_lens)
end

['X1D II 50c', 'X1D 50c', 'H6D', 'H6D MULTI-SHOT', 'H6X'].each do |name_lens|
    hasselblad.children.create(name_lens: name_lens)
end

['S', 'SL', 'M', 'CL', 'TL2'].each do |name_lens|
    leica.children.create(name_lens: name_lens)
end

other.children.create(name_lens: 'その他')