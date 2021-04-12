import { Application } from 'egg'

module.exports = (app: Application) => {
    const { controller, router } = app

  router.get('/admin/access', controller.admin.access.index);
}