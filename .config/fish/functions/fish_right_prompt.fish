function FG; set_color -o 8d6494; end
function GR; set_color 666; end
function OFF; set_color normal; end

function fish_right_prompt -d "Prints right prompt"
  echo (GR)" "[(date +%H(FG):(GR)%M(FG):(GR)%S)](OFF)
end
