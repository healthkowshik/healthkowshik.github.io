# nbdev2 – Create delightful software with Jupyter Notebooks


## Essential Commands

``` bash
nbdev_export      # Convert notebooks → Python modules
nbdev_test        # Run tests from notebooks
nbdev_clean       # Clean outputs/metadata
nbdev_docs        # Build documentation
nbdev_preview     # Preview docs locally
nbdev_readme      # Update README from index.ipynb
```

## Cleanup Script

Full rebuild from scratch. Clears all generated files (`_docs`, `_proc`,
`.quarto`), Python artifacts, then regenerates everything.

``` bash
./cleanup.sh
```

Use when:

- `.qmd` files aren’t updating (nbdev doesn’t overwrite existing `.qmd`
  in `_proc`)
- Switching branches with different content
- Listings show stale/duplicate entries
