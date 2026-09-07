import pya

app = pya.Application.instance()
win = app.main_window()

# Load GDS
layout_path = "/workspaces/OpenLane/designs/housekeeping_spi/runs/run_week6/results/signoff/housekeeping_spi.gds"
cell_view = win.load_layout(layout_path, 0)
view = win.current_view()

# Zoom fit & dump image
view.zoom_fit()
out_png = "/workspaces/soc-design-and-planning-vsd/Week6/screenshots/05_final_layout_gds.png"
view.save_image(out_png, 1920, 1080)
print("SUCCESS: GDS layout exported to", out_png)
app.exit(0)
