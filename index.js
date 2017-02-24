const Nightmare = require('nightmare')
const argv = require('yargs').argv


const nightmare = Nightmare({
  show: true,
  electronPath: require('electron'),
  width: argv.width,
  height: argv.height
})

nightmare
  .goto(argv.site)
  .wait(5000)
  .screenshot(argv.savepath)
  .end(() => {
    console.log('done')
  }).catch(error => {
 	console.error(error) 
 })
