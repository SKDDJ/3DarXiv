let titles_type = [ "Overview"];
let titles_model = ["NeRF", "3D", "3DGS", "Point Cloud", "Mesh", "Voxel", "Gaussian Splatting", "Diffusion"];
let titles_method = ["3D Generation", "3D Reconstruction", "Single View", "Monocular", "Scene Generation", "Novel View Synthesis", "Shape Generation", "Implicit Surface", "Neural Rendering"];
let titles = titles_model + titles_method + titles_type;
let authors_array = [
    "Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio",
    "Gordon Wetzstein", "Michael Black", "Vladlen Koltun",
    "Shuran Song", "Leonidas Guibas", "Justin Johnson"
];

let conferences = [
    // 3D Vision & Graphics
    "SIGGRAPH", "SIGGRAPH Asia", "3DV", "ECCV", "ICCV", "CVPR", "NeurIPS", "ICLR", "ICML",
    // Computer Vision
    "ACCV", "BMVC", "WACV", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI",
    // Graphics & Rendering
    "Eurographics", "Pacific Graphics", "I3D", "SGP", "HPG",
    // ML & AI
    "AAAI", "IJCAI", "AISTATS", "ICML", "NeurIPS", "ICLR",
    // Robotics & 3D Understanding
    "ICRA", "IROS", "RSS", "CoRL"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;