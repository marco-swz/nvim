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
        if server == nil then
            return
        end
        local db = os.getenv("ORACLE_BRUCK_TEST_DB")
        if db == nil then
            return
        end
        local usr = os.getenv("ORACLE_BRUCK_TEST_USR")
        if usr == nil then
            return
        end
        local pwd = os.getenv("ORACLE_BRUCK_TEST_PWD")
        if pwd == nil then
            return
        end

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
