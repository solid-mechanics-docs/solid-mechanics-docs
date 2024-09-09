import pyvista
from dolfinx.plot import vtk_mesh


def plot_displacement_stress(u_3d, sigma_von_mises):
    subplotter = pyvista.Plotter(
        shape=(1, 2),
        border=None,
        border_width=0,
    )
    sargs = dict(
        shadow=True,
        n_labels=2,
        fmt="%2.2f",
        font_family="arial",
        position_x=0.2,
    )

    # Displacement
    subplotter.subplot(0, 0)
    cells, types, geometry = vtk_mesh(u_3d.function_space.mesh)
    grid = pyvista.UnstructuredGrid(cells, types, geometry)
    grid["Displacement"] = u_3d.x.array.real.reshape((geometry.shape[0], 3))
    subplotter.add_mesh(grid, style="wireframe", color="grey", opacity=0.25)
    warped = grid.warp_by_vector("Displacement", factor=1.0)
    subplotter.add_mesh(
        warped, show_edges=False, show_scalar_bar=True, scalar_bar_args=sargs
    )
    subplotter.view_isometric()
    subplotter.view_vector((1, 1, 1))
    bounds_opts = dict(
        color="gray",
        grid="front",
        location="outer",
        font_size=10,
        font_family="arial",
    )
    subplotter.show_bounds(**bounds_opts)

    # VM stress
    subplotter.subplot(0, 1)
    grid = pyvista.UnstructuredGrid(cells, types, geometry)
    grid.point_data["Von Mises Stress"] = sigma_von_mises.x.array
    grid.set_active_scalars("Von Mises Stress")
    subplotter.add_mesh(
        grid,
        show_edges=False,
        show_scalar_bar=True,
        scalar_bar_args=sargs,
    )
    subplotter.view_xy()
    subplotter.show_bounds(**bounds_opts)
    return subplotter
