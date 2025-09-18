shortcuts = {
    ["ACTION_TOOL_PEN"] = "p",
    ["ACTION_TOOL_ERASER"] = "e",
    ["ACTION_TOOL_HIGHLIGHTER"] = "v",
    ["ACTION_TOOL_TEXT"] = "t",
    ["ACTION_TOOL_IMAGE"] = "i",
    ["ACTION_TOOL_SELECT_RECT"] = "r",
    ["ACTION_TOOL_SELECT_REGION"] = "s",
    ["ACTION_TOOL_SELECT_MULTILAYER_RECT"] = "<Shift>r",
    ["ACTION_TOOL_SELECT_MULTILAYER_REGION"] = "<Shift>s",
    ["ACTION_TOOL_SELECT_OBJECT"] = "<Ctrl><Alt>q",
    ["ACTION_TOOL_PLAY_OBJECT"] = "<Ctrl><Alt>w",
    ["ACTION_TOOL_SELECT_PDF_TEXT_LINEAR"] = "",
    ["ACTION_TOOL_SELECT_PDF_TEXT_RECT"] = "",
    ["ACTION_TOOL_VERTICAL_SPACE"] = "",
    ["ACTION_TOOL_HAND"] = "",
    ["ACTION_TOOL_FLOATING_TOOLBOX"] = "",
    ["ACTION_TOOL_LASER_POINTER_PEN"] = "",
    ["ACTION_TOOL_LASER_POINTER_HIGHLIGHTER"] = "",
    ["ACTION_TEX"] = "x",
};

function initUi()
    read_config();
    
    app.registerUi({
        ["menu"] = "Pen tool",
        ["callback"] = "pen",
        ["accelerator"] = shortcuts["ACTION_TOOL_PEN"]
    });
    app.registerUi({
        ["menu"] = "Eraser tool",
        ["callback"] = "eraser",
        ["accelerator"] = shortcuts["ACTION_TOOL_ERASER"]
    });
    app.registerUi({
        ["menu"] = "Highlighter tool",
        ["callback"] = "highlighter",
        ["accelerator"] = shortcuts["ACTION_TOOL_HIGHLIGHTER"]
    });
    app.registerUi({
        ["menu"] = "Text tool",
        ["callback"] = "text",
        ["accelerator"] = shortcuts["ACTION_TOOL_TEXT"]
    });
    app.registerUi({
        ["menu"] = "Image tool",
        ["callback"] = "image",
        ["accelerator"] = shortcuts["ACTION_TOOL_IMAGE"]
    });
    app.registerUi({
        ["menu"] = "Rectangular Select tool",
        ["callback"] = "rect_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_RECT"]
    });
    app.registerUi({
        ["menu"] = "Region select tool",
        ["callback"] = "region_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_REGION"]
    });
    app.registerUi({
        ["menu"] = "Rectangular multilayer select tool",
        ["callback"] = "rect_mul_layer_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_MULTILAYER_RECT"]
    });
    app.registerUi({
        ["menu"] = "Region multilayer select tool",
        ["callback"] = "region_mul_layer_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_MULTILAYER_REGION"]
    });
    app.registerUi({
        ["menu"] = "Object select",
        ["callback"] = "obj_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_OBJECT"]
    });
    app.registerUi({
        ["menu"] = "Object play",
        ["callback"] = "obj_play",
        ["accelerator"] = shortcuts["ACTION_TOOL_PLAY_OBJECT"]
    });
    app.registerUi({
        ["menu"] = "PDF text linear select",
        ["callback"] = "pdf_text_linear_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_PDF_TEXT_LINEAR"]
    });
    app.registerUi({
        ["menu"] = "PDF text rect select",
        ["callback"] = "pdf_text_rect_sel",
        ["accelerator"] = shortcuts["ACTION_TOOL_SELECT_PDF_TEXT_RECT"]
    });
    app.registerUi({
        ["menu"] = "Vertical space",
        ["callback"] = "vertical_space",
        ["accelerator"] = shortcuts["ACTION_TOOL_VERTICAL_SPACE"]
    });
    app.registerUi({
        ["menu"] = "Hand",
        ["callback"] = "hand",
        ["accelerator"] = shortcuts["ACTION_TOOL_HAND"]
    });
    app.registerUi({
        ["menu"] = "Floating toolbox",
        ["callback"] = "floating_toolbox",
        ["accelerator"] = shortcuts["ACTION_TOOL_FLOATING_TOOLBOX"]
    });
    app.registerUi({
        ["menu"] = "Laser pointer pen",
        ["callback"] = "laser_pointer_pen",
        ["accelerator"] = shortcuts["ACTION_TOOL_LASER_POINTER_PEN"]
    });
    app.registerUi({
        ["menu"] = "Laser pointer highlighter",
        ["callback"] = "laser_pointer_highlighter",
        ["accelerator"] = shortcuts["ACTION_TOOL_LASER_POINTER_HIGHLIGHTER"]
    });
    app.registerUi({
        ["menu"] = "LaTex tool",
        ["callback"] = "latex",
        ["accelerator"] = shortcuts["ACTION_TEX"]
    });
