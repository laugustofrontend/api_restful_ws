
const sha1 = require('sha1')
const jwt = require('jsonwebtoken')

const auth = (deps) => {
  const { connection, errorHandler } = deps

  return {
    authenticate: (email, password) => {
      return new Promise((resolve, reject) => {
        const queryString = 'SELECT id, email FROM users WHERE email = ? AND pass = ?'
        const queryData = [email, sha1(password)]

        connection.query(queryString, queryData, (error, results) => {
          if (error || !results.length) {
            errorHandler(error, 'Falha ao localizar o usuário', reject)
            return false
          }

          const { email, id } = results[0]

          const token = jwt.sign({email, id}, process.env.KEY_SECRET, { expiresIn: 60 * 60 * 24 })

          resolve({ token })
        })
      })
    }
  }
}

module.exports = auth
