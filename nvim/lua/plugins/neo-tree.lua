return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- nicht unbedingt erforderlich, aber empfohlen
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optionale Bildunterstützung im Vorschaufenster
        "nvim-treesitter/nvim-treesitter", -- Füge nvim-treesitter hier hinzu
    },
    config = function()
        require("neo-tree").setup {
            -- Hier kannst du die Konfiguration für Neo-tree hinzufügen
        }

        -- Konfiguration für nvim-treesitter
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua" }, -- Hier kannst du weitere Sprachen hinzufügen
            highlight = {
                enable = true,              -- false wird die Highlighting-Funktion deaktivieren
            },
        }
    end,
}

