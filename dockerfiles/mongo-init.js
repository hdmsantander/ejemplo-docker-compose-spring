db.auth('admin', 'supersecurepassword');

db.createUser({
  user: 'user',
  pwd: 'supersecurepassword',
  roles: [
    {
      role: 'dbOwner',
      db: 'mongo',
    },
  ],
});

db.createCollection('collection');
