return {
    "kndndrj/nvim-dbee",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    build = function()
        require("dbee").install()
    end,
    config = function()
        local server = os.getenv("ORACLE_BRUCK_TEST_SERVER")
        local db = os.getenv("ORACLE_BRUCK_TEST_DB")
        local usr = os.getenv("ORACLE_BRUCK_TEST_USR")
        local pwd = os.getenv("ORACLE_BRUCK_TEST_PWD")

        require("dbee").setup {
            sources = {
                require("dbee.sources").MemorySource:new({
                    {
                      name = "oracle_test",
                      type = "oracle",
                      url = "oracle://" .. usr .. ":" .. pwd .. "@" .. server ..":1521/" .. db,
                    },
                }),
            },
            editor = {
                 mappings = {
                    { key = "BB", mode = "v", action = "run_selection" },
                    { key = "BB", mode = "n", action = "run_file" },
                },
            },
        }
    end,
}
