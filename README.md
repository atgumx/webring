# webring

This is an attempt to replicate [Devine Lu Linvega](https://wiki.xxiivv.com/site/devine_lu_linvega.html)'s [webring](https://webring.xxiivv.com/) in a very minimal way, and with a lower technical bar.

## Add your website to this webring

1. Prepare your entry in the format
```bash
url="example.com"
author="John Doe"
title="Exampla Website"
```
2. Save it to a file with the same name as your domain, i.e. `example.com`
3. Submit a patch by any of these methods
    - Sending a mail to the project's [mailing list](https://lists.sr.ht/~a2/webring)
    - Using [`git send-email`](https://git-send-email.io/)
        1. Clone the project [repository](https://git.sr.ht/~a2/webring)
        2. Add your file to `entries` directory
        3. Add and commit your changes
        4. Send the email using `git send-email --to="~a2/webring@lists.sr.ht" HEAD^`
4. Add the ring links to your site, preferrably in the footer, for example
```html
<ul>
    <li><a href="https://wr.4b.cx/{{example.com))/previous">&larr; previous</a></li>
    <li><a href="https://wr.4b.cx/">webring index</a></li>
    <li><a href="https://wr.4b.cx/{{example.com))/next">next &rarr;</a></li>
</ul>
```

## Host your own

1. Clone the project [repository](https://git.sr.ht/~a2/webring), and add your remotes
2. Run `rm -fr entries/* public` to delete old entries and build artifacts
3. Add your entries and run `./wr` to check the output
4. Upload your webring to a static site hosting provider, examples are available for
    - sourcehut pages
    - GitHub Pages
    - GitLab Pages

## License

This project is licensed under [MIT license](https://git.sr.ht/~a2/webring/blob/main/LICENSE)