" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null
