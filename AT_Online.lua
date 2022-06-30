local t = {
    afk = 0,
    noAFK = 0,
    online = 0
}

function main()
	local startTime = os.time()
    while true do wait(1000)
        if sampGetGamestate() == 3 then
            t.afk = (os.time() - startTime) - t.noAFK
            t.noAFK = t.noAFK + 1
            t.online = t.noAFK + t.afk
        end
    end
end

function EXPORTS.get_times()
    return t
end