end

function read_config()
    local config_path = os.getenv("XDG_CONFIG_HOME")
    if config_path == nil then
        config_path = os.getenv("LOCALAPPDATA")
    end
    config_path = config_path .. "/xournalpp"

    local config = config_path .. "/pen_gui_n_config.ini";
    local file = io.open(config, "r")
    if file then
        file:close()

        for line in io.lines(config) do
            line = line:match("^%s*(.-)%s*$")
            
            if line ~= "" and not line:match("^;") and not line:match("^#") then
                local key, value = line:match("^(.-)=(.*)$")
                if key and value then
                    key = key:match("^%s*(.-)%s*$")
                    value = value:match("^%s*(.-)%s*$")
                    shortcuts[key] = value;
                end
            end
        end

    else
        file = io.open(config, "w")
        if file then
            file:write("")
            file:close()
        end
    end
end

function pen()
    app.uiAction({ ["action"] = "ACTION_TOOL_PEN" })
end

function eraser()
    app.uiAction({ ["action"] = "ACTION_TOOL_ERASER" })
end

function highlighter()
    app.uiAction({ ["action"] = "ACTION_TOOL_HIGHLIGHTER" })
end

function text()
    app.uiAction({ ["action"] = "ACTION_TOOL_TEXT" })
end

function image()
    app.uiAction({ ["action"] = "ACTION_TOOL_IMAGE" })
end

function rect_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_RECT" })
end

function region_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_REGION" })
end

function rect_mul_layer_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_MULTILAYER_RECT" })
end

function region_mul_layer_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_MULTILAYER_REGION" })
end

function obj_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_OBJECT" })
end

function obj_play()
    app.uiAction({ ["action"] = "ACTION_TOOL_PLAY_OBJECT" })
end

function pdf_text_linear_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_PDF_TEXT_LINEAR" })
end

function pdf_text_rect_sel()
    app.uiAction({ ["action"] = "ACTION_TOOL_SELECT_PDF_TEXT_RECT" })
end

function vertical_space()
    app.uiAction({ ["action"] = "ACTION_TOOL_VERTICAL_SPACE" })
end

function hand()
    app.uiAction({ ["action"] = "ACTION_TOOL_HAND" })
end

function floating_toolbox()
    app.uiAction({ ["action"] = "ACTION_TOOL_FLOATING_TOOLBOX" })
end

function laser_pointer_pen()
    app.uiAction({ ["action"] = "ACTION_TOOL_LASER_POINTER_PEN" })
end

function laser_pointer_highlighter()
    app.uiAction({ ["action"] = "ACTION_TOOL_LASER_POINTER_HIGHLIGHTER" })
end

function latex()
    app.uiAction({ ["action"] = "ACTION_TEX" })
end
