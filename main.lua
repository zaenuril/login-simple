-- -- -- data user
local data = dofile("data.lua")

local function main()
    -- TO-DO tampilkan menu pilihan
    print("[=====]     SELAMAT DATANG DI TEMPEST LOGIN SYSTEM    [=====]")
    print("[===========================================================]")
    print("[=====] silahkan pilih menu berikut untuk melanjutkan [=====]")
    print("[=====] 1. LOGIN             Project By               [=====]")
    print("[=====] 2. REGISTER           Zaenuril                [=====]")
    print("[=====] 3. QUIT                                       [=====]")
    print("[===========================================================]")

    io.write("choose your choice: ")
    local user_choice = io.read("*n\n")
    _ = io.read("*l")
    -- TO-DO tampilkan menu login user
    if user_choice == 1 then
    print("\n\n[=====] LOGIN [=====]\n")
    
    io.write("Username: ")
    local input_user = io.read()
    io.write("Password: ")
    local input_pass = io.read()
    io.write("Role: ")
    local input_role = io.read()
    
    for _, userdata in pairs(data) do
        -- print("username: " .. userdata.users .. " password: " .. userdata.pass .. " role: " ..userdata.role)
        if userdata.users == input_user and userdata.pass == input_pass and userdata.role == input_role then
            print("logged on! welcome " .. userdata.users .. " your role is " .. userdata.role)
        end
end
elseif user_choice == 2 then
    print("menampilkan menu register")
else
    print("berhasil keluar")
end

end



    -- TO-DO jika user gagal login

main()