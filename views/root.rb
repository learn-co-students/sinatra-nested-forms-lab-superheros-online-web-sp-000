<h1> Create a Team and Heroes!</h1>


<form action="/teams" method="post">
    <label>Team Name</label>
    <input type="text" name="team[name]">
    <label>Team Motto</label>
    <input type="text" name="team[motto]">
    <h2>Hero 1</h2>
    <label>Heros Name </label>
    <input type="text" name="team[heroes][][name]" id="member1_name">
    <label>Heros Power</label>
    <input type="text" name="team[heroes][][bio]" id="member1_bio">
    <label>Heros Biography/label>
    <input type="text" name="team[heroes][][power]" id="member1_power">
    <h2>Hero 2</h2>
    <label>Heros Name </label>
    <input type="text" name="team[heroes][][name]" id="member2_name">
    <label>Heros Power</label>
    <input type="text" name="team[heroes][][bio]" id="member2_bio">
    <label>Heros Biography/label>
    <input type="text" name="team[heroes][][power]" id="member2_power">
    <h2>Hero 3</h2>
    <label>Heros Name </label>
    <input type="text" name="team[heroes][][name]" id="member3_name">
    <label>Heros Power</label>
    <input type="text" name="team[heroes][][bio]" id="member3_bio">
    <label>Heros Biography/label>
    <input type="text" name="team[heroes][][power]" id="member3_power">
    <input type="submit"  id="Submit">Submit</submit>
</form>