const Nightmare = require('nightmare')
const argv = require('yargs').argv

const width = 1000, height = 1000

const nightmare = Nightmare({
  electronPath: require('electron'),
  fullscreen: true,
  width: 1000,
  height: 1000
})

nightmare
  .goto(argv.site)
  .wait(5000)
  .click('a[class*=_close]')
  .wait(2000)
  .screenshot(`out/${argv.savepath}`)
  .end(() => {
    console.log('done')
  })
  .catch(error => {
    console.error(error)
  })
