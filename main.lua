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

        local logged_in = false
        local attempt = 0
    while not logged_in and attempt < 3 do

    -- TO-DO tampilkan menu login user
        if user_choice == 1 then

            
        print("\n\n[=====] LOGIN [=====]\n")
            
            io.write("Username: ")
            local input_user = io.read()
            io.write("Password: ")
            local input_pass = io.read()
            io.write("Role: ")
            local input_role = io.read()
            
        
            -- menampilkan halaman login untuk user 
            for _, userdata in pairs(data) do
                if userdata.users == input_user and userdata.pass == input_pass and userdata.role == input_role then
                    print("\n\n\n\n[=====] logged on! welcome " .. userdata.users .. " your role is " .. userdata.role .. " [=====]\n")
                    print("[=====]     SELAMAT DATANG DI TEMPEST LOGIN SYSTEM        [=====]")
                    logged_in = true
                end

                -- cek kalau user salah memasukan username
                if userdata.users ~= input_user and userdata.pass == input_pass and userdata.role == input_role then
                    print("\n\n\n\nplease input correct username")
                end

                if userdata.users == input_user and userdata.pass ~= input_pass and userdata.role == input_role then
                    attempt = attempt + 1
                    -- print("please input correct password! " )
                    print("\nyou've wrong " .. attempt.. "x, are u sure it's your password?")
                end
                if attempt == 3 then
                    print("you've input max attempt, program will be terminated!")
                end
                
                if userdata.users == input_user and userdata.pass == input_pass and userdata.role ~= input_role then
                    print("please input correct role!")
                end
                
            end
        
        elseif user_choice == 2 then
            print("nanti ya, males bikin")
            logged_in = true

        else
            print("apakah yakin ingin keluar? [Y/y]")
            local keluar = io.read()
        
            if keluar == 'Y' or keluar == 'y' then
                print("berhasil keluar")
                logged_in = true
            end
        end
    end
end

main()