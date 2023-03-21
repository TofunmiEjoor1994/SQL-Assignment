--Ejoo Oluwafunmi Abigail FIFA Assignment--

-- The Country with the highest and lowest appearance in last five years--
WITH
	All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )

    SELECT
            MAX(team) AS Highest_Appearance,
            MIN(team) AS Lowest_Appearance
        FROM
            All_fifa_world_cup;
	
--The country with the highest and lowest game played--

WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )
    SELECT
            team,
            SUM(games_played)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;

--The country with the highest and lowest game won--
WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )

    SELECT
            team,
            SUM(win)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;
--The country with the highest and lowest game lost--
WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )


    SELECT
            team,
            SUM(loss)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;
--The country with the highest and lowest goal for--
WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )

    SELECT
            team,
            SUM(goals_for)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;
--The country with the highest and lowest goal against--
WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )


    SELECT
            team,
            SUM(goals_against)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;
--The country with the highest and lowest goal difference--
WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )

    SELECT
            team,
            SUM(goals_difference)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;
--The country with the highest and lowest point--
WITH
            All_fifa_world_cup AS (
    SELECT
            *
        FROM
            fifa_worldcup_2002
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2006
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2010
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2014
        UNION ALL
        SELECT
            *
        FROM
            fifa_worldcup_2018
            )

    SELECT
            team,
            SUM(points)
        FROM
            All_fifa_world_cup
        GROUP BY
            team
        ORDER BY
            sum DESC;