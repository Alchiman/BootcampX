const { Pool } = require("pg");
const cohortName = process.argv[2];
const queryString = `SELECT DISTINCT teachers.name AS teacher, cohorts.name
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
ORDER BY teachers.name;
;`;
const values = [`%${cohortName}%`];

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool
  .query(queryString, values)
  .then((res) => {
    res.rows.forEach((teacher) => {
      console.log(`${teacher.name}: ${teacher.teacher}`);
    });
  })
  .catch((err) => {
    console.log("query error", err.stock);
  });
