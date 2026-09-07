import pya

def_path = "/workspaces/OpenLane/designs/housekeeping_spi/runs/run_week6/results/floorplan/housekeeping_spi.def"
lef_path = "/workspaces/OpenLane/designs/housekeeping_spi/runs/run_week6/tmp/merged.nom.lef"
out_png = "/workspaces/soc-design-and-planning-vsd/Week6/screenshots/01_floorplan.png"

layout = pya.Layout()

# Load LEF first so macros exist
layout.read(lef_path)

# Load Floorplan DEF
layout.read(def_path)

view = pya.LayoutView()
view.show_layout(layout, False)
view.max_hier()
view.zoom_fit()
view.save_image(out_png, 1920, 1080)
print(f"Floorplan image saved successfully at {out_png}")
