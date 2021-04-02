class DashboardController < ApplicationController
  def index
    @results = ActiveRecord::Base.connection.execute("select system_codes.codename as pearlcode,format(count(codes_current.idsystem_codes) / (select count(*) from codes_current where idsession = 5 and idleader = 21) * 100,0) as percentpercode, count(codes_current.idsystem_codes) as totalnumpercode FROM codes_current INNER JOIN system_codes on codes_current.idsystem_codes = system_codes.idsystem_codes WHERE idSession = 5 and idleader = 21 GROUP BY codes_current.idsystem_codes ORDER BY pearlcode")
    @first_chart = ActiveRecord::Base.connection.execute("select system_codes.codename as pearlcode,format(count(codes_current.currperfappraisal) / (select count(*) from codes_current where idsession = 5) * 100,0) as percentpercode, count(codes_current.currperfappraisal) as totalnumpercode FROM codes_current INNER JOIN system_codes on codes_current.currperfappraisal = system_codes.idsystem_codes WHERE idsession = 5 GROUP BY codes_current.currperfappraisal ORDER BY pearlcode DESC")
    @third_chart = ActiveRecord::Base.connection.execute("SELECT system_codes.codename as pearlcode,count(codes_current.idsystem_codes) as totalnumpercode, sum(codes_current.turnoverprobability) as totaltopercode FROM codes_current LEFT JOIN system_codes on codes_current.idsystem_codes = system_codes.idsystem_codes WHERE idsession = 5 and system_codes.idsystem_codes in (5,4,3,2,1) GROUP BY codes_current.idsystem_codes ORDER BY system_codes.idsystem_codes DESC")

    @chart = ActiveRecord::Base.connection.select_all("select system_codes.codename as pearlcode,sum(codes_current.devplan = 1) as totalnumwithplan, sum(IFNULL(codes_current.devplan = 0,1)) as totalnumwithoutplan, (sum(codes_current.devplan = 1)+sum(IFNULL(codes_current.devplan = 0,1))) as totalplans from codes_current inner join system_codes on codes_current.idsystem_codes = system_codes.idsystem_codes where idsession = 5 and codes_current.idsystem_codes in (4,3,2) group by codes_current.idsystem_codes order by system_codes.idsystem_codes desc")
    #
    # @fourth_chart = [{ name: "Leader Has Dev. Assignment", data: [["Green", 0], ["Blue", 1], ["Yellow", 1]] },{ name: "Leader Doesn't Have Dev. Assignment", data:[["Green", 1], ["Blue", 1], ["Yellow", 9]] }]

    @fourth_chart = [
      {
        name: "Total Number with ",
        data: [["GREEN", @chart.rows.first.second], ["Blue", @chart.rows.first.third], ["Yellow", @chart.rows.first.fourth]]
      },
      {
        name: "Total Number without",
        data: [["GREEN", @chart.rows.second.second], ["Blue", @chart.rows.second.third], ["Yellow", @chart.rows.second.fourth]]
      },
      {
        name: "Total",
        data: [["GREEN", @chart.rows.third.second], ["Blue", @chart.rows.third.third], ["Yellow", @chart.rows.third.fourth]]
      }
    ]
  end

end
