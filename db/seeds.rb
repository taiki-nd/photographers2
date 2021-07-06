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
