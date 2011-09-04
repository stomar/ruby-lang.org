## Deployment to github:pages

Just

    ./deploy.sh

The `publish` branch is an integration branch used to pre-generate the website using a different config than the master branch, which is suited for local edits. The `publish` branch differs from `master` in the following way:

``` diff
    diff --git a/_config.yml b/_config.yml
    index 40c70d9..23154e8 100644
    --- a/_config.yml
    +++ b/_config.yml
    @@ -194,7 +194,7 @@ email:
    #    Jekyll & Plugins     #
    # ----------------------- #
    -root: /
    +root: /ruby-lang.org/
    port: 4000
    permalink: /blog/:year/:month/:day/:title/
    source: source
    diff --git a/source/config.rb b/source/config.rb
    index a94aec2..489657b 100644
    --- a/source/config.rb
    +++ b/source/config.rb
    @@ -1,6 +1,6 @@
    # Compass configuration
    #
    -http_path       = "/"
    +http_path       = "/ruby-lang.org/"
    css_dir         = "stylesheets"
    sass_dir        = "sass"
    images_dir      = "images"
```

If you ever happen to mess things out, you may delete `publish` locally and remotely, recreate them, edit the `publish` config and redeploy:

    git br -D publish
    git push origin :publish
    git co -b publish
    # edit the config as stated above, then commit:
    git add _config.yml source/config.rb
    git ci -m "deployment config"
    git push origin publish
    git co master
    ./deploy.sh

If public/atom.xml annoys you (when switching branches), `git co -- public/atom.xml`.
